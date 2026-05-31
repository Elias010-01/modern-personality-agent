; ======================================================================
; HPLASERP / seg1.asm   (segment 1 of HPLASERP)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         2
; Total instructions:                  240
; 
; Classification (pass8):
;   C-origin (high+medium):              2
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     2 (2 unique)
;   Top:
;        1  STARTSPOOLPAGE
;        1  SETRECT
; ======================================================================
; AUTO-GENERATED from original HPLASERP segment 1
; segment_size=11009 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

HPLASERP_TEXT SEGMENT BYTE PUBLIC 'CODE'

; Description (heuristic):
;   Pure computation / dispatcher (25 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0000   offset=0x0000  size=25 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
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
        mov     word ptr [si], ax               ; 89 04
;   [conditional branch target (if/else)] L_0015
L_0015:
        sub     word ptr [bx + 2], dx           ; 29 57 02
        jns     L_001D                          ; 79 03
        mov     word ptr [bx + 2], ax           ; 89 47 02
;   [conditional branch target (if/else)] L_001D
L_001D:
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        sub     ax, bx                          ; 2B C3
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
; Description (heuristic):
;   Mixed routine using: STARTSPOOLPAGE, SETRECT.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0039   offset=0x0039  size=215 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   STARTSPOOLPAGE
;   SETRECT
;
; Near calls (internal): L_05F6, L_0EE0, L_0FCA
;-------------------------------------------------------------------------
;   [sub-routine] L_0039
L_0039:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        push    ds                              ; 1E
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        les     di, ptr [bp + 0xa]              ; C4 7E 0A
        lds     si, ptr [bp + 6]                ; C5 76 06
        cld                                     ; FC
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        pop     ds                              ; 1F
        pop     di                              ; 5F
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
        sub     sp, 0x28                        ; 83 EC 28
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0xd                         ; 3D 0D 00
        jbe     L_0070                          ; 76 03
        jmp     L_05A9                          ; E9 39 05
;   [conditional branch target (if/else)] L_0070
L_0070:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x5cb]        ; 2E FF A7 CB 05
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x30], 1      ; 26 83 7F 30 01
        je      L_0085                          ; 74 03
        jmp     L_0289                          ; E9 04 02
;   [conditional branch target (if/else)] L_0085
L_0085:
        mov     ax, word ptr es:[bx + 0x22]     ; 26 8B 47 22
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr es:[bx + 0x50]     ; 26 8B 47 50
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr es:[bx + 0x52]     ; 26 8B 47 52
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 0x14]        ; 8B 47 14
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        mul     word ptr [bp - 0x1c]            ; F7 66 E4
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     ax, word ptr es:[bx + 0x28]     ; 26 8B 47 28
        inc     word ptr es:[bx + 0x28]         ; 26 FF 47 28
        mov     si, ax                          ; 8B F0
        or      ax, ax                          ; 0B C0
        je      L_00F0                          ; 74 0B
        cmp     ax, 1                           ; 3D 01 00
        jne     L_00ED                          ; 75 03
        jmp     L_02BD                          ; E9 D0 01
;   [conditional branch target (if/else)] L_00ED
L_00ED:
        jmp     L_0352                          ; E9 62 02
;   [conditional branch target (if/else)] L_00F0
L_00F0:
        mov     word ptr [bp - 0x22], 0         ; C7 46 DE 00 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x26]     ; 26 8B 47 26
        and     ax, 1                           ; 25 01 00
        or      word ptr [bp - 0x22], ax        ; 09 46 DE
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     word ptr es:[bx + 0x26], ax     ; 26 89 47 26
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        call    far GDI.STARTSPOOLPAGE          ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x30], ax     ; 26 89 47 30
        cmp     ax, 1                           ; 3D 01 00
        je      L_0121                          ; 74 03
        jmp     L_0289                          ; E9 68 01
;   [conditional branch target (if/else)] L_0121
L_0121:
        mov     word ptr es:[bx + 0x60], 0xffff ; 26 C7 47 60 FF FF
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xe0                        ; B8 E0 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_0EE0                          ; E8 AB 0D
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x3c]     ; 26 8B 5F 3C
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0xce]        ; 8B 87 CE 00
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        push    es                              ; 06
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0x176                       ; B8 76 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x26                        ; B8 26 00
        push    ax                              ; 50
        mov     ax, 0x6c                        ; B8 6C 00
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    L_0FCA                          ; E8 6A 0E
        push    ax                              ; 50
        call    L_0EE0                          ; E8 7C 0D
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_018E                          ; 75 20
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far USER.SETRECT                ; 9A 9F 01 00 00 [FIXUP]
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0xe3                        ; B8 E3 00
        jmp     L_01AC                          ; EB 1E
;   [conditional branch target (if/else)] L_018E
L_018E:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far USER.SETRECT                ; 9A B4 03 00 00 [FIXUP]
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0xeb                        ; B8 EB 00
;   [unconditional branch target] L_01AC
L_01AC:
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    L_0EE0                          ; E8 2B 0D
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0x176                       ; B8 76 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x26                        ; B8 26 00
        push    ax                              ; 50
        mov     ax, 0x6c                        ; B8 6C 00
        push    ax                              ; 50
        mov     ax, 0x48                        ; B8 48 00
        push    ax                              ; 50
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x3a]     ; 26 8B 47 3A
        sub     ax, 0x19                        ; 2D 19 00
        push    ax                              ; 50
        call    L_0FCA                          ; E8 F0 0D
        push    ax                              ; 50
        call    L_0EE0                          ; E8 02 0D
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0x176                       ; B8 76 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x26                        ; B8 26 00
        push    ax                              ; 50
        mov     ax, 0x6c                        ; B8 6C 00
        push    ax                              ; 50
        mov     ax, 0x58                        ; B8 58 00
        push    ax                              ; 50
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        push    word ptr es:[bx + 0x36]         ; 26 FF 77 36
        call    L_0FCA                          ; E8 CB 0D
        push    ax                              ; 50
        call    L_0EE0                          ; E8 DD 0C
;   [loop start] L_0203
L_0203:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        sub     ax, ax                          ; 2B C0
;   [loop start] L_0208
L_0208:
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        inc     ax                              ; 40
        cmp     ax, si                          ; 3B C6
        jne     L_027F                          ; 75 65
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x28], 0      ; 26 C7 47 28 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [0x544]            ; A1 44 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x543]            ; A0 43 05
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_0EE0                          ; E8 AD 0C
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0xf3                        ; B8 F3 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0EE0                          ; E8 9B 0C
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    L_05F6                          ; E8 A8 03
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x30], 1      ; 26 83 7F 30 01
        jne     L_0268                          ; 75 10
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        call    far GDI.ENDSPOOLPAGE            ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x30], ax     ; 26 89 47 30
;   [conditional branch target (if/else)] L_0268
L_0268:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.SETRECTEMPTY           ; 9A 90 02 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        sub     ax, ax                          ; 2B C0
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx], ax            ; 26 89 07
;   [conditional branch target (if/else)] L_027F
L_027F:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x30], 1      ; 26 83 7F 30 01
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
        call    far GDI.DELETEJOB               ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x2e], 0      ; 26 C7 47 2E 00 00
;   [conditional branch target (if/else)] L_02B3
L_02B3:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x30]     ; 26 8B 47 30
        jmp     L_05EA                          ; E9 2D 03
;   [unconditional branch target] L_02BD
L_02BD:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_02CE                          ; 74 07
        mov     si, word ptr [bp - 0x24]        ; 8B 76 DC
        inc     si                              ; 46
        jmp     L_0203                          ; E9 35 FF
;   [conditional branch target (if/else)] L_02CE
L_02CE:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0x176                       ; B8 76 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        mov     ax, 0x74                        ; B8 74 00
        push    ax                              ; 50
        mov     ax, 0x52                        ; B8 52 00
        push    ax                              ; 50
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        push    word ptr es:[bx + 0x38]         ; 26 FF 77 38
        call    L_0FCA                          ; E8 DB 0C
        push    ax                              ; 50
        call    L_0EE0                          ; E8 ED 0B
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
        add     ax, 0x8b6                       ; 05 B6 08
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        mov     word ptr [bp - 0x22], 0         ; C7 46 DE 00 00
;   [loop start] L_0307
L_0307:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        sub     dx, dx                          ; 2B D2
        cmp     word ptr es:[bx + 0x12], dx     ; 26 39 57 12
        jb      L_032C                          ; 72 17
        ja      L_031D                          ; 77 06
        cmp     word ptr es:[bx + 0x10], ax     ; 26 39 47 10
        jbe     L_032C                          ; 76 0F
;   [conditional branch target (if/else)] L_031D
L_031D:
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        mov     byte ptr es:[bx], 0xff          ; 26 C6 07 FF
        inc     word ptr [bp - 0x22]            ; FF 46 DE
        jmp     L_0307                          ; EB DB
;   [conditional branch target (if/else)] L_032C
L_032C:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_0346                          ; 75 10
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mul     word ptr [bp - 4]               ; F7 66 FC
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        call    L_0F94                          ; E8 50 0C
        jmp     L_0352                          ; EB 0C
;   [conditional branch target (if/else)] L_0346
L_0346:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0F5E                          ; E8 0C 0C
;   [unconditional branch target] L_0352
L_0352:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_0385                          ; 75 29
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        sub     ax, si                          ; 2B C6
        mul     word ptr [bp - 0x1c]            ; F7 66 E4
        mov     word ptr es:[bx + 0x2a], ax     ; 26 89 47 2A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        imul    word ptr [bp - 0x16]            ; F7 6E EA
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        add     ax, word ptr [bp - 0x1c]        ; 03 46 E4
        mul     word ptr [bp - 0x16]            ; F7 66 EA
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        jmp     L_03B3                          ; EB 2E
;   [conditional branch target (if/else)] L_0385
L_0385:
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        lea     cx, [si - 1]                    ; 8D 4C FF
        mul     cx                              ; F7 E1
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x2c], ax     ; 26 89 47 2C
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        imul    word ptr [bp - 0x16]            ; F7 6E EA
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        add     ax, word ptr [bp - 0x1c]        ; 03 46 E4
        mul     word ptr [bp - 0x16]            ; F7 66 EA
        push    ax                              ; 50
;   [unconditional branch target] L_03B3
L_03B3:
        call    far USER.SETRECT                ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        test    byte ptr es:[bx + 0x26], 4      ; 26 F6 47 26 04
        jne     L_03C5                          ; 75 03
        jmp     L_044F                          ; E9 8A 00
;   [conditional branch target (if/else)] L_03C5
L_03C5:
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_03E9                          ; 75 1D
        test    byte ptr es:[bx + 0x26], 8      ; 26 F6 47 26 08
        je      L_0403                          ; 74 30
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        mov     cx, word ptr [bp - 0x1c]        ; 8B 4E E4
        shl     cx, 1                           ; D1 E1
        add     ax, cx                          ; 03 C1
        mul     word ptr [bp - 0x16]            ; F7 66 EA
        push    ax                              ; 50
        call    L_0F94                          ; E8 AD 0B
        jmp     L_0403                          ; EB 1A
;   [conditional branch target (if/else)] L_03E9
L_03E9:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        test    byte ptr es:[bx + 0x26], 8      ; 26 F6 47 26 08
        je      L_0403                          ; 74 10
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
        mul     word ptr [bp - 0x16]            ; F7 66 EA
        push    ax                              ; 50
        call    L_0F5E                          ; E8 5B 0B
;   [branch target] L_0403
L_0403:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    L_0CB3                          ; E8 A7 08
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
        add     ax, 0x8b6                       ; 05 B6 08
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        mov     word ptr [bp - 0x22], 0         ; C7 46 DE 00 00
;   [loop start] L_0420
L_0420:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        sub     dx, dx                          ; 2B D2
        cmp     word ptr es:[bx + 0x12], dx     ; 26 39 57 12
        jb      L_0445                          ; 72 17
        ja      L_0436                          ; 77 06
        cmp     word ptr es:[bx + 0x10], ax     ; 26 39 47 10
        jbe     L_0445                          ; 76 0F
;   [conditional branch target (if/else)] L_0436
L_0436:
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        mov     byte ptr es:[bx], 0xff          ; 26 C6 07 FF
        inc     word ptr [bp - 0x22]            ; FF 46 DE
        jmp     L_0420                          ; EB DB
;   [conditional branch target (if/else)] L_0445
L_0445:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        and     byte ptr es:[bx + 0x26], 0xf3   ; 26 80 67 26 F3
        jmp     L_0457                          ; EB 08
;   [unconditional branch target] L_044F
L_044F:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        or      byte ptr es:[bx + 0x26], 8      ; 26 80 4F 26 08
;   [unconditional branch target] L_0457
L_0457:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        jmp     L_0208                          ; E9 A8 FD
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x52]     ; 26 8B 47 52
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        jmp     L_04E5                          ; EB 72
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_0481                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0483                          ; EB 02
;   [conditional branch target (if/else)] L_0481
L_0481:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0483
L_0483:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        or      word ptr es:[bx + 0x26], ax     ; 26 09 47 26
        jmp     L_04E5                          ; EB 59
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x30], 1      ; 26 83 7F 30 01
        je      L_04BF                          ; 74 29
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x66                        ; 05 66 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr es:[bx + 0x24]         ; 26 FF 77 24
        call    far GDI.OPENJOB                 ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x2e], ax     ; 26 89 47 2E
        or      ax, ax                          ; 0B C0
        jle     L_04BF                          ; 7E 06
        mov     word ptr es:[bx + 0x30], 1      ; 26 C7 47 30 01 00
;   [conditional branch target (if/else)] L_04BF
L_04BF:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x2e]     ; 26 8B 47 2E
        jmp     L_05EA                          ; E9 21 01
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x30], 1      ; 26 83 7F 30 01
        jne     L_04DC                          ; 75 09
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        call    far GDI.CLOSEJOB                ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_04DC
L_04DC:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x30], 0      ; 26 C7 47 30 00 00
;   [loop start (also forward branch)] L_04E5
L_04E5:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_05EA                          ; E9 FF 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_0514                          ; 75 1F
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx]               ; 8B 07
;   [loop start] L_050B
L_050B:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        jmp     L_04E5                          ; EB D1
;   [conditional branch target (if/else)] L_0514
L_0514:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx]               ; 8B 07
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        jmp     L_050B                          ; EB DC
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_0549                          ; 75 10
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], 0x32      ; 26 C7 47 02 32 00
        mov     word ptr es:[bx], 0x4b          ; 26 C7 07 4B 00
        jmp     L_04E5                          ; EB 9C
;   [conditional branch target (if/else)] L_0549
L_0549:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], 0x32          ; 26 C7 07 32 00
        mov     word ptr es:[bx + 2], 0x64      ; 26 C7 47 02 64 00
        jmp     L_04E5                          ; EB 8C
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x24], ax     ; 26 89 47 24
        jmp     L_04E5                          ; E9 7C FF
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.DELETEJOB               ; 9A A6 02 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x2e], 0      ; 26 C7 47 2E 00 00
        jmp     L_04E5                          ; E9 61 FF
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0xd                         ; 3D 0D 00
        ja      L_05A9                          ; 77 14
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x5ad]        ; 2E FF A7 AD 05
        jmp     L_04E5                          ; E9 45 FF
        cmp     word ptr [bp - 0x20], 0         ; 83 7E E0 00
        je      L_05A9                          ; 74 03
        jmp     L_04E5                          ; E9 3C FF
;   [branch target] L_05A9
L_05A9:
        sub     ax, ax                          ; 2B C0
        jmp     L_05EA                          ; EB 3D
        in      ax, 4                           ; E5 04
        in      ax, 4                           ; E5 04
        in      ax, 4                           ; E5 04
        test    ax, 0xa905                      ; A9 05 A9
        add     ax, 0x5a9                       ; 05 A9 05
        in      ax, 4                           ; E5 04
        in      ax, 4                           ; E5 04
        test    ax, 0xe505                      ; A9 05 E5
        add     al, 0xe5                        ; 04 E5
        add     al, 0xe5                        ; 04 E5
        add     al, 0xe5                        ; 04 E5
        add     al, 0xa0                        ; 04 A0
        add     ax, 0xdeeb                      ; 05 EB DE
        mov     bl, 2                           ; B3 02
        imul    ax, word ptr [di], 0x78         ; 69 05 78 00
        test    ax, 0xa905                      ; A9 05 A9
        add     ax, 0x5a9                       ; 05 A9 05
        jae     L_05DD                          ; 73 04
        test    byte ptr [di], al               ; 84 05
        pop     cx                              ; 59
        add     ax, 0x48c                       ; 05 8C 04
        leave                                   ; C9
        add     al, 0xeb                        ; 04 EB
        add     al, 0x2f                        ; 04 2F
        add     ax, 0x460                       ; 05 60 04
        jmp     L_04E5                          ; E9 FB FE
;   [unconditional branch target] L_05EA
L_05EA:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
;   [sub-routine] L_05F6
L_05F6:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 0x32], 0      ; 26 83 7F 32 00
        je      L_060D                          ; 74 07
        cmp     word ptr es:[bx + 0x30], 1      ; 26 83 7F 30 01
        je      L_0611                          ; 74 04
;   [conditional branch target (if/else)] L_060D
L_060D:
        sub     ax, ax                          ; 2B C0
        jmp     L_0646                          ; EB 35
;   [conditional branch target (if/else)] L_0611
L_0611:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x86                        ; 05 86 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr es:[bx + 0x32]         ; 26 FF 77 32
        call    far GDI.WRITESPOOL              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     ax, word ptr es:[bx + 0x32]     ; 26 3B 47 32
        je      L_063A                          ; 74 04
        mov     word ptr es:[bx + 0x30], ax     ; 26 89 47 30
;   [conditional branch target (if/else)] L_063A
L_063A:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0x32], 0      ; 26 C7 47 32 00 00
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
;   [fall-through exit] L_0646
L_0646:
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
        sub     sp, 0xe                         ; 83 EC 0E
        push    si                              ; 56
        mov     word ptr [bp - 0xa], 0xa        ; C7 46 F6 0A 00
        mov     word ptr [bp - 8], 0x7be        ; C7 46 F8 BE 07
        mov     word ptr [bp - 6], 0x7be        ; C7 46 FA BE 07
        mov     word ptr [bp - 4], 0x766        ; C7 46 FC 66 07
        mov     word ptr [bp - 0xe], 0x7be      ; C7 46 F2 BE 07
        mov     word ptr [bp - 0xc], 0x816      ; C7 46 F4 16 08
        cmp     word ptr [0x896], 0             ; 83 3E 96 08 00
        jne     L_0695                          ; 75 16
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     ax, 0x100                       ; B8 00 01
        push    ds                              ; 1E
        ;   ^ arg lpszModule (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszModule (low/offset)
        ; --> GETMODULEHANDLE(LPSTR lpszModule) -> HANDLE
        call    far KERNEL.GETMODULEHANDLE      ; 9A 30 09 00 00 [FIXUP]
        push    ax                              ; 50
        call    L_1685                          ; E8 F0 0F
;   [conditional branch target (if/else)] L_0695
L_0695:
        cmp     word ptr [0x8b0], 0             ; 83 3E B0 08 00
        jne     L_06A1                          ; 75 05
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        jmp     L_06B0                          ; EB 0F
;   [conditional branch target (if/else)] L_06A1
L_06A1:
        cmp     word ptr [0x8b0], 2             ; 83 3E B0 08 02
        jne     L_06AD                          ; 75 05
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_06B0                          ; EB 03
;   [conditional branch target (if/else)] L_06AD
L_06AD:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
;   [unconditional branch target] L_06B0
L_06B0:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [0x89a]            ; A1 9A 08
        sub     ax, 0x14                        ; 2D 14 00
        cmp     ax, 3                           ; 3D 03 00
        jle     L_06CA                          ; 7E 0C
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x89a]                ; F7 2E 9A 08
        sub     ax, 0x1ce                       ; 2D CE 01
        jmp     L_06D4                          ; EB 0A
;   [conditional branch target (if/else)] L_06CA
L_06CA:
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x89a]                ; F7 2E 9A 08
        sub     ax, 0x1b8                       ; 2D B8 01
;   [unconditional branch target] L_06D4
L_06D4:
        add     word ptr [bp - 8], ax           ; 01 46 F8
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        test    byte ptr [bp + 0x12], 1         ; F6 46 12 01
        jne     L_06E6                          ; 75 03
        jmp     L_0822                          ; E9 3C 01
;   [conditional branch target (if/else)] L_06E6
L_06E6:
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        cmp     word ptr [bp - 0xa], 0xb        ; 83 7E F6 0B
        jne     L_06F7                          ; 75 05
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        jmp     L_06FA                          ; EB 03
;   [conditional branch target (if/else)] L_06F7
L_06F7:
        mov     ax, 0x78                        ; B8 78 00
;   [unconditional branch target] L_06FA
L_06FA:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x68                        ; B8 68 00
        push    ax                              ; 50
        call    L_0039                          ; E8 34 F9
        test    word ptr [bp + 0x12], 0x8000    ; F7 46 12 00 80
        je      L_0711                          ; 74 05
        mov     ax, 0x66                        ; B8 66 00
        jmp     L_0721                          ; EB 10
;   [conditional branch target (if/else)] L_0711
L_0711:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shr     ax, cl                          ; D3 E8
        mul     word ptr [bx + 0xa]             ; F7 67 0A
        add     ax, 0x5d16                      ; 05 16 5D
;   [unconditional branch target] L_0721
L_0721:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x1a], ax     ; 26 89 47 1A
        cmp     word ptr [0x896], 0x12c         ; 81 3E 96 08 2C 01
        je      L_0735                          ; 74 05
        or      byte ptr es:[bx + 0x26], 4      ; 26 80 4F 26 04
;   [conditional branch target (if/else)] L_0735
L_0735:
        cmp     word ptr [0x890], 0xb           ; 83 3E 90 08 0B
        jne     L_07AD                          ; 75 71
        mov     ax, 0xa                         ; B8 0A 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x12c                       ; B8 2C 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xfe                        ; B8 FE 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bx + 0xe]             ; FF 77 0E
        call    L_2A45                          ; E8 EB 22
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_29A4                          ; E8 45 22
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_29A4                          ; E8 40 22
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     ax, 0xa                         ; B8 0A 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x12c                       ; B8 2C 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xfe                        ; B8 FE 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bx + 0xc]             ; FF 77 0C
        call    L_2A45                          ; E8 BC 22
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_29A4                          ; E8 16 22
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_29A4                          ; E8 11 22
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        jmp     L_081C                          ; EB 6F
;   [conditional branch target (if/else)] L_07AD
L_07AD:
        mov     ax, 0xa                         ; B8 0A 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x12c                       ; B8 2C 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xfe                        ; B8 FE 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bx + 0xc]             ; FF 77 0C
        call    L_2A45                          ; E8 7A 22
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_29A4                          ; E8 D4 21
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_29A4                          ; E8 CF 21
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     ax, 0xa                         ; B8 0A 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x12c                       ; B8 2C 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xfe                        ; B8 FE 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bx + 0xe]             ; FF 77 0E
        call    L_2A45                          ; E8 4B 22
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_29A4                          ; E8 A5 21
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_29A4                          ; E8 A0 21
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
;   [unconditional branch target] L_081C
L_081C:
        mov     ax, 0x68                        ; B8 68 00
        jmp     L_094C                          ; E9 2A 01
;   [unconditional branch target] L_0822
L_0822:
        cmp     word ptr [0x890], 0xb           ; 83 3E 90 08 0B
        jne     L_085C                          ; 75 33
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx], 0x8889        ; 26 C7 07 89 88
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr es:[bx + 0x22], ax     ; 26 89 47 22
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shr     ax, cl                          ; D3 E8
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     bx, si                          ; 8B DE
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        shr     ax, cl                          ; D3 E8
        jmp     L_0886                          ; EB 2A
;   [conditional branch target (if/else)] L_085C
L_085C:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr es:[bx + 0x22], ax     ; 26 89 47 22
        mov     word ptr es:[bx], 0x8888        ; 26 C7 07 88 88
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shr     ax, cl                          ; D3 E8
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
;   [unconditional branch target] L_0886
L_0886:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mul     word ptr [bx + 0xa]             ; F7 67 0A
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        mov     word ptr es:[bx + 0x12], 0      ; 26 C7 47 12 00 00
        mov     word ptr es:[bx + 2], 0         ; 26 C7 47 02 00 00
        mov     byte ptr es:[bx + 0xa], 1       ; 26 C6 47 0A 01
        mov     byte ptr es:[bx + 0xb], 1       ; 26 C6 47 0B 01
        sub     ax, ax                          ; 2B C0
        mov     word ptr es:[bx + 0xe], ax      ; 26 89 47 0E
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0x16], ax     ; 26 89 47 16
        mov     word ptr es:[bx + 0x14], ax     ; 26 89 47 14
        mov     word ptr es:[bx + 0x24], ax     ; 26 89 47 24
        mov     word ptr es:[bx + 0x26], ax     ; 26 89 47 26
        mov     word ptr es:[bx + 0x28], ax     ; 26 89 47 28
        mov     word ptr es:[bx + 0x2a], ax     ; 26 89 47 2A
        mov     word ptr es:[bx + 0x2c], ax     ; 26 89 47 2C
        mov     word ptr es:[bx + 0x2e], ax     ; 26 89 47 2E
        mov     word ptr es:[bx + 0x30], ax     ; 26 89 47 30
        mov     word ptr es:[bx + 0x32], ax     ; 26 89 47 32
        mov     word ptr es:[bx + 0x34], ax     ; 26 89 47 34
        test    word ptr [bp + 0x12], 0x8000    ; F7 46 12 00 80
        jne     L_08FA                          ; 75 14
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x66                        ; 05 66 00
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
;   [conditional branch target (if/else)] L_08FA
L_08FA:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr es:[bx + 0x22], ax     ; 26 89 47 22
        mov     ax, word ptr [0x892]            ; A1 92 08
        sub     ax, 0xf                         ; 2D 0F 00
        mov     word ptr es:[bx + 0x34], ax     ; 26 89 47 34
        mov     ax, word ptr [0x894]            ; A1 94 08
        mov     word ptr es:[bx + 0x36], ax     ; 26 89 47 36
        mov     ax, word ptr [0x898]            ; A1 98 08
        mov     word ptr es:[bx + 0x3a], ax     ; 26 89 47 3A
        mov     ax, word ptr [0x896]            ; A1 96 08
        mov     word ptr es:[bx + 0x38], ax     ; 26 89 47 38
        mov     ax, word ptr [0x89a]            ; A1 9A 08
        mov     word ptr es:[bx + 0x3c], ax     ; 26 89 47 3C
        mov     ax, 0x109                       ; B8 09 01
        push    ds                              ; 1E
        ;   ^ arg lpszModule (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszModule (low/offset)
        ; --> GETMODULEHANDLE(LPSTR lpszModule) -> HANDLE
        call    far KERNEL.GETMODULEHANDLE      ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x5e], ax     ; 26 89 47 5E
        mov     ax, word ptr [0x8ae]            ; A1 AE 08
        mov     word ptr es:[bx + 0x50], ax     ; 26 89 47 50
        mov     ax, word ptr [0x8b0]            ; A1 B0 08
        mov     word ptr es:[bx + 0x52], ax     ; 26 89 47 52
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_094C
L_094C:
        pop     si                              ; 5E
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
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x50                        ; 83 EC 50
        mov     ax, 0x11c                       ; B8 1C 01
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_TIMER
        mov     ax, 0x113                       ; B8 13 01
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_SYSCOMMAND
        mov     ax, 0x112                       ; B8 12 01
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x50]                 ; 8D 46 B0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_09A7                          ; 74 10
        lea     ax, [bp - 0x50]                 ; 8D 46 B0
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_20F4                          ; E8 55 17
        or      ax, ax                          ; 0B C0
        je      L_09A7                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_09AA                          ; EB 03
;   [conditional branch target (if/else)] L_09A7
L_09A7:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_09AA
L_09AA:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
;   [sub-routine] L_09AE
L_09AE:
        ;   = cProc <16> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x10                        ; 83 EC 10
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [bp + 0xa]         ; 03 46 0A
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
;   [loop start] L_09D1
L_09D1:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_09E3                          ; 74 0C
        dec     word ptr [bp - 0x10]            ; FF 4E F0
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_0A00                          ; 75 1D
;   [conditional branch target (if/else)] L_09E3
L_09E3:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [bp + 0xa]         ; 03 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
;   [loop start] L_09F2
L_09F2:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        jmp     L_0A13                          ; EB 13
;   [conditional branch target (if/else)] L_0A00
L_0A00:
        dec     word ptr [bp + 8]               ; FF 4E 08
        jmp     L_09D1                          ; EB CC
;   [loop start] L_0A05
L_0A05:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jae     L_0A1C                          ; 73 0C
        inc     word ptr [bp - 0x10]            ; FF 46 F0
;   [unconditional branch target] L_0A13
L_0A13:
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_0A05                          ; 74 E9
;   [conditional branch target (if/else)] L_0A1C
L_0A1C:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     dx, word ptr [bp - 0xe]         ; 8B 56 F2
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 0xc], dx         ; 89 56 0C
        cmp     word ptr [bp - 2], 8            ; 83 7E FE 08
        jg      L_0A3B                          ; 7F 0D
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_0BC3                          ; E8 8A 01
        jmp     L_0A41                          ; EB 06
;   [conditional branch target (if/else)] L_0A3B
L_0A3B:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
;   [unconditional branch target] L_0A41
L_0A41:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        mov     word ptr [bp + 8], ax           ; 89 46 08
        or      ax, ax                          ; 0B C0
        jne     L_0A54                          ; 75 03
        jmp     L_0B3C                          ; E9 E8 00
;   [conditional branch target (if/else)] L_0A54
L_0A54:
        inc     word ptr [bp - 2]               ; FF 46 FE
        cmp     word ptr [bp + 4], 0x8888       ; 81 7E 04 88 88
        jne     L_0ACA                          ; 75 6C
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x176                       ; B8 76 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        mov     ax, 0x70                        ; B8 70 00
        push    ax                              ; 50
        mov     ax, 0x58                        ; B8 58 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        imul    word ptr [bp + 6]               ; F7 6E 06
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        push    ax                              ; 50
        call    L_0FCA                          ; E8 44 05
        push    ax                              ; 50
        call    L_0EE0                          ; E8 56 04
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_0C51                          ; E8 B5 01
        cmp     word ptr [bp + 6], 1            ; 83 7E 06 01
        jne     L_0AAE                          ; 75 0C
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x122                       ; B8 22 01
        jmp     L_0B33                          ; E9 85 00
;   [conditional branch target (if/else)] L_0AAE
L_0AAE:
        cmp     word ptr [bp + 6], 4            ; 83 7E 06 04
        jne     L_0ABF                          ; 75 0B
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x129                       ; B8 29 01
        jmp     L_0B33                          ; EB 74
;   [conditional branch target (if/else)] L_0ABF
L_0ABF:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x130                       ; B8 30 01
        jmp     L_0B33                          ; EB 69
;   [conditional branch target (if/else)] L_0ACA
L_0ACA:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x176                       ; B8 76 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        mov     ax, 0x70                        ; B8 70 00
        push    ax                              ; 50
        mov     ax, 0x59                        ; B8 59 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        imul    word ptr [bp + 6]               ; F7 6E 06
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        push    ax                              ; 50
        call    L_0FCA                          ; E8 D8 04
        push    ax                              ; 50
        call    L_0EE0                          ; E8 EA 03
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_0C51                          ; E8 49 01
        cmp     word ptr [bp + 6], 1            ; 83 7E 06 01
        jne     L_0B19                          ; 75 0B
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x137                       ; B8 37 01
        jmp     L_0B33                          ; EB 1A
;   [conditional branch target (if/else)] L_0B19
L_0B19:
        cmp     word ptr [bp + 6], 4            ; 83 7E 06 04
        jne     L_0B2A                          ; 75 0B
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x13e                       ; B8 3E 01
        jmp     L_0B33                          ; EB 09
;   [conditional branch target (if/else)] L_0B2A
L_0B2A:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x145                       ; B8 45 01
;   [unconditional branch target] L_0B33
L_0B33:
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    L_0EE0                          ; E8 A4 03
;   [unconditional branch target] L_0B3C
L_0B3C:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     dx, word ptr [bp - 0xe]         ; 8B 56 F2
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 0xc], dx         ; 89 56 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jae     L_0B56                          ; 73 03
        jmp     L_09F2                          ; E9 9C FE
;   [conditional branch target (if/else)] L_0B56
L_0B56:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx], 0x8888        ; 26 81 3F 88 88
        jne     L_0B89                          ; 75 29
        cmp     word ptr [bp + 6], 1            ; 83 7E 06 01
        jne     L_0B6D                          ; 75 07
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x14c                       ; B8 4C 01
        jmp     L_0BB4                          ; EB 47
;   [conditional branch target (if/else)] L_0B6D
L_0B6D:
        cmp     word ptr [bp + 6], 4            ; 83 7E 06 04
        jne     L_0B7E                          ; 75 0B
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x153                       ; B8 53 01
        jmp     L_0BB4                          ; EB 36
;   [conditional branch target (if/else)] L_0B7E
L_0B7E:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x15a                       ; B8 5A 01
        jmp     L_0BB4                          ; EB 2B
;   [conditional branch target (if/else)] L_0B89
L_0B89:
        cmp     word ptr [bp + 6], 1            ; 83 7E 06 01
        jne     L_0B9A                          ; 75 0B
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x161                       ; B8 61 01
        jmp     L_0BB4                          ; EB 1A
;   [conditional branch target (if/else)] L_0B9A
L_0B9A:
        cmp     word ptr [bp + 6], 4            ; 83 7E 06 04
        jne     L_0BAB                          ; 75 0B
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x168                       ; B8 68 01
        jmp     L_0BB4                          ; EB 09
;   [conditional branch target (if/else)] L_0BAB
L_0BAB:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x16f                       ; B8 6F 01
;   [unconditional branch target] L_0BB4
L_0BB4:
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    L_0EE0                          ; E8 23 03
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xe                             ; C2 0E 00
;   [sub-routine] L_0BC3
L_0BC3:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        jmp     L_0BE5                          ; EB 0E
;   [loop start] L_0BD7
L_0BD7:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jae     L_0BEE                          ; 73 0C
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [unconditional branch target] L_0BE5
L_0BE5:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_0BD7                          ; 75 E9
;   [conditional branch target (if/else)] L_0BEE
L_0BEE:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jae     L_0C4B                          ; 73 52
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        jmp     L_0C15                          ; EB 0E
;   [loop start] L_0C07
L_0C07:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jae     L_0C1E                          ; 73 0C
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [unconditional branch target] L_0C15
L_0C15:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_0C07                          ; 74 E9
;   [conditional branch target (if/else)] L_0C1E
L_0C1E:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jb      L_0C31                          ; 72 08
;   [loop start] L_0C29
L_0C29:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        jmp     L_0C4B                          ; EB 1A
;   [conditional branch target (if/else)] L_0C31
L_0C31:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        cmp     ax, 0x13                        ; 3D 13 00
        jg      L_0C29                          ; 7F ED
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0BC3                          ; E8 78 FF
;   [error/early exit] L_0C4B
L_0C4B:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_0C51
L_0C51:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x192                       ; B8 92 01
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    L_0EE0                          ; E8 7A 02
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x176                       ; B8 76 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        mov     ax, 0x62                        ; B8 62 00
        push    ax                              ; 50
        mov     ax, 0x57                        ; B8 57 00
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0FCA                          ; E8 47 03
        push    ax                              ; 50
        call    L_0EE0                          ; E8 59 02
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0EE0                          ; E8 47 02
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x198                       ; B8 98 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    L_0EE0                          ; E8 35 02
        sub     ax, ax                          ; 2B C0
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
;   [sub-routine] L_0CB3
L_0CB3:
        ;   = cProc <42> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x2a                        ; 83 EC 2A
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr es:[bx + 0x50]     ; 26 8B 47 50
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        je      L_0CDD                          ; 74 03
        jmp     L_0DC7                          ; E9 EA 00
;   [conditional branch target (if/else)] L_0CDD
L_0CDD:
        mov     word ptr [bp - 0x24], 0x8889    ; C7 46 DC 89 88
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        ; constant WM_MOVE
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     si, ax                          ; 8B F0
        mov     di, word ptr [bp - 0xa]         ; 8B 7E F6
;   [loop start] L_0CF8
L_0CF8:
        or      di, di                          ; 0B FF
        jne     L_0CFF                          ; 75 03
        jmp     L_0E34                          ; E9 35 01
;   [conditional branch target (if/else)] L_0CFF
L_0CFF:
        dec     di                              ; 4F
        les     bx, ptr [bp + 4]                ; C4 5E 04
        lea     ax, [bx + di + 0x8b6]           ; 8D 81 B6 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], es           ; 8C 46 FC
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_0D7F                          ; EB 6B
;   [loop start] L_0D14
L_0D14:
        mov     word ptr [bp - 0x28], 0         ; C7 46 D8 00 00
;   [loop start] L_0D19
L_0D19:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        add     bx, bp                          ; 03 DD
        mov     byte ptr ss:[bx - 0x14], al     ; 36 88 47 EC
        inc     word ptr [bp - 0x28]            ; FF 46 D8
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     word ptr [bp - 6], ax           ; 01 46 FA
        cmp     word ptr [bp - 0x28], 8         ; 83 7E D8 08
        jl      L_0D19                          ; 7C E2
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.DMTRANSPOSE             ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [bp + 4]           ; 03 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x53b6                      ; 05 B6 53
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 0x1e], dx        ; 89 56 E2
        mov     word ptr [bp - 0x28], 8         ; C7 46 D8 08 00
;   [loop start] L_0D61
L_0D61:
        dec     word ptr [bp - 0x28]            ; FF 4E D8
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        add     bx, bp                          ; 03 DD
        mov     al, byte ptr ss:[bx - 0x1c]     ; 36 8A 47 E4
        les     bx, ptr [bp - 0x20]             ; C4 5E E0
        mov     byte ptr es:[bx], al            ; 26 88 07
        add     word ptr [bp - 0x20], si        ; 01 76 E0
        cmp     word ptr [bp - 0x28], 0         ; 83 7E D8 00
        jne     L_0D61                          ; 75 E5
        inc     word ptr [bp - 2]               ; FF 46 FE
;   [unconditional branch target] L_0D7F
L_0D7F:
        cmp     word ptr [bp - 2], si           ; 39 76 FE
        jl      L_0D14                          ; 7C 90
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x53b6                      ; 05 B6 53
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 0x1e], dx        ; 89 56 E2
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_0EBD                          ; E8 22 01
        mov     word ptr [bp - 0x28], 0         ; C7 46 D8 00 00
;   [loop start] L_0DA0
L_0DA0:
        cmp     word ptr [bp - 0x28], 8         ; 83 7E D8 08
        jl      L_0DA9                          ; 7C 03
        jmp     L_0CF8                          ; E9 4F FF
;   [conditional branch target (if/else)] L_0DA9
L_0DA9:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    si                              ; 56
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0x24]            ; FF 76 DC
        call    L_09AE                          ; E8 EF FB
        inc     word ptr [bp - 0x28]            ; FF 46 D8
        add     word ptr [bp - 0x20], si        ; 01 76 E0
        jmp     L_0DA0                          ; EB D9
;   [unconditional branch target] L_0DC7
L_0DC7:
        mov     word ptr [bp - 0x2a], 0x8888    ; C7 46 D6 88 88
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x8b6                       ; 05 B6 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
;   [loop start] L_0DE0
L_0DE0:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jge     L_0E34                          ; 7D 4C
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    L_0EBD                          ; E8 C9 00
        cmp     word ptr [bp - 8], 1            ; 83 7E F8 01
        jne     L_0E14                          ; 75 1A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        call    L_09AE                          ; E8 9C FB
        jmp     L_0E29                          ; EB 15
;   [conditional branch target (if/else)] L_0E14
L_0E14:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_0E3C                          ; E8 13 00
;   [unconditional branch target] L_0E29
L_0E29:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     word ptr [bp - 6], ax           ; 01 46 FA
        inc     word ptr [bp - 2]               ; FF 46 FE
        jmp     L_0DE0                          ; EB AC
;   [error/early exit] L_0E34
L_0E34:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
;   [sub-routine] L_0E3C
L_0E3C:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, word ptr [bp + 8]           ; 03 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
;   [loop start] L_0E51
L_0E51:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0E63                          ; 74 0C
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_0E8F                          ; 74 2C
;   [conditional branch target (if/else)] L_0E63
L_0E63:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0E94                          ; 74 2B
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x19d                       ; B8 9D 01
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0EE0                          ; E8 65 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0C51                          ; E8 C4 FD
        jmp     L_0EB7                          ; EB 28
;   [conditional branch target (if/else)] L_0E8F
L_0E8F:
        dec     word ptr [bp + 6]               ; FF 4E 06
        jmp     L_0E51                          ; EB BD
;   [conditional branch target (if/else)] L_0E94
L_0E94:
        cmp     word ptr [bp + 4], 4            ; 83 7E 04 04
        jne     L_0EA5                          ; 75 0B
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x19f                       ; B8 9F 01
        jmp     L_0EAE                          ; EB 09
;   [conditional branch target (if/else)] L_0EA5
L_0EA5:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x1a6                       ; B8 A6 01
;   [unconditional branch target] L_0EAE
L_0EAE:
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    L_0EE0                          ; E8 29 00
;   [fall-through exit] L_0EB7
L_0EB7:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
;   [sub-routine] L_0EBD
L_0EBD:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        jmp     L_0ED0                          ; EB 0E
;   [loop start] L_0EC2
L_0EC2:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        not     al                              ; F6 D0
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp + 6]               ; FF 46 06
;   [unconditional branch target] L_0ED0
L_0ED0:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        dec     word ptr [bp + 4]               ; FF 4E 04
        or      ax, ax                          ; 0B C0
        jne     L_0EC2                          ; 75 E8
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
;   [sub-routine] L_0EE0
L_0EE0:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx + 0x30], 1      ; 26 83 7F 30 01
        je      L_0EF6                          ; 74 05
;   [loop start] L_0EF1
L_0EF1:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0F57                          ; EB 61
;   [conditional branch target (if/else)] L_0EF6
L_0EF6:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     si, word ptr es:[bx + 0x32]     ; 26 8B 77 32
        mov     ax, si                          ; 8B C6
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x86                        ; 05 86 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     si, ax                          ; 03 F0
        cmp     si, 0x830                       ; 81 FE 30 08
        jl      L_0F32                          ; 7C 1B
        push    dx                              ; 52
        push    bx                              ; 53
        call    L_05F6                          ; E8 DA F6
        or      ax, ax                          ; 0B C0
        jl      L_0EF1                          ; 7C D1
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        add     ax, 0x86                        ; 05 86 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     si, word ptr [bp + 4]           ; 8B 76 04
;   [conditional branch target (if/else)] L_0F32
L_0F32:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x32], si     ; 26 89 77 32
        jmp     L_0F4D                          ; EB 12
;   [loop start] L_0F3B
L_0F3B:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 4]                ; C4 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr es:[bx], al            ; 26 88 07
;   [unconditional branch target] L_0F4D
L_0F4D:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        dec     word ptr [bp + 4]               ; FF 4E 04
        or      ax, ax                          ; 0B C0
        jne     L_0F3B                          ; 75 E4
;   [fall-through exit] L_0F57
L_0F57:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
;   [sub-routine] L_0F5E
L_0F5E:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr es:[bx + 0x64], ax     ; 26 39 47 64
        je      L_0F8E                          ; 74 21
        mov     word ptr es:[bx + 0x64], ax     ; 26 89 47 64
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x176                       ; B8 76 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        mov     ax, 0x70                        ; B8 70 00
        push    ax                              ; 50
        mov     ax, 0x59                        ; B8 59 00
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0FCA                          ; E8 40 00
        push    ax                              ; 50
        call    L_0EE0                          ; E8 52 FF
;   [error/early exit] L_0F8E
L_0F8E:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
;   [sub-routine] L_0F94
L_0F94:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr es:[bx + 0x62], ax     ; 26 39 47 62
        je      L_0FC4                          ; 74 21
        mov     word ptr es:[bx + 0x64], ax     ; 26 89 47 64
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x176                       ; B8 76 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        mov     ax, 0x70                        ; B8 70 00
        push    ax                              ; 50
        mov     ax, 0x58                        ; B8 58 00
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0FCA                          ; E8 0A 00
        push    ax                              ; 50
        call    L_0EE0                          ; E8 1C FF
;   [error/early exit] L_0FC4
L_0FC4:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
;   [sub-routine] L_0FCA
L_0FCA:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     al, byte ptr [bp + 0xa]         ; 8A 46 0A
        mov     byte ptr [0x177], al            ; A2 77 01
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        mov     byte ptr [0x178], al            ; A2 78 01
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x179                       ; B8 79 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_2134                          ; E8 50 11
        mov     word ptr [bp + 4], ax           ; 89 46 04
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        mov     byte ptr [bx + 0x179], al       ; 88 87 79 01
        mov     ax, bx                          ; 8B C3
        add     ax, 4                           ; 05 04 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     al, byte ptr [bp + 0xc]         ; 8A 46 0C
        mov     byte ptr [0x185], al            ; A2 85 01
        mov     al, byte ptr [bp + 0xa]         ; 8A 46 0A
        mov     byte ptr [0x186], al            ; A2 86 01
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        mov     byte ptr [0x187], al            ; A2 87 01
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x188                       ; B8 88 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_2134                          ; E8 19 11
        mov     word ptr [bp + 4], ax           ; 89 46 04
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        mov     byte ptr [bx + 0x188], al       ; 88 87 88 01
        mov     ax, bx                          ; 8B C3
        add     ax, 5                           ; 05 05 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
;   [sub-routine] L_1032
L_1032:
        ;   = cProc <32> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x20                        ; 83 EC 20
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx + 0x23]     ; 26 8B 47 23
        or      ax, word ptr es:[bx + 0x25]     ; 26 0B 47 25
        jne     L_1055                          ; 75 09
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1055
L_1055:
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jle     L_1060                          ; 7E 05
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        jmp     L_1065                          ; EB 05
;   [conditional branch target (if/else)] L_1060
L_1060:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        neg     ax                              ; F7 D8
;   [unconditional branch target] L_1065
L_1065:
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    ax                              ; 50
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        call    L_2894                          ; E8 1C 18
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], dx        ; 89 56 E6
        cmp     dx, 0x8000                      ; 81 FA 00 80
        jne     L_1090                          ; 75 0C
        or      ax, ax                          ; 0B C0
        jne     L_1090                          ; 75 08
        sub     ax, ax                          ; 2B C0
        mov     dx, 0x8000                      ; BA 00 80
        jmp     L_12A7                          ; E9 17 02
;   [conditional branch target (if/else)] L_1090
L_1090:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        cmp     word ptr [bp - 0x1a], dx        ; 39 56 E6
        jne     L_10A0                          ; 75 05
        cmp     word ptr [bp - 0x1c], ax        ; 39 46 E4
        je      L_10A5                          ; 74 05
;   [conditional branch target (if/else)] L_10A0
L_10A0:
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
;   [conditional branch target (if/else)] L_10A5
L_10A5:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     al, byte ptr es:[bx + 0x20]     ; 26 8A 47 20
        add     al, byte ptr es:[bx + 0x1d]     ; 26 02 47 1D
        mov     byte ptr [bp - 0x1e], al        ; 88 46 E2
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jle     L_10BE                          ; 7E 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_10C0                          ; EB 02
;   [conditional branch target (if/else)] L_10BE
L_10BE:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_10C0
L_10C0:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_1108                          ; 74 41
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     si, word ptr es:[bx + 0x33]     ; 26 8B 77 33
        les     bx, ptr [bp + 0x1a]             ; C4 5E 1A
        cmp     word ptr es:[bx + 0x60], si     ; 26 39 77 60
        je      L_10F7                          ; 74 20
        mov     ax, 6                           ; B8 06 00
        imul    si                              ; F7 EE
        mov     di, ax                          ; 8B F8
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [di + 0x544]       ; 8B 85 44 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [di + 0x543]       ; 8A 85 43 05
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_0EE0                          ; E8 F0 FD
        les     bx, ptr [bp + 0x1a]             ; C4 5E 1A
        mov     word ptr es:[bx + 0x60], si     ; 26 89 77 60
;   [conditional branch target (if/else)] L_10F7
L_10F7:
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_12AF                          ; E8 A9 01
        jmp     L_1110                          ; EB 08
;   [conditional branch target (if/else)] L_1108
L_1108:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        neg     ax                              ; F7 D8
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
;   [unconditional branch target] L_1110
L_1110:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        je      L_115F                          ; 74 45
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     ax, word ptr es:[bx + 0x3d]     ; 26 8B 47 3D
        mov     cl, byte ptr es:[bx + 0x1d]     ; 26 8A 4F 1D
        sub     ch, ch                          ; 2A ED
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
;   [loop start] L_113C
L_113C:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jge     L_116C                          ; 7D 28
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        les     si, ptr [bp - 0x1c]             ; C4 76 E4
        mov     bl, byte ptr es:[bx + si]       ; 26 8A 18
        sub     bh, bh                          ; 2A FF
        shl     bx, 1                           ; D1 E3
        les     si, ptr [bp - 0x14]             ; C4 76 EC
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
        add     word ptr [bp - 8], ax           ; 01 46 F8
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        jmp     L_113C                          ; EB DD
;   [conditional branch target (if/else)] L_115F
L_115F:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        imul    word ptr [bp + 0xc]             ; F7 6E 0C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
;   [conditional branch target (if/else)] L_116C
L_116C:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_1187                          ; 74 04
        or      ax, ax                          ; 0B C0
        jne     L_119A                          ; 75 13
;   [conditional branch target (if/else)] L_1187
L_1187:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        cmp     word ptr es:[bx + 0x16], 0      ; 26 83 7F 16 00
        jne     L_119A                          ; 75 09
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_119A                          ; 75 03
        jmp     L_1253                          ; E9 B9 00
;   [conditional branch target (if/else)] L_119A
L_119A:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_1238                          ; E9 8A 00
;   [loop start] L_11AE
L_11AE:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_11E8                          ; 74 2A
        les     bx, ptr [bp - 0x1c]             ; C4 5E E4
        mov     al, byte ptr [bp - 0x1e]        ; 8A 46 E2
        cmp     byte ptr es:[bx], al            ; 26 38 07
        jne     L_11E8                          ; 75 1F
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        add     word ptr [bp - 0x10], ax        ; 01 46 F0
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        sub     word ptr [bp - 2], ax           ; 29 46 FE
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jg      L_11E8                          ; 7F 09
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     word ptr [bp - 2], ax           ; 01 46 FE
;   [conditional branch target (if/else)] L_11E8
L_11E8:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        add     word ptr [bp - 8], ax           ; 01 46 F8
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_1229                          ; 74 35
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        les     bx, ptr [bp - 0x1c]             ; C4 5E E4
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [bp - 0x10]            ; FF 76 F0
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_1223                          ; 74 17
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        push    word ptr es:[bx + 0x35]         ; 26 FF 77 35
        call    L_21F4                          ; E8 D3 0F
        jmp     L_1225                          ; EB 02
;   [conditional branch target (if/else)] L_1223
L_1223:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_1225
L_1225:
        push    ax                              ; 50
        call    L_1394                          ; E8 6B 01
;   [conditional branch target (if/else)] L_1229
L_1229:
        dec     word ptr [bp + 0xc]             ; FF 4E 0C
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        mov     dx, word ptr [bp - 0x1a]        ; 8B 56 E6
        inc     word ptr [bp - 0x1c]            ; FF 46 E4
        inc     word ptr [bp + 8]               ; FF 46 08
;   [unconditional branch target] L_1238
L_1238:
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        je      L_1241                          ; 74 03
        jmp     L_11AE                          ; E9 6D FF
;   [conditional branch target (if/else)] L_1241
L_1241:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_126B                          ; 75 24
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        jmp     L_126B                          ; EB 18
;   [unconditional branch target] L_1253
L_1253:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_126B                          ; 74 12
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_0EE0                          ; E8 75 FC
;   [branch target] L_126B
L_126B:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_1279                          ; 74 08
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1279
L_1279:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_129B                          ; 74 1C
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_12D4                          ; E8 46 00
        les     bx, ptr [bp + 0x1a]             ; C4 5E 1A
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     word ptr es:[bx + 0x62], ax     ; 26 01 47 62
        cdq                                     ; 99
        jmp     L_12A7                          ; EB 0C
;   [conditional branch target (if/else)] L_129B
L_129B:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     dx, word ptr es:[bx + 0x16]     ; 26 8B 57 16
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
;   [fall-through exit] L_12A7
L_12A7:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0x1a                            ; C2 1A 00
;   [sub-routine] L_12AF
L_12AF:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0xb], 0       ; 26 80 7F 0B 00
        je      L_12CE                          ; 74 12
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1ad                       ; B8 AD 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    L_0EE0                          ; E8 12 FC
;   [error/early exit] L_12CE
L_12CE:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_12D4
L_12D4:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0xb], 0       ; 26 80 7F 0B 00
        je      L_12F3                          ; 74 12
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1b2                       ; B8 B2 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    L_0EE0                          ; E8 ED FB
;   [error/early exit] L_12F3
L_12F3:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_12F9
L_12F9:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jge     L_130D                          ; 7D 0B
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     word ptr [bp + 6], ax           ; 01 46 06
        mov     word ptr [bp + 0xa], 0          ; C7 46 0A 00 00
;   [conditional branch target (if/else)] L_130D
L_130D:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jge     L_131E                          ; 7D 0B
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     word ptr [bp + 4], ax           ; 01 46 04
        mov     word ptr [bp + 8], 0            ; C7 46 08 00 00
;   [conditional branch target (if/else)] L_131E
L_131E:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, word ptr [bp + 6]           ; 03 46 06
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        cmp     ax, word ptr es:[bx + 4]        ; 26 3B 47 04
        jbe     L_1337                          ; 76 0A
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        mov     word ptr [bp + 6], ax           ; 89 46 06
;   [conditional branch target (if/else)] L_1337
L_1337:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [bp + 4]           ; 03 46 04
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        cmp     ax, word ptr es:[bx + 6]        ; 26 3B 47 06
        jbe     L_1350                          ; 76 0A
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        mov     word ptr [bp + 4], ax           ; 89 46 04
;   [conditional branch target (if/else)] L_1350
L_1350:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jle     L_138C                          ; 7E 36
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jle     L_138C                          ; 7E 30
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        add     ax, 2                           ; 05 02 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x62                        ; B8 62 00
        mov     dx, 0xff                        ; BA FF 00
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.DMBITBLT                ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_138C
L_138C:
        sub     ax, ax                          ; 2B C0
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
;   [sub-routine] L_1394
L_1394:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp + 8]                    ; 8D 46 08
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0EE0                          ; E8 33 FB
        cmp     byte ptr [bp + 4], 0            ; 80 7E 04 00
        je      L_13CF                          ; 74 1C
        mov     byte ptr [bp - 4], 8            ; C6 46 FC 08
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        mov     byte ptr [bp - 3], al           ; 88 46 FD
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_0EE0                          ; E8 11 FB
;   [conditional branch target (if/else)] L_13CF
L_13CF:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_1408                          ; 74 33
        mov     byte ptr [0x177], 0x2a          ; C6 06 77 01 2A
        mov     byte ptr [0x178], 0x70          ; C6 06 78 01 70
        mov     byte ptr [0x179], 0x2b          ; C6 06 79 01 2B
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x17a                       ; B8 7A 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_2134                          ; E8 45 0D
        mov     si, ax                          ; 8B F0
        mov     byte ptr [si + 0x17a], 0x58     ; C6 84 7A 01 58
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x176                       ; B8 76 01
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [si + 5]                    ; 8D 44 05
        push    ax                              ; 50
        call    L_0EE0                          ; E8 D8 FA
;   [error/early exit] L_1408
L_1408:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
;   [sub-routine] L_140F
L_140F:
        ;   = cProc <72> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x48                        ; 83 EC 48
        mov     ax, word ptr [0x896]            ; A1 96 08
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        lea     ax, [bp - 6]                    ; 8D 46 FA
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        jmp     L_144E                          ; EB 1E
;   [loop start] L_1430
L_1430:
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     dl, 0x30                        ; 80 C2 30
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], dl            ; 26 88 17
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
;   [unconditional branch target] L_144E
L_144E:
        cmp     word ptr [bp - 0x48], 0         ; 83 7E B8 00
        jne     L_1430                          ; 75 DC
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_1467                          ; 75 0A
        dec     word ptr [bp - 6]               ; FF 4E FA
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     byte ptr es:[bx], 0x30          ; 26 C6 07 30
;   [conditional branch target (if/else)] L_1467
L_1467:
        mov     ax, 0x1c3                       ; B8 C3 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1b8                       ; B8 B8 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.WRITEPROFILESTRING   ; 9A DF 14 00 00 [FIXUP]
        mov     ax, word ptr [0x89a]            ; A1 9A 08
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        lea     ax, [bp - 6]                    ; 8D 46 FA
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        jmp     L_14B5                          ; EB 1E
;   [loop start] L_1497
L_1497:
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     dl, 0x30                        ; 80 C2 30
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], dl            ; 26 88 17
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
;   [unconditional branch target] L_14B5
L_14B5:
        cmp     word ptr [bp - 0x48], 0         ; 83 7E B8 00
        jne     L_1497                          ; 75 DC
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_14CE                          ; 75 0A
        dec     word ptr [bp - 6]               ; FF 4E FA
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     byte ptr es:[bx], 0x30          ; 26 C6 07 30
;   [conditional branch target (if/else)] L_14CE
L_14CE:
        mov     ax, 0x1da                       ; B8 DA 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1d4                       ; B8 D4 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.WRITEPROFILESTRING   ; 9A 46 15 00 00 [FIXUP]
        mov     ax, word ptr [0x892]            ; A1 92 08
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        lea     ax, [bp - 6]                    ; 8D 46 FA
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        jmp     L_151C                          ; EB 1E
;   [loop start] L_14FE
L_14FE:
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     dl, 0x30                        ; 80 C2 30
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], dl            ; 26 88 17
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
;   [unconditional branch target] L_151C
L_151C:
        cmp     word ptr [bp - 0x48], 0         ; 83 7E B8 00
        jne     L_14FE                          ; 75 DC
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_1535                          ; 75 0A
        dec     word ptr [bp - 6]               ; FF 4E FA
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     byte ptr es:[bx], 0x30          ; 26 C6 07 30
;   [conditional branch target (if/else)] L_1535
L_1535:
        mov     ax, 0x1f5                       ; B8 F5 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1eb                       ; B8 EB 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.WRITEPROFILESTRING   ; 9A AD 15 00 00 [FIXUP]
        mov     ax, word ptr [0x894]            ; A1 94 08
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        lea     ax, [bp - 6]                    ; 8D 46 FA
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        jmp     L_1583                          ; EB 1E
;   [loop start] L_1565
L_1565:
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     dl, 0x30                        ; 80 C2 30
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], dl            ; 26 88 17
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
;   [unconditional branch target] L_1583
L_1583:
        cmp     word ptr [bp - 0x48], 0         ; 83 7E B8 00
        jne     L_1565                          ; 75 DC
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_159C                          ; 75 0A
        dec     word ptr [bp - 6]               ; FF 4E FA
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     byte ptr es:[bx], 0x30          ; 26 C6 07 30
;   [conditional branch target (if/else)] L_159C
L_159C:
        mov     ax, 0x20d                       ; B8 0D 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_RBUTTONDBLCLK
        mov     ax, 0x206                       ; B8 06 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.WRITEPROFILESTRING   ; 9A 14 16 00 00 [FIXUP]
        mov     ax, word ptr [0x890]            ; A1 90 08
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        lea     ax, [bp - 6]                    ; 8D 46 FA
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        jmp     L_15EA                          ; EB 1E
;   [loop start] L_15CC
L_15CC:
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     dl, 0x30                        ; 80 C2 30
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], dl            ; 26 88 17
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
;   [unconditional branch target] L_15EA
L_15EA:
        cmp     word ptr [bp - 0x48], 0         ; 83 7E B8 00
        jne     L_15CC                          ; 75 DC
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_1603                          ; 75 0A
        dec     word ptr [bp - 6]               ; FF 4E FA
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     byte ptr es:[bx], 0x30          ; 26 C6 07 30
;   [conditional branch target (if/else)] L_1603
L_1603:
        mov     ax, 0x225                       ; B8 25 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x21e                       ; B8 1E 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.WRITEPROFILESTRING   ; 9A 7B 16 00 00 [FIXUP]
        mov     ax, word ptr [0x898]            ; A1 98 08
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        lea     ax, [bp - 6]                    ; 8D 46 FA
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        jmp     L_1651                          ; EB 1E
;   [loop start] L_1633
L_1633:
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     dl, 0x30                        ; 80 C2 30
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], dl            ; 26 88 17
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
;   [unconditional branch target] L_1651
L_1651:
        cmp     word ptr [bp - 0x48], 0         ; 83 7E B8 00
        jne     L_1633                          ; 75 DC
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_166A                          ; 75 0A
        dec     word ptr [bp - 6]               ; FF 4E FA
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     byte ptr es:[bx], 0x30          ; 26 C6 07 30
;   [conditional branch target (if/else)] L_166A
L_166A:
        mov     ax, 0x23b                       ; B8 3B 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x236                       ; B8 36 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.WRITEPROFILESTRING   ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
;   [sub-routine] L_1685
L_1685:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, 0x257                       ; B8 57 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x24c                       ; B8 4C 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x4b                        ; B8 4B 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A B0 16 00 00 [FIXUP]
        mov     word ptr [0x896], ax            ; A3 96 08
        mov     ax, 0x26e                       ; B8 6E 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x268                       ; B8 68 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A C6 16 00 00 [FIXUP]
        mov     word ptr [0x89a], ax            ; A3 9A 08
        mov     ax, 0x289                       ; B8 89 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x27f                       ; B8 7F 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A DC 16 00 00 [FIXUP]
        mov     word ptr [0x892], ax            ; A3 92 08
        mov     ax, 0x2a1                       ; B8 A1 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x29a                       ; B8 9A 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A F2 16 00 00 [FIXUP]
        mov     word ptr [0x894], ax            ; A3 94 08
        mov     ax, 0x2b9                       ; B8 B9 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2b2                       ; B8 B2 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A 08 17 00 00 [FIXUP]
        mov     word ptr [0x890], ax            ; A3 90 08
        mov     ax, 0x2cf                       ; B8 CF 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2ca                       ; B8 CA 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x898], ax            ; A3 98 08
        cmp     word ptr [0x896], 0x96          ; 81 3E 96 08 96 00
        jne     L_1725                          ; 75 0E
        mov     word ptr [0x8ae], 2             ; C7 06 AE 08 02 00
        mov     word ptr [0x8b0], 1             ; C7 06 B0 08 01 00
        jmp     L_1747                          ; EB 22
;   [conditional branch target (if/else)] L_1725
L_1725:
        cmp     word ptr [0x896], 0x12c         ; 81 3E 96 08 2C 01
        jne     L_173B                          ; 75 0E
        mov     word ptr [0x8ae], 1             ; C7 06 AE 08 01 00
        mov     word ptr [0x8b0], 0             ; C7 06 B0 08 00 00
        jmp     L_1747                          ; EB 0C
;   [conditional branch target (if/else)] L_173B
L_173B:
        mov     word ptr [0x8ae], 4             ; C7 06 AE 08 04 00
        mov     word ptr [0x8b0], 2             ; C7 06 B0 08 02 00
;   [fall-through exit] L_1747
L_1747:
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
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [0x2e8], 0             ; 83 3E E8 02 00
        je      L_1766                          ; 74 05
;   [loop start] L_1761
L_1761:
        sub     ax, ax                          ; 2B C0
        jmp     L_1860                          ; E9 FA 00
;   [conditional branch target (if/else)] L_1766
L_1766:
        mov     word ptr [0x2e8], 1             ; C7 06 E8 02 01 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x870                       ; B8 70 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x4e                        ; B8 4E 00
        push    ax                              ; 50
        call    far GDI.GETENVIRONMENT          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1789                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_178B                          ; EB 02
;   [conditional branch target (if/else)] L_1789
L_1789:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_178B
L_178B:
        or      ax, ax                          ; 0B C0
        jne     L_17A3                          ; 75 14
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg lpsz1 (high/segment)
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, 0x870                       ; B8 70 08
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1801                          ; 74 5E
;   [conditional branch target (if/else)] L_17A3
L_17A3:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_1685                          ; E8 DC FE
        mov     ax, 0x870                       ; B8 70 08
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg lpszSrc (high/segment)
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A F6 08 00 00 [FIXUP]
        cmp     word ptr [0x896], 0x96          ; 81 3E 96 08 96 00
        jne     L_17CF                          ; 75 0E
        mov     word ptr [0x8ae], 2             ; C7 06 AE 08 02 00
        mov     word ptr [0x8b0], 1             ; C7 06 B0 08 01 00
        jmp     L_17F1                          ; EB 22
;   [conditional branch target (if/else)] L_17CF
L_17CF:
        cmp     word ptr [0x896], 0x12c         ; 81 3E 96 08 2C 01
        jne     L_17E5                          ; 75 0E
        mov     word ptr [0x8ae], 1             ; C7 06 AE 08 01 00
        mov     word ptr [0x8b0], 0             ; C7 06 B0 08 00 00
        jmp     L_17F1                          ; EB 0C
;   [conditional branch target (if/else)] L_17E5
L_17E5:
        mov     word ptr [0x8ae], 4             ; C7 06 AE 08 04 00
        mov     word ptr [0x8b0], 2             ; C7 06 B0 08 02 00
;   [unconditional branch target] L_17F1
L_17F1:
        mov     ax, 0x870                       ; B8 70 08
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg lpszSrc (high/segment)
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A B5 17 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1801
L_1801:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        mov     ax, 0x2e0                       ; B8 E0 02
        push    ds                              ; 1E
        ;   ^ arg lpszTemplate (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTemplate (low/offset)
        push    word ptr [bp + 0x10]            ; FF 76 10
        ;   ^ arg hWndOwner
        mov     ax, OFFSET _entry_100           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_100           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpDialogFunc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpDialogFunc (low/offset)
        ; --> DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 2                           ; 3D 02 00
        jne     L_1827                          ; 75 09
        mov     word ptr [0x2e8], 0             ; C7 06 E8 02 00 00
        jmp     L_1761                          ; E9 3A FF
;   [conditional branch target (if/else)] L_1827
L_1827:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x870                       ; B8 70 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x4e                        ; B8 4E 00
        push    ax                              ; 50
        call    far GDI.SETENVIRONMENT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_140F                          ; E8 CE FB
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        ;   ^ arg hWnd
        mov     ax, 0x1b                        ; B8 1B 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg lParam (high/segment)
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x2e8], 0             ; C7 06 E8 02 00 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_1860
L_1860:
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
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_1890                          ; 74 10
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_1888                          ; 75 03
        jmp     L_195F                          ; E9 D7 00
;   [conditional branch target (if/else)] L_1888
L_1888:
        cmp     ax, 0x115                       ; 3D 15 01
        je      L_1908                          ; 74 7B
        jmp     L_1B6C                          ; E9 DC 02
;   [conditional branch target (if/else)] L_1890
L_1890:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x890]                ; FF 36 90 08
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A AC 18 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x892]                ; FF 36 92 08
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A BC 18 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x89a]                ; FF 36 9A 08
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A CC 18 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x898]                ; FF 36 98 08
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A DC 18 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x896]                ; FF 36 96 08
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        push    word ptr [0x894]                ; FF 36 94 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETDLGITEMINT          ; 9A 46 19 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        push    word ptr [0x89a]                ; FF 36 9A 08
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1B6C                          ; E9 64 02
;   [conditional branch target (if/else)] L_1908
L_1908:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETDLGITEMINT          ; 9A FF 1A 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        je      L_194D                          ; 74 27
        cmp     ax, 1                           ; 3D 01 00
        je      L_192E                          ; 74 03
        jmp     L_1B6C                          ; E9 3E 02
;   [conditional branch target (if/else)] L_192E
L_192E:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        cmp     word ptr [bp - 4], 1            ; 83 7E FC 01
        je      L_193E                          ; 74 03
        dec     word ptr [bp - 4]               ; FF 4E FC
;   [loop start (also forward branch)] L_193E
L_193E:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETDLGITEMINT          ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1B6C                          ; E9 1F 02
;   [conditional branch target (if/else)] L_194D
L_194D:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        cmp     word ptr [bp - 4], 0x63         ; 83 7E FC 63
        je      L_193E                          ; 74 E4
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_193E                          ; EB DF
;   [unconditional branch target] L_195F
L_195F:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 0x18                        ; 3D 18 00
        je      L_1993                          ; 74 2C
        jbe     L_196C                          ; 76 03
        jmp     L_1B45                          ; E9 D9 01
;   [conditional branch target (if/else)] L_196C
L_196C:
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0x16                        ; 3D 16 00
        jbe     L_1977                          ; 76 03
        jmp     L_1B6C                          ; E9 F5 01
;   [conditional branch target (if/else)] L_1977
L_1977:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x1b17]       ; 2E FF A7 17 1B
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x890], ax            ; A3 90 08
        jmp     L_1A6F                          ; E9 DC 00
;   [conditional branch target (if/else)] L_1993
L_1993:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x16                        ; B8 16 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x89a], ax            ; A3 9A 08
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A CE 19 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x89a], ax            ; A3 9A 08
        jmp     L_1A6F                          ; E9 B4 00
;   [loop start] L_19BB
L_19BB:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x892], ax            ; A3 92 08
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A E2 19 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x17                        ; B8 17 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x892], ax            ; A3 92 08
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A F9 19 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x1f                        ; B8 1F 00
        push    ax                              ; 50
        mov     ax, 0x2f                        ; B8 2F 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x892], ax            ; A3 92 08
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A 23 1A 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x4f                        ; B8 4F 00
        push    ax                              ; 50
        mov     ax, 0x8f                        ; B8 8F 00
;   [loop start] L_1A07
L_1A07:
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x892], ax            ; A3 92 08
        jmp     L_1A6F                          ; EB 5F
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x892], ax            ; A3 92 08
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A 3A 1A 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x1f                        ; B8 1F 00
        push    ax                              ; 50
        mov     ax, 0x2f                        ; B8 2F 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x892], ax            ; A3 92 08
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A 51 1A 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x4f                        ; B8 4F 00
        push    ax                              ; 50
        mov     ax, 0x8f                        ; B8 8F 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x892], ax            ; A3 92 08
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A 71 1A 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x17                        ; B8 17 00
        push    ax                              ; 50
        jmp     L_1A07                          ; EB A9
;   [loop start] L_1A5E
L_1A5E:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        mov     ax, 0x1d                        ; B8 1D 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x898], ax            ; A3 98 08
;   [unconditional branch target] L_1A6F
L_1A6F:
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A 88 1A 00 00 [FIXUP]
        jmp     L_1B6C                          ; E9 F4 00
;   [loop start] L_1A78
L_1A78:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x4b                        ; B8 4B 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x896], ax            ; A3 96 08
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A 9C 1A 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x96                        ; B8 96 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x896], ax            ; A3 96 08
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A B0 1A 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x12c                       ; B8 2C 01
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x896], ax            ; A3 96 08
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x896], 0x4b          ; 83 3E 96 08 4B
        jne     L_1ACA                          ; 75 0F
        mov     word ptr [0x8ae], 4             ; C7 06 AE 08 04 00
        mov     word ptr [0x8b0], 2             ; C7 06 B0 08 02 00
        jmp     L_1B6C                          ; E9 A2 00
;   [conditional branch target (if/else)] L_1ACA
L_1ACA:
        cmp     word ptr [0x896], 0x96          ; 81 3E 96 08 96 00
        jne     L_1AE1                          ; 75 0F
        mov     word ptr [0x8ae], 2             ; C7 06 AE 08 02 00
        mov     word ptr [0x8b0], 1             ; C7 06 B0 08 01 00
        jmp     L_1B6C                          ; E9 8B 00
;   [conditional branch target (if/else)] L_1AE1
L_1AE1:
        mov     word ptr [0x8ae], 1             ; C7 06 AE 08 01 00
        mov     word ptr [0x8b0], 0             ; C7 06 B0 08 00 00
        jmp     L_1B6C                          ; EB 7D
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETDLGITEMINT          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x894], ax            ; A3 94 08
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_1B9A                          ; E9 83 00
        out     dx, ax                          ; EF
        sbb     al, byte ptr [0x6c1b]           ; 1A 06 1B 6C
        sbb     bp, word ptr [si + 0x1b]        ; 1B 6C 1B
        insb    byte ptr es:[di], dx            ; 6C
        sbb     bp, word ptr [si + 0x1b]        ; 1B 6C 1B
        insb    byte ptr es:[di], dx            ; 6C
        sbb     bp, word ptr [si + 0x1b]        ; 1B 6C 1B
        insb    byte ptr es:[di], dx            ; 6C
        sbb     di, word ptr [bx + 0x19]        ; 1B 7F 19
        jg      L_1B46                          ; 7F 19
        insb    byte ptr es:[di], dx            ; 6C
        sbb     bp, word ptr [si + 0x1b]        ; 1B 6C 1B
        insb    byte ptr es:[di], dx            ; 6C
        sbb     bp, word ptr [si + 0x1b]        ; 1B 6C 1B
        mov     bx, 0xbb19                      ; BB 19 BB
        sbb     word ptr [si + 0x1b], bp        ; 19 6C 1B
        mov     bx, 0x9319                      ; BB 19 93
        sbb     word ptr [bp + di - 0x6ce7], dx ; 19 93 19 93
        sbb     word ptr [bx + si], dx          ; 19 10
        sbb     bh, byte ptr [di]               ; 1A 3D
;   [conditional branch target (if/else)] L_1B46
L_1B46:
        das                                     ; 2F
        add     byte ptr [di + 3], dh           ; 00 75 03
        jmp     L_19BB                          ; E9 6E FE
        ja      L_1B70                          ; 77 21
        cmp     ax, 0x1a                        ; 3D 1A 00
        jb      L_1B6C                          ; 72 18
        cmp     ax, 0x1b                        ; 3D 1B 00
        ja      L_1B5C                          ; 77 03
        jmp     L_1A5E                          ; E9 02 FF
;   [conditional branch target (if/else)] L_1B5C
L_1B5C:
        cmp     ax, 0x1d                        ; 3D 1D 00
        jne     L_1B64                          ; 75 03
        jmp     L_1A5E                          ; E9 FA FE
;   [conditional branch target (if/else)] L_1B64
L_1B64:
        cmp     ax, 0x1f                        ; 3D 1F 00
        jne     L_1B6C                          ; 75 03
        jmp     L_19BB                          ; E9 4F FE
;   [loop start (also forward branch)] L_1B6C
L_1B6C:
        sub     ax, ax                          ; 2B C0
        jmp     L_1B9A                          ; EB 2A
;   [conditional branch target (if/else)] L_1B70
L_1B70:
        cmp     ax, 0x4b                        ; 3D 4B 00
        jne     L_1B78                          ; 75 03
        jmp     L_1A78                          ; E9 00 FF
;   [conditional branch target (if/else)] L_1B78
L_1B78:
        cmp     ax, 0x4f                        ; 3D 4F 00
        jne     L_1B80                          ; 75 03
        jmp     L_19BB                          ; E9 3B FE
;   [conditional branch target (if/else)] L_1B80
L_1B80:
        cmp     ax, 0x8f                        ; 3D 8F 00
        jne     L_1B88                          ; 75 03
        jmp     L_19BB                          ; E9 33 FE
;   [conditional branch target (if/else)] L_1B88
L_1B88:
        cmp     ax, 0x96                        ; 3D 96 00
        jne     L_1B90                          ; 75 03
        jmp     L_1A78                          ; E9 E8 FE
;   [conditional branch target (if/else)] L_1B90
L_1B90:
        cmp     ax, 0x12c                       ; 3D 2C 01
        jne     L_1B98                          ; 75 03
        jmp     L_1A78                          ; E9 E0 FE
;   [conditional branch target (if/else)] L_1B98
L_1B98:
        jmp     L_1B6C                          ; EB D2
;   [unconditional branch target] L_1B9A
L_1B9A:
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
        lea     ax, [bp + 0x22]                 ; 8D 46 22
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0x20]                 ; 8D 46 20
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0x1e]                 ; 8D 46 1E
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_2061                          ; E8 A0 04
        or      ax, ax                          ; 0B C0
        jne     L_1BC9                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_1BFE                          ; EB 35
;   [conditional branch target (if/else)] L_1BC9
L_1BC9:
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
        call    far GDI.DMBITBLT                ; 9A 88 13 00 00 [FIXUP]
;   [unconditional branch target] L_1BFE
L_1BFE:
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
        lea     ax, [bp + 0x12]                 ; 8D 46 12
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0x10]                 ; 8D 46 10
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0xe]                  ; 8D 46 0E
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_2061                          ; E8 3C 04
        or      ax, ax                          ; 0B C0
        jne     L_1C2D                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_1C4A                          ; EB 1D
;   [conditional branch target (if/else)] L_1C2D
L_1C2D:
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMPIXEL                 ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_1C4A
L_1C4A:
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
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jne     L_1C74                          ; 75 03
        jmp     L_1D37                          ; E9 C3 00
;   [conditional branch target (if/else)] L_1C74
L_1C74:
        cmp     word ptr es:[bx + 0x28], 1      ; 26 83 7F 28 01
        jne     L_1C80                          ; 75 05
;   [loop start] L_1C7B
L_1C7B:
        sub     ax, ax                          ; 2B C0
        jmp     L_1D84                          ; E9 04 01
;   [conditional branch target (if/else)] L_1C80
L_1C80:
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        or      byte ptr es:[bx + 0x26], 0x40   ; 26 80 4F 26 40
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        jne     L_1C7B                          ; 75 EC
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
        je      L_1C7B                          ; 74 D2
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
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
        call    L_0039                          ; E8 71 E3
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        mov     word ptr [bp + 0x16], ax        ; 89 46 16
        mov     word ptr [bp + 0x18], dx        ; 89 56 18
        cmp     word ptr [bp + 0x1c], 4         ; 83 7E 1C 04
        jne     L_1D0F                          ; 75 35
        add     word ptr [bp - 0xa], 2          ; 83 46 F6 02
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        add     word ptr [bp - 0xa], 2          ; 83 46 F6 02
        sub     word ptr es:[bx], ax            ; 26 29 07
        mov     si, word ptr [bp + 0x1a]        ; 8B 76 1A
        shl     si, 1                           ; D1 E6
        sub     si, 2                           ; 83 EE 02
;   [loop start] L_1CF7
L_1CF7:
        or      si, si                          ; 0B F6
        je      L_1D18                          ; 74 1D
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        add     word ptr [bp - 0xa], 2          ; 83 46 F6 02
        sub     word ptr es:[bx], ax            ; 26 29 07
        dec     si                              ; 4E
        jmp     L_1CF7                          ; EB E8
;   [conditional branch target (if/else)] L_1D0F
L_1D0F:
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A 04 1E 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1D18
L_1D18:
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        or      byte ptr es:[bx + 0x26], 4      ; 26 80 4F 26 04
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x8b6                       ; 05 B6 08
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xe], dx      ; 26 89 57 0E
        mov     ax, bx                          ; 8B C3
        add     ax, 2                           ; 05 02 00
        mov     word ptr [bp + 0x1e], ax        ; 89 46 1E
;   [unconditional branch target] L_1D37
L_1D37:
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
        push    word ptr [0x2f2]                ; FF 36 F2 02
        push    word ptr [0x2f0]                ; FF 36 F0 02
        call    far GDI.DMOUTPUT                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_1D81                          ; 74 10
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A 75 12 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1D81
L_1D81:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
;   [unconditional branch target] L_1D84
L_1D84:
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
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jne     L_1DE9                          ; 75 3E
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x23]     ; 26 8B 47 23
        or      ax, word ptr es:[bx + 0x25]     ; 26 0B 47 25
        jne     L_1DE9                          ; 75 31
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMSTRBLT                ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1F87                          ; E9 9E 01
;   [conditional branch target (if/else)] L_1DE9
L_1DE9:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_1DFF                          ; 74 0D
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x23]     ; 26 8B 47 23
        or      ax, word ptr es:[bx + 0x25]     ; 26 0B 47 25
        jne     L_1E0B                          ; 75 0C
;   [conditional branch target (if/else)] L_1DFF
L_1DFF:
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A 51 10 00 00 [FIXUP]
        jmp     L_1F87                          ; E9 7C 01
;   [conditional branch target (if/else)] L_1E0B
L_1E0B:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jge     L_1E14                          ; 7D 03
        jmp     L_1E94                          ; E9 80 00
;   [conditional branch target (if/else)] L_1E14
L_1E14:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx + 0x28], 1      ; 26 83 7F 28 01
        je      L_1E21                          ; 74 03
        jmp     L_1ECD                          ; E9 AC 00
;   [conditional branch target (if/else)] L_1E21
L_1E21:
        push    es                              ; 06
        push    bx                              ; 53
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        add     ax, word ptr [bp + 0x1c]        ; 03 46 1C
        push    ax                              ; 50
        call    L_0F5E                          ; E8 2D F1
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx + 0x11], ax     ; 26 39 47 11
        jge     L_1E88                          ; 7D 47
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
;   [loop start] L_1E46
L_1E46:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        call    L_0F94                          ; E8 3F F1
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        call    L_1032                          ; E8 B3 F1
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 4], 2            ; 83 7E FC 02
        jle     L_1E46                          ; 7E BE
;   [conditional branch target (if/else)] L_1E88
L_1E88:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        call    L_0F94                          ; E8 00 F1
;   [unconditional branch target] L_1E94
L_1E94:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        call    L_1032                          ; E8 74 F1
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        add     ax, cx                          ; 03 C1
        adc     dx, bx                          ; 13 D3
        jmp     L_1F87                          ; E9 BA 00
;   [unconditional branch target] L_1ECD
L_1ECD:
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    L_0039                          ; E8 5A E1
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        mov     word ptr [bp + 0x18], ax        ; 89 46 18
        mov     word ptr [bp + 0x1a], ss        ; 8C 56 1A
        push    ss                              ; 16
        push    ax                              ; 50
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        push    word ptr es:[bx + 0x2a]         ; 26 FF 77 2A
        push    word ptr es:[bx + 0x2c]         ; 26 FF 77 2C
        call    0                               ; E8 08 E1
        or      ax, ax                          ; 0B C0
        jg      L_1F02                          ; 7F 06
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_1F87                          ; E9 85 00
;   [conditional branch target (if/else)] L_1F02
L_1F02:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx + 2], 2         ; 26 83 7F 02 02
        jne     L_1F81                          ; 75 75
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        sub     word ptr [bp + 0x1e], ax        ; 29 46 1E
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        sub     word ptr [bp + 0x1c], ax        ; 29 46 1C
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x8b6                       ; 05 B6 08
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xe], dx      ; 26 89 57 0E
        push    dx                              ; 52
        push    bx                              ; 53
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jle     L_1F4D                          ; 7E 07
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        neg     ax                              ; F7 D8
        jmp     L_1F50                          ; EB 03
;   [conditional branch target (if/else)] L_1F4D
L_1F4D:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
;   [unconditional branch target] L_1F50
L_1F50:
        push    ax                              ; 50
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        call    L_1032                          ; E8 D2 F0
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        mov     ax, dx                          ; 8B C2
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        call    L_12F9                          ; E8 78 F3
;   [conditional branch target (if/else)] L_1F81
L_1F81:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
;   [unconditional branch target] L_1F87
L_1F87:
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
        call    L_2061                          ; E8 B0 00
        or      ax, ax                          ; 0B C0
        jne     L_1FB9                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_1FD3                          ; EB 1A
;   [conditional branch target (if/else)] L_1FB9
L_1FB9:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMSCANLR                ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_1FD3
L_1FD3:
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
        je      L_1FFA                          ; 74 09
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 2                           ; 05 02 00
        jmp     L_2000                          ; EB 06
;   [conditional branch target (if/else)] L_1FFA
L_1FFA:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
;   [unconditional branch target] L_2000
L_2000:
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
        je      L_203D                          ; 74 09
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 2                           ; 05 02 00
        jmp     L_2043                          ; EB 06
;   [conditional branch target (if/else)] L_203D
L_203D:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
;   [unconditional branch target] L_2043
L_2043:
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
;   [sub-routine] L_2061
L_2061:
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
        je      L_20EB                          ; 74 6B
        or      byte ptr es:[bx + 0x26], 0x40   ; 26 80 4F 26 40
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_2090                          ; 74 04
;   [loop start] L_208C
L_208C:
        sub     ax, ax                          ; 2B C0
        jmp     L_20EE                          ; EB 5E
;   [conditional branch target (if/else)] L_2090
L_2090:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        cmp     word ptr es:[bx + 0x28], 1      ; 26 83 7F 28 01
        je      L_208C                          ; 74 F2
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x8b6                       ; 05 B6 08
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xe], dx      ; 26 89 57 0E
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, word ptr [bp + 6]           ; 0B 46 06
        je      L_20BB                          ; 74 0A
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        les     bx, ptr [bp + 4]                ; C4 5E 04
        sub     word ptr es:[bx], ax            ; 26 29 07
;   [conditional branch target (if/else)] L_20BB
L_20BB:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, word ptr [bp + 0xa]         ; 0B 46 0A
        je      L_20D0                          ; 74 0D
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        les     bx, ptr [bp + 8]                ; C4 5E 08
        sub     word ptr es:[bx], ax            ; 26 29 07
;   [conditional branch target (if/else)] L_20D0
L_20D0:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        or      byte ptr es:[bx + 0x26], 4      ; 26 80 4F 26 04
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        add     ax, 2                           ; 05 02 00
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
;   [conditional branch target (if/else)] L_20EB
L_20EB:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_20EE
L_20EE:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
;   [sub-routine] L_20F4
L_20F4:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_210E                          ; EB 09
;   [loop start] L_2105
L_2105:
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [bp - 2]               ; F7 6E FE
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [unconditional branch target] L_210E
L_210E:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        les     si, ptr [bp + 4]                ; C4 76 04
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        cwde                                    ; 98
        sub     ax, 0x30                        ; 2D 30 00
        add     word ptr [bp - 2], ax           ; 01 46 FE
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr es:[bx + si], 0        ; 26 80 38 00
        jne     L_2105                          ; 75 DB
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
;   [sub-routine] L_2134
L_2134:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jge     L_214A                          ; 7D 05
        neg     ax                              ; F7 D8
        mov     word ptr [bp + 8], ax           ; 89 46 08
;   [conditional branch target (if/else)] L_214A
L_214A:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [loop start] L_214F
L_214F:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        les     si, ptr [bp + 4]                ; C4 76 04
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     dl, 0x30                        ; 80 C2 30
        mov     byte ptr es:[bx + si], dl       ; 26 88 10
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bp + 8], ax           ; 89 46 08
        or      ax, ax                          ; 0B C0
        jne     L_214F                          ; 75 DB
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jge     L_2184                          ; 7D 0A
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr es:[bx + si], 0x2d     ; 26 C6 00 2D
;   [conditional branch target (if/else)] L_2184
L_2184:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        les     si, ptr [bp + 4]                ; C4 76 04
        mov     byte ptr es:[bx + si], 0        ; 26 C6 00 00
        push    es                              ; 06
        push    si                              ; 56
        call    L_219D                          ; E8 0A 00
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
;   [sub-routine] L_219D
L_219D:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        jmp     L_21B4                          ; EB 03
;   [loop start] L_21B1
L_21B1:
        inc     word ptr [bp - 6]               ; FF 46 FA
;   [unconditional branch target] L_21B4
L_21B4:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_21B1                          ; 75 F4
;   [loop start] L_21BD
L_21BD:
        dec     word ptr [bp - 6]               ; FF 4E FA
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jae     L_21EE                          ; 73 23
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 2], al           ; 88 46 FE
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx], al            ; 26 88 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp + 4]               ; FF 46 04
        jmp     L_21BD                          ; EB CF
;   [error/early exit] L_21EE
L_21EE:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
;   [sub-routine] L_21F4
L_21F4:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        cmp     byte ptr [bp + 8], 0xa0         ; 80 7E 08 A0
        jb      L_2218                          ; 72 1A
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        shl     al, 1                           ; D0 E0
        sub     al, 0x40                        ; 2C 40
        mov     byte ptr [bp + 8], al           ; 88 46 08
        mov     bl, al                          ; 8A D8
        sub     bh, bh                          ; 2A FF
        add     bx, word ptr [bp + 6]           ; 03 5E 06
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     al, byte ptr [bx + si]          ; 8A 00
        sub     ah, ah                          ; 2A E4
        jmp     L_221A                          ; EB 02
;   [conditional branch target (if/else)] L_2218
L_2218:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_221A
L_221A:
        pop     si                              ; 5E
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
        sub     sp, 0x1e                        ; 83 EC 1E
        push    si                              ; 56
        cmp     word ptr [bp + 0x12], -3        ; 83 7E 12 FD
        jne     L_223B                          ; 75 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_250D                          ; E9 D2 02
;   [conditional branch target (if/else)] L_223B
L_223B:
        cmp     word ptr [bp + 0x12], 3         ; 83 7E 12 03
        je      L_2278                          ; 74 37
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_2253                          ; 74 09
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 2                           ; 05 02 00
        jmp     L_2259                          ; EB 06
;   [conditional branch target (if/else)] L_2253
L_2253:
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     dx, word ptr [bp + 0x16]        ; 8B 56 16
;   [unconditional branch target] L_2259
L_2259:
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
        jmp     L_250D                          ; E9 95 02
;   [conditional branch target (if/else)] L_2278
L_2278:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jne     L_2286                          ; 75 05
;   [loop start] L_2281
L_2281:
        sub     ax, ax                          ; 2B C0
        jmp     L_250D                          ; E9 87 02
;   [conditional branch target (if/else)] L_2286
L_2286:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr es:[bx + 0x5e]     ; 26 8B 47 5E
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr es:[bx + 0x34]     ; 26 8B 47 34
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x10]            ; FF 76 F0
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x102                       ; B8 02 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A 3E 24 00 00 [FIXUP]
        push    ax                              ; 50
        call    far KERNEL.LOADRESOURCE         ; 9A 63 24 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        or      ax, ax                          ; 0B C0
        je      L_2281                          ; 74 C6
        push    ax                              ; 50
        call    far KERNEL.LOCKRESOURCE         ; 9A 79 24 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0x1e], 0x540     ; C7 46 E2 40 05
        mov     word ptr [bp - 0xe], 0xffff     ; C7 46 F2 FF FF
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
;   [loop start] L_22D6
L_22D6:
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        test    word ptr [bx], ax               ; 85 07
        jne     L_22E3                          ; 75 03
        jmp     L_2405                          ; E9 22 01
;   [conditional branch target (if/else)] L_22E3
L_22E3:
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0x11]     ; 26 8A 47 11
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        and     si, 0xf                         ; 81 E6 0F 00
        je      L_230E                          ; 74 15
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx + 0x18]     ; 26 8A 47 18
        and     ax, 0xf                         ; 25 0F 00
        lea     cx, [si - 1]                    ; 8D 4C FF
        cmp     ax, cx                          ; 3B C1
        je      L_230E                          ; 74 04
        add     byte ptr [bp - 9], 8            ; 80 46 F7 08
;   [conditional branch target (if/else)] L_230E
L_230E:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0x11]     ; 26 8A 47 11
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        and     si, 0xf0                        ; 81 E6 F0 00
        je      L_2331                          ; 74 12
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx + 0x18]     ; 26 8A 47 18
        and     ax, 0xf0                        ; 25 F0 00
        cmp     ax, si                          ; 3B C6
        je      L_2331                          ; 74 04
        add     byte ptr [bp - 9], 4            ; 80 46 F7 04
;   [conditional branch target (if/else)] L_2331
L_2331:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_2858                          ; E8 19 05
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        mov     cl, byte ptr [bx + 2]           ; 8A 4F 02
        sub     ch, ch                          ; 2A ED
        cmp     cx, ax                          ; 3B C8
        je      L_234F                          ; 74 04
        add     byte ptr [bp - 9], 0x20         ; 80 46 F7 20
;   [conditional branch target (if/else)] L_234F
L_234F:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     si, word ptr es:[bx]            ; 26 8B 37
        or      si, si                          ; 0B F6
        je      L_236E                          ; 74 15
        or      si, si                          ; 0B F6
        jge     L_2371                          ; 7D 14
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx + 0xa]      ; 26 8B 47 0A
        mov     cx, si                          ; 8B CE
        neg     cx                              ; F7 D9
        add     ax, cx                          ; 03 C1
        mov     si, ax                          ; 8B F0
        jmp     L_2371                          ; EB 03
;   [conditional branch target (if/else)] L_236E
L_236E:
        mov     si, 0x32                        ; BE 32 00
;   [branch target] L_2371
L_2371:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        sub     si, word ptr es:[bx + 0x16]     ; 26 2B 77 16
        or      si, si                          ; 0B F6
        jle     L_2382                          ; 7E 06
        mov     ax, si                          ; 8B C6
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        jmp     L_2388                          ; EB 06
;   [conditional branch target (if/else)] L_2382
L_2382:
        mov     ax, si                          ; 8B C6
        neg     ax                              ; F7 D8
        mov     cl, 4                           ; B1 04
;   [unconditional branch target] L_2388
L_2388:
        shl     ax, cl                          ; D3 E0
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     si, word ptr es:[bx + 2]        ; 26 8B 77 02
        or      si, si                          ; 0B F6
        jne     L_239B                          ; 75 03
        mov     si, 0x1e                        ; BE 1E 00
;   [conditional branch target (if/else)] L_239B
L_239B:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        sub     si, word ptr es:[bx + 0x19]     ; 26 2B 77 19
        je      L_23B3                          ; 74 0F
        or      si, si                          ; 0B F6
        jle     L_23AC                          ; 7E 04
        mov     ax, si                          ; 8B C6
        jmp     L_23B0                          ; EB 04
;   [conditional branch target (if/else)] L_23AC
L_23AC:
        mov     ax, si                          ; 8B C6
        neg     ax                              ; F7 D8
;   [unconditional branch target] L_23B0
L_23B0:
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
;   [conditional branch target (if/else)] L_23B3
L_23B3:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx + 0xe]      ; 26 8A 47 0E
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     byte ptr es:[bx + 0xa], al      ; 26 38 47 0A
        je      L_23C7                          ; 74 04
        add     word ptr [bp - 0xa], 0x10       ; 83 46 F6 10
;   [conditional branch target (if/else)] L_23C7
L_23C7:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     si, word ptr es:[bx + 8]        ; 26 8B 77 08
        or      si, si                          ; 0B F6
        jne     L_23D5                          ; 75 03
        mov     si, 0x190                       ; BE 90 01
;   [conditional branch target (if/else)] L_23D5
L_23D5:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        sub     si, word ptr es:[bx + 0x11]     ; 26 2B 77 11
        je      L_23F1                          ; 74 13
        or      si, si                          ; 0B F6
        jle     L_23E6                          ; 7E 04
        mov     ax, si                          ; 8B C6
        jmp     L_23EA                          ; EB 04
;   [conditional branch target (if/else)] L_23E6
L_23E6:
        mov     ax, si                          ; 8B C6
        neg     ax                              ; F7 D8
;   [unconditional branch target] L_23EA
L_23EA:
        ; constant WM_SIZE
        mov     cl, 5                           ; B1 05
        sar     ax, cl                          ; D3 F8
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
;   [conditional branch target (if/else)] L_23F1
L_23F1:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jae     L_2405                          ; 73 0C
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
;   [branch target] L_2405
L_2405:
        inc     word ptr [bp - 0x14]            ; FF 46 EC
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        add     word ptr [bp - 0x1e], 6         ; 83 46 E2 06
        add     word ptr [bp - 6], 0x34         ; 83 46 FA 34
        cmp     word ptr [bp - 0x14], 0x19      ; 83 7E EC 19
        jge     L_241C                          ; 7D 03
        jmp     L_22D6                          ; E9 BA FE
;   [conditional branch target (if/else)] L_241C
L_241C:
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A FE 24 00 00 [FIXUP]
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far KERNEL.FREERESOURCE         ; 9A 06 25 00 00 [FIXUP]
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     dx, dx                          ; 2B D2
        inc     ax                              ; 40
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x101                       ; B8 01 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A 75 25 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    ax                              ; 50
        call    far KERNEL.SIZEOFRESOURCE       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        jne     L_245C                          ; 75 03
        jmp     L_250A                          ; E9 AE 00
;   [conditional branch target (if/else)] L_245C
L_245C:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far KERNEL.LOADRESOURCE         ; 9A 85 25 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        or      ax, ax                          ; 0B C0
        jne     L_2471                          ; 75 03
        jmp     L_2281                          ; E9 10 FE
;   [conditional branch target (if/else)] L_2471
L_2471:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
        call    far KERNEL.LOCKRESOURCE         ; 9A 92 25 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    L_0039                          ; E8 B4 DB
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr es:[bx + 0x33], ax     ; 26 89 47 33
        mov     ax, 6                           ; B8 06 00
        mul     word ptr [bp - 8]               ; F7 66 F8
        mov     bx, ax                          ; 8B D8
        cmp     word ptr [bx + 0x540], 4        ; 83 BF 40 05 04
        jne     L_24A3                          ; 75 05
        mov     ax, 0x5e6                       ; B8 E6 05
        jmp     L_24A6                          ; EB 03
;   [conditional branch target (if/else)] L_24A3
L_24A3:
        mov     ax, 0x6a6                       ; B8 A6 06
;   [unconditional branch target] L_24A6
L_24A6:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x35], ax     ; 26 89 47 35
        push    es                              ; 06
        push    bx                              ; 53
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_2677                          ; E8 BB 01
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx + 8], 0x2bc     ; 26 81 7F 08 BC 02
        jne     L_24D0                          ; 75 09
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 8], 0x2bc     ; 26 C7 47 08 BC 02
;   [conditional branch target (if/else)] L_24D0
L_24D0:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xb]      ; 26 8A 47 0B
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx + 0xb], al      ; 26 88 47 0B
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xc]      ; 26 8A 47 0C
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx + 0xc], al      ; 26 88 47 0C
        or      al, al                          ; 0A C0
        je      L_24F5                          ; 74 05
        or      byte ptr es:[bx + 0x10], 0x10   ; 26 80 4F 10 10
;   [conditional branch target (if/else)] L_24F5
L_24F5:
        mov     word ptr [bp - 0x14], 1         ; C7 46 EC 01 00
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 75 1D 00 00 [FIXUP]
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far KERNEL.FREERESOURCE         ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_250A
L_250A:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
;   [unconditional branch target] L_250D
L_250D:
        pop     si                              ; 5E
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
        sub     sp, 0x66                        ; 83 EC 66
        push    si                              ; 56
        mov     word ptr [bp - 8], 0xffff       ; C7 46 F8 FF FF
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jne     L_253B                          ; 75 06
;   [loop start] L_2535
L_2535:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_266B                          ; E9 30 01
;   [conditional branch target (if/else)] L_253B
L_253B:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        or      ax, word ptr [bp + 0x10]        ; 0B 46 10
        je      L_2557                          ; 74 14
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_2557                          ; 74 0B
        push    es                              ; 06
        push    bx                              ; 53
        call    L_2858                          ; E8 07 03
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        inc     ax                              ; 40
        je      L_2535                          ; 74 DE
;   [conditional branch target (if/else)] L_2557
L_2557:
        mov     word ptr [bp - 0x46], 0xffff    ; C7 46 BA FF FF
        mov     word ptr [bp - 0x44], 0x540     ; C7 46 BC 40 05
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        push    word ptr es:[bx + 0x5e]         ; 26 FF 77 5E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x102                       ; B8 02 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        push    word ptr es:[bx + 0x5e]         ; 26 FF 77 5E
        push    ax                              ; 50
        call    far KERNEL.LOADRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        or      ax, ax                          ; 0B C0
        je      L_2535                          ; 74 A5
        push    ax                              ; 50
        call    far KERNEL.LOCKRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0x40], 0         ; C7 46 C0 00 00
;   [loop start] L_25A1
L_25A1:
        cmp     word ptr [bp - 0x40], 0x19      ; 83 7E C0 19
        jl      L_25AA                          ; 7C 03
        jmp     L_2658                          ; E9 AE 00
;   [conditional branch target (if/else)] L_25AA
L_25AA:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     si, word ptr [bp - 0x44]        ; 8B 76 BC
        mov     ax, word ptr [si]               ; 8B 04
        test    word ptr es:[bx + 0x34], ax     ; 26 85 47 34
        jne     L_25C8                          ; 75 10
;   [loop start] L_25B8
L_25B8:
        inc     word ptr [bp - 0x40]            ; FF 46 C0
        mov     ax, word ptr [bp - 0x44]        ; 8B 46 BC
        add     word ptr [bp - 0x44], 6         ; 83 46 BC 06
        add     word ptr [bp - 6], 0x34         ; 83 46 FA 34
        jmp     L_25A1                          ; EB D9
;   [conditional branch target (if/else)] L_25C8
L_25C8:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jl      L_25DB                          ; 7C 0D
        mov     bx, word ptr [bp - 0x44]        ; 8B 5E BC
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        sub     ah, ah                          ; 2A E4
        cmp     ax, word ptr [bp - 8]           ; 3B 46 F8
        je      L_25EE                          ; 74 13
;   [conditional branch target (if/else)] L_25DB
L_25DB:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jge     L_25B8                          ; 7D D7
        mov     bx, word ptr [bp - 0x44]        ; 8B 5E BC
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        sub     ah, ah                          ; 2A E4
        cmp     ax, word ptr [bp - 0x46]        ; 3B 46 BA
        je      L_25B8                          ; 74 CA
;   [conditional branch target (if/else)] L_25EE
L_25EE:
        mov     bx, word ptr [bp - 0x44]        ; 8B 5E BC
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 0x3a]                 ; 8D 46 C6
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_2677                          ; E8 6C 00
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x66]                 ; 8D 46 9A
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_2677                          ; E8 5A 00
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     bx, word ptr [bp - 0x44]        ; 8B 5E BC
        mov     bl, byte ptr [bx + 2]           ; 8A 5F 02
        sub     bh, bh                          ; 2A FF
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x5d6]       ; 8B 87 D6 05
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FD 17 00 00 [FIXUP]
        lea     ax, [bp - 0x3a]                 ; 8D 46 C6
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x66]                 ; 8D 46 9A
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bp + 0xa]                      ; FF 5E 0A
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        or      ax, ax                          ; 0B C0
        je      L_2658                          ; 74 03
        jmp     L_25B8                          ; E9 60 FF
;   [branch target] L_2658
L_2658:
        push    word ptr [bp - 0x42]            ; FF 76 BE
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 93 29 00 00 [FIXUP]
        push    word ptr [bp - 0x42]            ; FF 76 BE
        call    far KERNEL.FREERESOURCE         ; 9A 28 24 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x3c]        ; 8B 46 C4
;   [unconditional branch target] L_266B
L_266B:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
;   [sub-routine] L_2677
L_2677:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 1                           ; 3D 01 00
        je      L_2692                          ; 74 10
        cmp     ax, 2                           ; 3D 02 00
        jne     L_268A                          ; 75 03
        jmp     L_2762                          ; E9 D8 00
;   [conditional branch target (if/else)] L_268A
L_268A:
        cmp     ax, 5                           ; 3D 05 00
        je      L_2706                          ; 74 77
        jmp     L_2852                          ; E9 C0 01
;   [conditional branch target (if/else)] L_2692
L_2692:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        mov     byte ptr es:[bx + 0xb], 0       ; 26 C6 47 0B 00
        mov     byte ptr es:[bx + 0xc], 0       ; 26 C6 47 0C 00
        mov     byte ptr es:[bx + 0xd], 0       ; 26 C6 47 0D 00
        mov     byte ptr es:[bx + 0xe], 2       ; 26 C6 47 0E 02
        mov     byte ptr es:[bx + 0xf], 1       ; 26 C6 47 0F 01
        mov     byte ptr es:[bx + 0x10], 0      ; 26 C6 47 10 00
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0x18]     ; 26 8A 47 18
        inc     al                              ; FE C0
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0x11], al     ; 26 88 47 11
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0xe]      ; 26 8A 47 0E
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0xa], al      ; 26 88 47 0A
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x11]     ; 26 8B 47 11
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        jmp     L_2852                          ; E9 4C 01
;   [conditional branch target (if/else)] L_2706
L_2706:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x11]     ; 26 8B 47 11
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0xe]      ; 26 8A 47 0E
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0xa], al      ; 26 88 47 0A
        mov     byte ptr es:[bx + 0xd], 2       ; 26 C6 47 0D 02
        mov     byte ptr es:[bx + 0xe], 1       ; 26 C6 47 0E 01
        mov     word ptr es:[bx + 0xf], 1       ; 26 C7 47 0F 01 00
        mov     word ptr es:[bx + 0x11], 0      ; 26 C7 47 11 00 00
        jmp     L_2852                          ; E9 F0 00
;   [unconditional branch target] L_2762
L_2762:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        sub     ax, word ptr es:[bx + 8]        ; 26 2B 47 08
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0xa]      ; 26 8B 47 0A
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x1b]     ; 26 8B 47 1B
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0xe]      ; 26 8A 47 0E
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0x10], al     ; 26 88 47 10
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x11]     ; 26 8B 47 11
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0xe], ax      ; 26 89 47 0E
        mov     byte ptr es:[bx + 0x11], 0      ; 26 C6 47 11 00
        mov     byte ptr es:[bx + 0x12], 0      ; 26 C6 47 12 00
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0x1d]     ; 26 8A 47 1D
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0x13], al     ; 26 88 47 13
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0x1e]     ; 26 8A 47 1E
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0x14], al     ; 26 88 47 14
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0x1f]     ; 26 8A 47 1F
        add     al, byte ptr es:[bx + 0x1d]     ; 26 02 47 1D
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0x15], al     ; 26 88 47 15
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0x20]     ; 26 8A 47 20
        add     al, byte ptr es:[bx + 0x1d]     ; 26 02 47 1D
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0x16], al     ; 26 88 47 16
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0x18]     ; 26 8A 47 18
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0x17], al     ; 26 88 47 17
        mov     byte ptr es:[bx + 0x18], 0      ; 26 C6 47 18 00
        mov     word ptr es:[bx + 0x19], 0      ; 26 C7 47 19 00 00
        mov     word ptr es:[bx + 0x1b], 0x12c  ; 26 C7 47 1B 2C 01
        mov     word ptr es:[bx + 0x1d], 0x12c  ; 26 C7 47 1D 2C 01
;   [fall-through exit] L_2852
L_2852:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
;   [sub-routine] L_2858
L_2858:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
;   [loop start] L_2863
L_2863:
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lpsz1 (high/segment)
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg lpsz1 (low/offset)
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x5d6]       ; 8B 87 D6 05
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A 9B 17 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_2882                          ; 75 05
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_288E                          ; EB 0C
;   [conditional branch target (if/else)] L_2882
L_2882:
        inc     word ptr [bp - 2]               ; FF 46 FE
        cmp     word ptr [bp - 2], 8            ; 83 7E FE 08
        jl      L_2863                          ; 7C D8
        mov     ax, 0xffff                      ; B8 FF FF
;   [fall-through exit] L_288E
L_288E:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
;   [sub-routine] L_2894
L_2894:
        ;   = cProc <14> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
;   [loop start] L_28AC
L_28AC:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jge     L_28CA                          ; 7D 16
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xe], al         ; 88 46 F2
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0x1d], al     ; 26 38 47 1D
        ja      L_28CA                          ; 77 04
        cmp     al, 0x7f                        ; 3C 7F
        jb      L_28DB                          ; 72 11
;   [conditional branch target (if/else)] L_28CA
L_28CA:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jne     L_28E3                          ; 75 11
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        jmp     L_299D                          ; E9 C2 00
;   [conditional branch target (if/else)] L_28DB
L_28DB:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_28AC                          ; EB C9
;   [conditional branch target (if/else)] L_28E3
L_28E3:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A 9E 1C 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_2900                          ; 75 08
        sub     ax, ax                          ; 2B C0
        mov     dx, 0x8000                      ; BA 00 80
        jmp     L_299D                          ; E9 9D 00
;   [conditional branch target (if/else)] L_2900
L_2900:
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A AB 1C 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        jmp     L_2987                          ; EB 66
;   [loop start] L_2921
L_2921:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xe], al         ; 88 46 F2
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        les     si, ptr [bp - 8]                ; C4 76 F8
        mov     byte ptr es:[bx + si], al       ; 26 88 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     al, byte ptr es:[bx + 0x1d]     ; 26 3A 47 1D
        jb      L_2944                          ; 72 08
        cmp     al, 0x7f                        ; 3C 7F
        jb      L_2958                          ; 72 18
        cmp     al, 0xa0                        ; 3C A0
        jae     L_2958                          ; 73 14
;   [conditional branch target (if/else)] L_2944
L_2944:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx + 0x1f]     ; 26 8A 47 1F
        add     al, byte ptr es:[bx + 0x1d]     ; 26 02 47 1D
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        les     si, ptr [bp - 8]                ; C4 76 F8
        mov     byte ptr es:[bx + si], al       ; 26 88 00
;   [conditional branch target (if/else)] L_2958
L_2958:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        les     si, ptr [bp - 8]                ; C4 76 F8
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        mov     byte ptr [bp - 0xe], al         ; 88 46 F2
        cmp     al, 0xa0                        ; 3C A0
        jb      L_2981                          ; 72 19
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x35]         ; 26 FF 77 35
        call    L_21F4                          ; E8 7C F8
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        les     si, ptr [bp - 8]                ; C4 76 F8
        mov     byte ptr es:[bx + si], al       ; 26 88 00
;   [conditional branch target (if/else)] L_2981
L_2981:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [unconditional branch target] L_2987
L_2987:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jl      L_2921                          ; 7C 92
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 20 24 00 00 [FIXUP]
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
;   [fall-through exit] L_299D
L_299D:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
;   [sub-routine] L_29A4
L_29A4:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        push    bx                              ; 53
        xor     di, di                          ; 33 FF
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jge     L_29C5                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 4], dx           ; 89 56 04
;   [conditional branch target (if/else)] L_29C5
L_29C5:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jge     L_29DE                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 8], dx           ; 89 56 08
;   [conditional branch target (if/else)] L_29DE
L_29DE:
        or      ax, ax                          ; 0B C0
        jne     L_29F8                          ; 75 16
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        xor     dx, dx                          ; 33 D2
        div     cx                              ; F7 F1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        div     cx                              ; F7 F1
        mov     dx, bx                          ; 8B D3
        jmp     L_2A33                          ; EB 3C
        nop                                     ; 90
;   [conditional branch target (if/else)] L_29F8
L_29F8:
        mov     bx, ax                          ; 8B D8
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
;   [loop start] L_2A03
L_2A03:
        shr     bx, 1                           ; D1 EB
        rcr     cx, 1                           ; D1 D9
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        or      bx, bx                          ; 0B DB
        jne     L_2A03                          ; 75 F4
        div     cx                              ; F7 F1
        mov     si, ax                          ; 8B F0
        xor     dx, dx                          ; 33 D2
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_2ADC                          ; E8 BC 00
        cmp     dx, word ptr [bp + 6]           ; 3B 56 06
        ja      L_2A2C                          ; 77 07
        jb      L_2A2F                          ; 72 08
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jbe     L_2A2F                          ; 76 03
;   [conditional branch target (if/else)] L_2A2C
L_2A2C:
        sub     si, 1                           ; 83 EE 01
;   [conditional branch target (if/else)] L_2A2F
L_2A2F:
        xor     dx, dx                          ; 33 D2
        mov     ax, si                          ; 8B C6
;   [unconditional branch target] L_2A33
L_2A33:
        or      di, di                          ; 0B FF
        je      L_2A3E                          ; 74 07
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
;   [error/early exit] L_2A3E
L_2A3E:
        pop     bx                              ; 5B
        pop     si                              ; 5E
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_2A45
L_2A45:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        xor     bx, bx                          ; 33 DB
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jge     L_2A65                          ; 7D 12
        not     bx                              ; F7 D3
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 4], dx           ; 89 56 04
;   [conditional branch target (if/else)] L_2A65
L_2A65:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jge     L_2A7E                          ; 7D 12
        not     bx                              ; F7 D3
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 8], dx           ; 89 56 08
;   [conditional branch target (if/else)] L_2A7E
L_2A7E:
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        mul     cx                              ; F7 E1
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     si, ax                          ; 8B F0
        mul     cx                              ; F7 E1
        add     di, dx                          ; 03 FA
        xchg    si, ax                          ; 96
        mul     word ptr [bp + 6]               ; F7 66 06
        add     di, ax                          ; 03 F8
        mov     dx, di                          ; 8B D7
        mov     ax, si                          ; 8B C6
        or      bx, bx                          ; 0B DB
        je      L_2AA3                          ; 74 07
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
;   [error/early exit] L_2AA3
L_2AA3:
        pop     si                              ; 5E
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bp + di + 0x2b], bl   ; 00 5B 2B
        les     si, ptr [bp + di + 0x18]        ; C4 73 18
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_2ACD                          ; 77 0F
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_2AC9                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
;   [conditional branch target (if/else)] L_2AC9
L_2AC9:
        mov     sp, ax                          ; 8B E0
        jmp     bx                              ; FF E3
;   [conditional branch target (if/else)] L_2ACD
L_2ACD:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A 14 1D 00 00 [FIXUP]
;   [sub-routine] L_2ADC
L_2ADC:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        mul     cx                              ; F7 E1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     si, ax                          ; 8B F0
        mul     cx                              ; F7 E1
        add     bx, dx                          ; 03 DA
        xchg    si, ax                          ; 96
        mul     word ptr [bp + 6]               ; F7 66 06
        add     bx, ax                          ; 03 D8
        mov     dx, bx                          ; 8B D3
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      008h                            ; 08

HPLASERP_TEXT ENDS

        END
