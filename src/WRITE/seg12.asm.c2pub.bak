; ======================================================================
; WRITE / seg12.asm   (segment 12 of WRITE)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         2
; Total instructions:                  124
; 
; Classification (pass8):
;   C-origin (high+medium):              1
;   ASM-origin (high+medium):            0
;   Unclear:                             1
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     3 (3 unique)
;   Top:
;        1  GETKEYSTATE
;        1  SETCURSOR
;        1  SETFOCUS
; ======================================================================
; AUTO-GENERATED from original WRITE segment 12
; segment_size=742 bytes, flags=0xf170
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
        sub     sp, 6                           ; 83 EC 06
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [bp + 0xc], 0x300      ; 81 7E 0C 00 03
        jb      L_001F                          ; 72 03
        jmp     L_0139                          ; E9 1A 01
;   [conditional branch target (if/else)] L_001F
L_001F:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 8                           ; 3D 08 00
        jne     L_002A                          ; 75 03
        jmp     L_00D8                          ; E9 AE 00
;   [conditional branch target (if/else)] L_002A
L_002A:
        jbe     L_002F                          ; 76 03
        jmp     L_00E5                          ; E9 B6 00
;   [conditional branch target (if/else)] L_002F
L_002F:
        cmp     ax, 1                           ; 3D 01 00
        je      L_0069                          ; 74 35
        cmp     ax, 5                           ; 3D 05 00
        je      L_007A                          ; 74 41
        cmp     ax, 7                           ; 3D 07 00
        jne     L_0041                          ; 75 03
        jmp     L_00CB                          ; E9 8A 00
;   [conditional branch target (if/else)] L_0041
L_0041:
        jmp     L_00F1                          ; E9 AD 00
;   [loop start] L_0044
L_0044:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0189                          ; E8 31 01
        jmp     L_010B                          ; E9 B0 00
;   [loop start] L_005B
L_005B:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_025E                          ; E8 F8 01
        jmp     L_010B                          ; E9 A2 00
;   [conditional branch target (if/else)] L_0069
L_0069:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_135                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_010B                          ; E9 91 00
;   [conditional branch target (if/else)] L_007A
L_007A:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_134                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_010B                          ; EB 7E
;   [loop start] L_008D
L_008D:
        call    far _entry_133                  ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_132                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_010B                          ; EB 6F
;   [loop start] L_009C
L_009C:
        cmp     word ptr [0x704], 0             ; 83 3E 04 07 00
        je      L_00BF                          ; 74 1C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hDC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0x1084]               ; FF 36 84 10
        ;   ^ arg nWidth
        push    word ptr [0x108a]               ; FF 36 8A 10
        ;   ^ arg nHeight
        push    word ptr [0x790]                ; FF 36 90 07
        ;   ^ arg dwRop (high/segment)
        push    word ptr [0x78e]                ; FF 36 8E 07
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_00BF
L_00BF:
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_010B                          ; EB 40
;   [unconditional branch target] L_00CB
L_00CB:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_131                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_010B                          ; EB 33
;   [unconditional branch target] L_00D8
L_00D8:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_130                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_010B                          ; EB 26
;   [unconditional branch target] L_00E5
L_00E5:
        cmp     ax, 0x14                        ; 3D 14 00
        je      L_009C                          ; 74 B2
        ja      L_0122                          ; 77 36
        cmp     ax, 0xf                         ; 3D 0F 00
        je      L_008D                          ; 74 9C
;   [loop start (also forward branch)] L_00F1
L_00F1:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg wMsg
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg wParam
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lParam (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lParam (low/offset)
        ; --> DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.DEFWINDOWPROC          ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_0105
L_0105:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
;   [loop start (also forward branch)] L_010B
L_010B:
        cmp     word ptr [0x44], 0              ; 83 3E 44 00 00
        je      L_011A                          ; 74 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_53                   ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_011A
L_011A:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        jmp     L_017E                          ; EB 5C
;   [conditional branch target (if/else)] L_0122
L_0122:
        cmp     ax, 0x113                       ; 3D 13 01
        jne     L_012A                          ; 75 03
        jmp     L_005B                          ; E9 31 FF
;   [conditional branch target (if/else)] L_012A
L_012A:
        cmp     ax, 0x200                       ; 3D 00 02
        jb      L_00F1                          ; 72 C2
        cmp     ax, 0x203                       ; 3D 03 02
        ja      L_0137                          ; 77 03
        jmp     L_0044                          ; E9 0D FF
;   [conditional branch target (if/else)] L_0137
L_0137:
        jmp     L_00F1                          ; EB B8
;   [unconditional branch target] L_0139
L_0139:
        cmp     word ptr [bp + 0xc], 0x400      ; 81 7E 0C 00 04
        jae     L_0157                          ; 73 17
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_129                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_010B                          ; 75 B6
        jmp     L_00F1                          ; EB 9A
;   [conditional branch target (if/else)] L_0157
L_0157:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x424                       ; 3D 24 04
        je      L_0166                          ; 74 07
        cmp     ax, 0x425                       ; 3D 25 04
        je      L_0171                          ; 74 0D
        jmp     L_00F1                          ; EB 8B
;   [conditional branch target (if/else)] L_0166
L_0166:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_128                  ; 9A FF FF 00 00 [FIXUP]
        cdq                                     ; 99
        jmp     L_0105                          ; EB 94
;   [conditional branch target (if/else)] L_0171
L_0171:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_127                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_010B                          ; EB 8D
;   [unconditional branch target] L_017E
L_017E:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Mixed routine using: GETKEYSTATE, SETCURSOR, SETFOCUS.

;-------------------------------------------------------------------------
; sub_0189   offset=0x0189  size=75 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GETKEYSTATE
;   SETCURSOR
;   SETFOCUS
;-------------------------------------------------------------------------
;   [sub-routine] L_0189
L_0189:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [0x64], 0              ; 83 3E 64 00 00
        je      L_01A9                          ; 74 0C
        push    word ptr [0xc32]                ; FF 36 32 0C
;   [loop start] L_01A1
L_01A1:
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0253                          ; E9 AA 00
;   [conditional branch target (if/else)] L_01A9
L_01A9:
        cmp     word ptr [bp + 0xc], 0x200      ; 81 7E 0C 00 02
        jne     L_01DD                          ; 75 2D
        cmp     word ptr [0x62], 0              ; 83 3E 62 00 00
        jne     L_01BA                          ; 75 03
        jmp     L_0253                          ; E9 99 00
;   [conditional branch target (if/else)] L_01BA
L_01BA:
        mov     ax, word ptr [0x108c]           ; A1 8C 10
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jge     L_01C7                          ; 7D 05
        mov     ax, word ptr [0x1240]           ; A1 40 12
        jmp     L_01D7                          ; EB 10
;   [conditional branch target (if/else)] L_01C7
L_01C7:
        mov     ax, word ptr [0x1112]           ; A1 12 11
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jle     L_01D4                          ; 7E 05
        mov     ax, word ptr [0x1bc6]           ; A1 C6 1B
        jmp     L_01D7                          ; EB 03
;   [conditional branch target (if/else)] L_01D4
L_01D4:
        mov     ax, word ptr [0xa68]            ; A1 68 0A
;   [unconditional branch target] L_01D7
L_01D7:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        jmp     L_01A1                          ; EB C4
;   [conditional branch target (if/else)] L_01DD
L_01DD:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        and     ax, 4                           ; 25 04 00
        mov     word ptr [0x2ca], ax            ; A3 CA 02
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        and     ax, 8                           ; 25 08 00
        mov     word ptr [0x2cc], ax            ; A3 CC 02
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_0201                          ; 7D 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0203                          ; EB 02
;   [conditional branch target (if/else)] L_0201
L_0201:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0203
L_0203:
        mov     word ptr [0x2ce], ax            ; A3 CE 02
        cmp     word ptr [bp + 0xc], 0x203      ; 81 7E 0C 03 02
        jne     L_0212                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0214                          ; EB 02
;   [conditional branch target (if/else)] L_0212
L_0212:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0214
L_0214:
        mov     word ptr [0x796], ax            ; A3 96 07
        cmp     word ptr [bp + 0xc], 0x202      ; 81 7E 0C 02 02
        jne     L_023C                          ; 75 1E
        cmp     word ptr [0x5e], 0              ; 83 3E 5E 00 00
        je      L_0253                          ; 74 2E
        cmp     word ptr [0x7ae], 0             ; 83 3E AE 07 00
        jne     L_0253                          ; 75 27
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x5e], 0              ; C7 06 5E 00 00 00
        jmp     L_0253                          ; EB 17
;   [conditional branch target (if/else)] L_023C
L_023C:
        mov     word ptr [0x7c], 0              ; C7 06 7C 00 00 00
        mov     word ptr [0x5e], 1              ; C7 06 5E 00 01 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_126                  ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_0253
L_0253:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Pure computation / dispatcher (49 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_025E   offset=0x025E  size=49 instr  segment=seg12.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_025E
L_025E:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [0x10f4]           ; A1 F4 10
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jne     L_02DC                          ; 75 6C
        cmp     word ptr [0x7ae], 0             ; 83 3E AE 07 00
        je      L_02DC                          ; 74 65
        test    byte ptr [0x107e], 1            ; F6 06 7E 10 01
        jne     L_02DC                          ; 75 5E
        cmp     word ptr [0x7ac], 0             ; 83 3E AC 07 00
        je      L_0292                          ; 74 0D
        mov     word ptr [0x7ac], 0             ; C7 06 AC 07 00 00
        cmp     word ptr [0xf28], 0             ; 83 3E 28 0F 00
        jne     L_02DC                          ; 75 4A
;   [conditional branch target (if/else)] L_0292
L_0292:
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [0x1be4], dx           ; 39 16 E4 1B
        jne     L_02DC                          ; 75 3D
        cmp     word ptr [0x1be2], ax           ; 39 06 E2 1B
        jne     L_02DC                          ; 75 37
        mov     ax, word ptr [0xc2c]            ; A1 2C 0C
        sub     ax, word ptr [0x1290]           ; 2B 06 90 12
        cmp     ax, word ptr [0x108a]           ; 3B 06 8A 10
        jge     L_02DC                          ; 7D 2A
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        cmp     word ptr [0xf28], 0             ; 83 3E 28 0F 00
        jne     L_02CE                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_02D0                          ; EB 02
;   [conditional branch target (if/else)] L_02CE
L_02CE:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_02D0
L_02D0:
        push    ax                              ; 50
        call    far _entry_125                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x7ac], 0             ; C7 06 AC 07 00 00
;   [conditional branch target (if/else)] L_02DC
L_02DC:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      004h                            ; 04

WRITE_TEXT ENDS

        END
