; ======================================================================
; CALENDAR / seg1.asm   (segment 1 of CALENDAR)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        16
; Total instructions:                  744
; 
; Classification (pass8):
;   C-origin (high+medium):              1
;   ASM-origin (high+medium):            4
;   Unclear:                            11
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     24 (23 unique)
;   Top:
;        2  MESSAGEBEEP
;        1  DISPATCHMESSAGE
;        1  GETMESSAGE
;        1  TRANSLATEACCELERATOR
;        1  TRANSLATEMESSAGE
;        1  GETKEYSTATE
;        1  SENDMESSAGE
;        1  FLASHWINDOW
; ======================================================================
; AUTO-GENERATED from original CALENDAR segment 1
; segment_size=1733 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

CALENDAR_TEXT SEGMENT BYTE PUBLIC 'CODE'

; Description (heuristic):
;   Mixed routine using: DISPATCHMESSAGE, GETMESSAGE, TRANSLATEACCELERATOR (+1 more).

;-------------------------------------------------------------------------
; sub_0000   offset=0x0000  size=46 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
;   GETMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax) -> BOOL
;   TRANSLATEACCELERATOR
;   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
;
; Near calls (internal): L_0070, L_03EF, L_0650
;-------------------------------------------------------------------------
L_0000:
        call    L_03EF                          ; E8 EC 03
        or      word ptr [di], ax               ; 09 05
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_14                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0056                          ; 75 39
        sub     ax, ax                          ; 2B C0
        jmp     L_006F                          ; EB 4E
;   [loop start] L_0021
L_0021:
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        call    L_0070                          ; E8 48 00
        or      ax, ax                          ; 0B C0
        jne     L_0056                          ; 75 2A
        push    word ptr [0x262]                ; FF 36 62 02
        push    word ptr [0x450]                ; FF 36 50 04
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.TRANSLATEACCELERATOR   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0056                          ; 75 14
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        ; --> TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        ; --> DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0056
L_0056:
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hWnd
        push    ax                              ; 50
        ;   ^ arg wMsgFilterMin
        push    ax                              ; 50
        ;   ^ arg wMsgFilterMax
        ; --> GETMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax) -> BOOL
        call    far USER.GETMESSAGE             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0021                          ; 75 B8
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    L_0650                          ; E8 E1 05
;   [fall-through exit] L_006F
L_006F:
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: GETKEYSTATE, SENDMESSAGE.

;-------------------------------------------------------------------------
; sub_0070   offset=0x0070  size=98 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   GETKEYSTATE
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;
; Near calls (internal): L_016F, L_03EF
;-------------------------------------------------------------------------
;   [sub-routine] L_0070
L_0070:
        call    L_03EF                          ; E8 7C 03
        add     al, byte ptr [bx + di]          ; 02 01
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     si, word ptr [bx + 4]           ; 8B 77 04
        cmp     word ptr [bx + 2], 0x113        ; 81 7F 02 13 01
        jne     L_0090                          ; 75 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_016F                          ; E8 E5 00
;   [loop start] L_008A
L_008A:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_016E                          ; E9 DE 00
;   [conditional branch target (if/else)] L_0090
L_0090:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        cmp     word ptr [bx + 2], 0x100        ; 81 7F 02 00 01
        je      L_009D                          ; 74 03
        jmp     L_016C                          ; E9 CF 00
;   [conditional branch target (if/else)] L_009D
L_009D:
        mov     ax, word ptr [0x2e8]            ; A1 E8 02
        cmp     word ptr [bx], ax               ; 39 07
        jne     L_00C4                          ; 75 20
        cmp     si, 9                           ; 83 FE 09
        je      L_00AC                          ; 74 03
        jmp     L_016C                          ; E9 C0 00
;   [conditional branch target (if/else)] L_00AC
L_00AC:
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        jne     L_00BE                          ; 75 0B
        push    word ptr [0x2dc]                ; FF 36 DC 02
;   [loop start] L_00B7
L_00B7:
        call    far _entry_15                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_008A                          ; EB CC
;   [conditional branch target (if/else)] L_00BE
L_00BE:
        push    word ptr [0x27a]                ; FF 36 7A 02
        jmp     L_00B7                          ; EB F3
;   [conditional branch target (if/else)] L_00C4
L_00C4:
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        jne     L_00CE                          ; 75 03
        jmp     L_016C                          ; E9 9E 00
;   [conditional branch target (if/else)] L_00CE
L_00CE:
        mov     ax, si                          ; 8B C6
        cmp     ax, 0xd                         ; 3D 0D 00
        je      L_00DF                          ; 74 0A
        ja      L_0155                          ; 77 7E
        cmp     ax, 9                           ; 3D 09 00
        je      L_014E                          ; 74 72
        jmp     L_016C                          ; E9 8D 00
;   [loop start (also forward branch)] L_00DF
L_00DF:
        mov     ax, word ptr [0x448]            ; A1 48 04
        cmp     word ptr [0x24a], ax            ; 39 06 4A 02
        jne     L_00F6                          ; 75 0E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_18                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_008A                          ; EB 94
;   [conditional branch target (if/else)] L_00F6
L_00F6:
        mov     ax, word ptr [0x24a]            ; A1 4A 02
        inc     ax                              ; 40
;   [loop start] L_00FA
L_00FA:
        push    ax                              ; 50
        call    far _entry_17                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_008A                          ; EB 88
;   [loop start] L_0102
L_0102:
        cmp     word ptr [0x24a], 0             ; 83 3E 4A 02 00
        jne     L_0119                          ; 75 10
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_16                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_008A                          ; E9 71 FF
;   [conditional branch target (if/else)] L_0119
L_0119:
        mov     ax, word ptr [0x24a]            ; A1 4A 02
        dec     ax                              ; 48
        jmp     L_00FA                          ; EB DB
;   [loop start] L_011F
L_011F:
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jl      L_016C                          ; 7C 40
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ; constant WM_VSCROLL
        mov     ax, 0x115                       ; B8 15 01
        push    ax                              ; 50
        cmp     si, 0x22                        ; 83 FE 22
        jne     L_013E                          ; 75 05
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        jmp     L_0141                          ; EB 03
;   [conditional branch target (if/else)] L_013E
L_013E:
        mov     ax, 2                           ; B8 02 00
;   [unconditional branch target] L_0141
L_0141:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        jmp     L_008A                          ; E9 3C FF
;   [conditional branch target (if/else)] L_014E
L_014E:
        push    word ptr [0x2e8]                ; FF 36 E8 02
        jmp     L_00B7                          ; E9 62 FF
;   [conditional branch target (if/else)] L_0155
L_0155:
        cmp     ax, 0x21                        ; 3D 21 00
        jb      L_016C                          ; 72 12
        cmp     ax, 0x22                        ; 3D 22 00
        jbe     L_011F                          ; 76 C0
        cmp     ax, 0x26                        ; 3D 26 00
        je      L_0102                          ; 74 9E
        cmp     ax, 0x28                        ; 3D 28 00
        jne     L_016C                          ; 75 03
        jmp     L_00DF                          ; E9 73 FF
;   [error/early exit] L_016C
L_016C:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_016E
L_016E:
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: FLASHWINDOW, ISICONIC, MESSAGEBEEP (+1 more).

;-------------------------------------------------------------------------
; sub_016F   offset=0x016F  size=117 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=2, ASM=4)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   FLASHWINDOW
;   ISICONIC
;   MESSAGEBEEP
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;
; Near calls (internal): L_02A6, L_036B, L_039C, L_0417
;-------------------------------------------------------------------------
;   [sub-routine] L_016F
L_016F:
        call    L_0417                          ; E8 A5 02
        or      al, byte ptr [bx + di]          ; 0A 01
        cmp     word ptr [0x48], 0              ; 83 3E 48 00 00
        je      L_0188                          ; 74 0D
        push    word ptr [0x262]                ; FF 36 62 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.FLASHWINDOW            ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0188
L_0188:
        cmp     word ptr [0x4a], 0              ; 83 3E 4A 00 00
        je      L_019B                          ; 74 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.MESSAGEBEEP            ; 9A FF FF 00 00 [FIXUP]
        dec     word ptr [0x4a]                 ; FF 0E 4A 00
;   [conditional branch target (if/else)] L_019B
L_019B:
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_039C                          ; E8 F4 01
        mov     ax, word ptr [0x25e]            ; A1 5E 02
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jne     L_01CB                          ; 75 1B
        mov     ax, word ptr [0x250]            ; A1 50 02
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jne     L_01CB                          ; 75 13
        mov     ax, word ptr [0x252]            ; A1 52 02
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jne     L_01CB                          ; 75 0B
        mov     ax, word ptr [0x254]            ; A1 54 02
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jne     L_01CB                          ; 75 03
        jmp     L_02A5                          ; E9 DA 00
;   [conditional branch target (if/else)] L_01CB
L_01CB:
        mov     ax, word ptr [0x25c]            ; A1 5C 02
        mov     dx, word ptr [0x25e]            ; 8B 16 5E 02
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [0x25e], ax            ; A3 5E 02
        push    word ptr [0x262]                ; FF 36 62 02
        call    far USER.ISICONIC               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_01EE                          ; 74 03
        jmp     L_0275                          ; E9 87 00
;   [conditional branch target (if/else)] L_01EE
L_01EE:
        push    word ptr [0x280]                ; FF 36 80 02
        call    far _entry_21                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    ax                              ; 50
        call    far _entry_20                   ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ax                              ; 50
        call    far _entry_19                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     ax, word ptr [0x25c]            ; 3B 06 5C 02
        je      L_0269                          ; 74 57
        mov     word ptr [0x25c], ax            ; A3 5C 02
        mov     di, 0x250                       ; BF 50 02
        lea     si, [bp - 0x14]                 ; 8D 76 EC
        push    ds                              ; 1E
        pop     es                              ; 07
        push    ds                              ; 1E
        push    ss                              ; 16
        pop     ds                              ; 1F
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     ds                              ; 1F
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        jne     L_0269                          ; 75 3E
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, 0x250                       ; B8 50 02
        push    ax                              ; 50
        call    far _entry_23                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x226]            ; A1 26 02
        cmp     word ptr [0x250], ax            ; 39 06 50 02
        jne     L_0249                          ; 75 09
        mov     ax, word ptr [0x22a]            ; A1 2A 02
        cmp     word ptr [0x254], ax            ; 39 06 54 02
        je      L_0259                          ; 74 10
;   [conditional branch target (if/else)] L_0249
L_0249:
        mov     ax, word ptr [0x226]            ; A1 26 02
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jne     L_0269                          ; 75 18
        mov     ax, word ptr [0x22a]            ; A1 2A 02
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jne     L_0269                          ; 75 10
;   [conditional branch target (if/else)] L_0259
L_0259:
        mov     di, 0x2ee                       ; BF EE 02
        mov     si, 0x226                       ; BE 26 02
        push    ds                              ; 1E
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        call    far _entry_22                   ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0269
L_0269:
        push    word ptr [0x280]                ; FF 36 80 02
        ;   ^ arg hWnd
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0275
L_0275:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_02A0                          ; 74 25
        mov     ax, 0x25c                       ; B8 5C 02
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_036B                          ; E8 E3 00
        or      ax, ax                          ; 0B C0
        je      L_02A0                          ; 74 14
        mov     word ptr [0x4e], 1              ; C7 06 4E 00 01 00
        mov     ax, word ptr [0x25c]            ; A1 5C 02
        mov     dx, word ptr [0x25e]            ; 8B 16 5E 02
        mov     word ptr [0x37c], ax            ; A3 7C 03
        mov     word ptr [0x37e], dx            ; 89 16 7E 03
;   [conditional branch target (if/else)] L_02A0
L_02A0:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02A6                          ; E8 01 00
;   [fall-through exit] L_02A5
L_02A5:
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: GETACTIVEWINDOW, MESSAGEBEEP.

;-------------------------------------------------------------------------
; sub_02A6   offset=0x02A6  size=61 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   GETACTIVEWINDOW
;   MESSAGEBEEP
;
; Near calls (internal): L_0348, L_036B, L_0417
;-------------------------------------------------------------------------
;   [sub-routine] L_02A6
L_02A6:
        call    L_0417                          ; E8 6E 01
        add     ax, word ptr [bx + si]          ; 03 00
        mov     ax, word ptr [0x25c]            ; A1 5C 02
        mov     dx, word ptr [0x25e]            ; 8B 16 5E 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        push    word ptr [0x2fa]                ; FF 36 FA 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0348                          ; E8 83 00
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        mov     ax, 0x37c                       ; B8 7C 03
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_036B                          ; E8 99 00
        cmp     ax, 0xffff                      ; 3D FF FF
        jle     L_0347                          ; 7E 70
        cmp     word ptr [0x284], 0             ; 83 3E 84 02 00
        je      L_02EC                          ; 74 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.MESSAGEBEEP            ; 9A 93 01 00 00 [FIXUP]
        mov     word ptr [0x4a], 3              ; C7 06 4A 00 03 00
;   [conditional branch target (if/else)] L_02EC
L_02EC:
        cmp     word ptr [0x26c], -1            ; 83 3E 6C 02 FF
        jne     L_0313                          ; 75 20
        mov     ax, word ptr [0x37c]            ; A1 7C 03
        mov     dx, word ptr [0x37e]            ; 8B 16 7E 03
        mov     word ptr [0x26c], ax            ; A3 6C 02
        mov     word ptr [0x26e], dx            ; 89 16 6E 02
        call    far USER.GETACTIVEWINDOW        ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [0x262]            ; 3B 06 62 02
        jne     L_0313                          ; 75 07
        call    far _entry_26                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0347                          ; EB 34
;   [conditional branch target (if/else)] L_0313
L_0313:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_25                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x37c]            ; A1 7C 03
        mov     dx, word ptr [0x37e]            ; 8B 16 7E 03
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0348                          ; E8 12 00
        mov     ax, 0x37c                       ; B8 7C 03
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_24                   ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_0347
L_0347:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (12 instructions).

;-------------------------------------------------------------------------
; sub_0348   offset=0x0348  size=12 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0417
;-------------------------------------------------------------------------
;   [sub-routine] L_0348
L_0348:
        call    L_0417                          ; E8 CC 00
        add     byte ptr [bp + si], al          ; 00 02
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     word ptr [bx + 2], ax           ; 01 47 02
        cmp     word ptr [bx + 2], 0x59f        ; 81 7F 02 9F 05
        jle     L_036A                          ; 7E 0D
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        sub     word ptr [bx + 2], 0x5a0        ; 81 6F 02 A0 05
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        inc     word ptr [bx]                   ; FF 07
;   [error/early exit] L_036A
L_036A:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (21 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_036B   offset=0x036B  size=21 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0417
;-------------------------------------------------------------------------
;   [sub-routine] L_036B
L_036B:
        call    L_0417                          ; E8 A9 00
        add     ax, word ptr [bp + si]          ; 03 02
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        mov     ax, word ptr [di]               ; 8B 05
        cmp     word ptr [si], ax               ; 39 04
        jae     L_0381                          ; 73 05
;   [loop start] L_037C
L_037C:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_039B                          ; EB 1A
;   [conditional branch target (if/else)] L_0381
L_0381:
        mov     ax, word ptr [di]               ; 8B 05
        cmp     word ptr [si], ax               ; 39 04
        jbe     L_038C                          ; 76 05
;   [loop start] L_0387
L_0387:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_039B                          ; EB 0F
;   [conditional branch target (if/else)] L_038C
L_038C:
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        cmp     word ptr [si + 2], ax           ; 39 44 02
        jl      L_037C                          ; 7C E8
        cmp     word ptr [si + 2], ax           ; 39 44 02
        jg      L_0387                          ; 7F EE
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_039B
L_039B:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (29 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_039C   offset=0x039C  size=29 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=4, ASM=5)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_03D1
;-------------------------------------------------------------------------
;   [sub-routine] L_039C
L_039C:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        call    L_03D1                          ; E8 26 00
        mov     ah, 0x2c                        ; B4 2C
        int     0x21                            ; CD 21
        mov     al, 0x3c                        ; B0 3C
        mul     ch                              ; F6 E5
        add     al, cl                          ; 02 C1
        adc     ah, 0                           ; 80 D4 00
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx], ax               ; 89 07
        or      ch, cl                          ; 0A E9
        jne     L_03C4                          ; 75 03
        call    L_03D1                          ; E8 0D 00
;   [conditional branch target (if/else)] L_03C4
L_03C4:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Internal helper (13 instructions).

;-------------------------------------------------------------------------
; sub_03D1   offset=0x03D1  size=13 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=1, ASM=8)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_03D1
L_03D1:
        mov     ah, 0x2a                        ; B4 2A
        int     0x21                            ; CD 21
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        xor     ah, ah                          ; 32 E4
        ; constant VK_RETURN
        mov     al, dh                          ; 8A C6
        dec     al                              ; FE C8
        mov     word ptr [bx], ax               ; 89 07
        mov     al, dl                          ; 8A C2
        dec     al                              ; FE C8
        mov     word ptr [bx + 2], ax           ; 89 47 02
        sub     cx, 0x7bc                       ; 81 E9 BC 07
        mov     word ptr [bx + 4], cx           ; 89 4F 04
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: FATALEXIT, INITTASK, WAITEVENT (+1 more).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_03EF   offset=0x03EF  size=103 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=2, ASM=7)
; Prologue: none     Epilogue: jmp_tail
;
; Far API calls:
;   FATALEXIT
;   INITTASK
;   WAITEVENT
;   INITAPP
;
; Near calls (internal): L_05BE, L_0650
;-------------------------------------------------------------------------
;   [sub-routine] L_03EF
L_03EF:
        pop     bx                              ; 5B
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     dx, word ptr cs:[bx]            ; 2E 8B 17
        inc     bx                              ; 43
        inc     bx                              ; 43
        xor     ax, ax                          ; 33 C0
        mov     al, dl                          ; 8A C2
        shl     ax, 1                           ; D1 E0
        sub     sp, ax                          ; 2B E0
        push    si                              ; 56
        push    di                              ; 57
        xor     ax, ax                          ; 33 C0
        ; constant VK_RETURN
        mov     al, dh                          ; 8A C6
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        call    bx                              ; FF D3
        pop     cx                              ; 59
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        pop     bx                              ; 5B
        add     sp, cx                          ; 03 E1
        jmp     bx                              ; FF E3
        mov     bx, 0xd88c                      ; BB 8C D8
        nop                                     ; 90
        pop     bx                              ; 5B
        mov     dx, word ptr cs:[bx]            ; 2E 8B 17
        inc     bx                              ; 43
        inc     bx                              ; 43
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        xor     ax, ax                          ; 33 C0
        mov     al, dl                          ; 8A C2
        shl     ax, 1                           ; D1 E0
        sub     sp, ax                          ; 2B E0
        push    si                              ; 56
        push    di                              ; 57
        xor     ax, ax                          ; 33 C0
        ; constant VK_RETURN
        mov     al, dh                          ; 8A C6
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        call    bx                              ; FF D3
        pop     cx                              ; 59
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        pop     bx                              ; 5B
        pop     es                              ; 07
        add     sp, cx                          ; 03 E1
        push    es                              ; 06
        push    bx                              ; 53
        retf                                    ; CB
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        pop     bx                              ; 5B
        sub     ax, sp                          ; 2B C4
        jae     L_046D                          ; 73 18
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_046D                          ; 77 0F
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_0469                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
;   [conditional branch target (if/else)] L_0469
L_0469:
        mov     sp, ax                          ; 8B E0
        jmp     bx                              ; FF E3
;   [conditional branch target (if/else)] L_046D
L_046D:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
        call    far KERNEL.INITTASK             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_04B0                          ; 74 2B
        mov     word ptr [0x1ae], 0             ; C7 06 AE 01 00 00
        mov     word ptr [0x1a0], cx            ; 89 0E A0 01
        push    di                              ; 57
        push    si                              ; 56
        push    es                              ; 06
        push    bx                              ; 53
        push    dx                              ; 52
        call    L_05BE                          ; E8 27 01
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far KERNEL.WAITEVENT            ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        call    far USER.INITAPP                ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_04B0                          ; 74 07
        call    0                               ; E8 54 FB
        push    ax                              ; 50
        call    L_0650                          ; E8 A0 01
;   [conditional branch target (if/else)] L_04B0
L_04B0:
        mov     ax, 0x4cff                      ; B8 FF 4C
        int     0x21                            ; CD 21
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HANDLE    (7 uses)
;     [bp+0x6]  HANDLE    (3 uses)
;   Locals:
;     [bp-0x2]   HANDLE    (2 uses)

; Description (heuristic):
;   Mixed routine using: GLOBALALLOC, GLOBALCOMPACT, GLOBALFREE (+5 more).

;-------------------------------------------------------------------------
; sub_04B5   offset=0x04B5  size=130 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
;   GLOBALCOMPACT(DWORD dwMinFree) -> DWORD
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;   GLOBALSIZE(HANDLE hMem) -> DWORD
;   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
;   LOCALFREE(HANDLE hMem) -> HANDLE
;   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
;   LOCALSIZE(HANDLE hMem) -> WORD
;
; Near calls (internal): L_0660
;-------------------------------------------------------------------------
;   [sub-routine] L_04B5
L_04B5:
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0xffff                      ; B8 FF FF
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0xffff                      ; B8 FF FF
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wFlags
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A E7 04 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        imul    word ptr [bp + 6]               ; F7 6E 06
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A 1E 05 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hMem
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg wBytes
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        ; --> LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.LOCALREALLOC         ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A 2D 05 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wFlags
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hMem
        ; --> LOCALSIZE(HANDLE hMem) -> WORD
        call    far KERNEL.LOCALSIZE            ; 9A 96 05 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     dx, ds                          ; 8C DA
        mov     dx, ax                          ; 8B D0
        sub     ax, ax                          ; 2B C0
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     dx, ds                          ; 8C DA
        mov     dx, ax                          ; 8B D0
        sub     ax, ax                          ; 2B C0
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hMem
        ; --> GLOBALSIZE(HANDLE hMem) -> DWORD
        call    far KERNEL.GLOBALSIZE           ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hMem
        ; --> LOCALSIZE(HANDLE hMem) -> WORD
        call    far KERNEL.LOCALSIZE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_05A3                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_05A5                          ; EB 02
;   [error/early exit] L_05A3
L_05A3:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_05A5
L_05A5:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg dwMinFree (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwMinFree (low/offset)
        ; --> GLOBALCOMPACT(DWORD dwMinFree) -> DWORD
        call    far KERNEL.GLOBALCOMPACT        ; 9A FF FF 00 00 [FIXUP]
        mov     cl, 4                           ; B1 04
        call    L_0660                          ; E8 A6 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (59 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_05BE   offset=0x05BE  size=59 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=1, ASM=7)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_05BE
L_05BE:
        mov     bx, 0x1fe                       ; BB FE 01
;   [loop start] L_05C1
L_05C1:
        cmp     bx, 0x204                       ; 81 FB 04 02
        jae     L_05CF                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_05C1                          ; EB F2
;   [error/early exit] L_05CF
L_05CF:
        ret                                     ; C3
        mov     bx, 4                           ; BB 04 00
;   [loop start] L_05D3
L_05D3:
        mov     ax, 0x4400                      ; B8 00 44
        int     0x21                            ; CD 21
        jb      L_05E4                          ; 72 0A
        test    dl, 0x80                        ; F6 C2 80
        je      L_05E4                          ; 74 05
        or      byte ptr [bx + 0x1d2], 0x40     ; 80 8F D2 01 40
;   [conditional branch target (if/else)] L_05E4
L_05E4:
        dec     bx                              ; 4B
        jns     L_05D3                          ; 79 EC
        ret                                     ; C3
        mov     ah, 0x30                        ; B4 30
        int     0x21                            ; CD 21
        mov     word ptr [0x1b4], ax            ; A3 B4 01
        ret                                     ; C3
        mov     es, word ptr [0x1ae]            ; 8E 06 AE 01
        mov     si, word ptr es:[0x2c]          ; 26 8B 36 2C 00
        mov     ax, 0x3500                      ; B8 00 35
        int     0x21                            ; CD 21
        mov     word ptr [0x1a2], bx            ; 89 1E A2 01
        mov     word ptr [0x1a4], es            ; 8C 06 A4 01
        push    cs                              ; 0E
        pop     ds                              ; 1F
        mov     ax, 0x2500                      ; B8 00 25
        mov     dx, 0x470                       ; BA 70 04
        int     0x21                            ; CD 21
        mov     cx, word ptr ss:[0x1f4]         ; 36 8B 0E F4 01
        jcxz    L_0639                          ; E3 22
        lds     ax, ptr ss:[0x1f6]              ; 36 C5 06 F6 01
        mov     dx, ds                          ; 8C DA
        xor     bx, bx                          ; 33 DB
        lcall   ss:[0x1f2]                      ; 36 FF 1E F2 01
        jae     L_062A                          ; 73 03
        jmp     L_0473                          ; E9 49 FE
;   [conditional branch target (if/else)] L_062A
L_062A:
        lds     ax, ptr ss:[0x1fa]              ; 36 C5 06 FA 01
        mov     dx, ds                          ; 8C DA
        ; constant WM_MOVE
        mov     bx, 3                           ; BB 03 00
        lcall   ss:[0x1f2]                      ; 36 FF 1E F2 01
;   [conditional branch target (if/else)] L_0639
L_0639:
        push    ss                              ; 16
        pop     ds                              ; 1F
        ret                                     ; C3
        mov     cx, 0x14                        ; B9 14 00
        xor     bx, bx                          ; 33 DB
;   [loop iteration target] L_0641
L_0641:
        test    byte ptr [bx + 0x1d2], 1        ; F6 87 D2 01 01
        je      L_064C                          ; 74 04
        mov     ah, 0x3e                        ; B4 3E
        int     0x21                            ; CD 21
;   [conditional branch target (if/else)] L_064C
L_064C:
        inc     bx                              ; 43
        loop    L_0641                          ; E2 F2
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (8 instructions).

;-------------------------------------------------------------------------
; sub_0650   offset=0x0650  size=8 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Near calls (internal): L_066B, L_06A1
;-------------------------------------------------------------------------
;   [sub-routine] L_0650
L_0650:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_06A1                          ; E8 4B 00
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_066B                          ; E8 0F 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (6 instructions).

;-------------------------------------------------------------------------
; sub_0660   offset=0x0660  size=6 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0660
L_0660:
        xor     ch, ch                          ; 32 ED
        jcxz    L_066A                          ; E3 06
;   [loop iteration target] L_0664
L_0664:
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        loop    L_0664                          ; E2 FA
;   [error/early exit] L_066A
L_066A:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (21 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_066B   offset=0x066B  size=21 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=4, ASM=5)
; Prologue: standard_bp     Epilogue: unknown
;
; Near calls (internal): L_04B5, L_06B3
;-------------------------------------------------------------------------
;   [sub-routine] L_066B
L_066B:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_06B3                          ; E8 42 00
        call    L_04B5                          ; E8 41 FE
        or      ah, ah                          ; 0A E4
        je      L_0682                          ; 74 0A
        cmp     byte ptr [bp + 4], 0            ; 80 7E 04 00
        jne     L_0682                          ; 75 04
        mov     byte ptr [bp + 4], 0xfe         ; C6 46 04 FE
;   [conditional branch target (if/else)] L_0682
L_0682:
        push    ds                              ; 1E
        lds     dx, ptr [0x1a2]                 ; C5 16 A2 01
        mov     ax, 0x2500                      ; B8 00 25
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     cx, word ptr [0x1f4]            ; 8B 0E F4 01
        jcxz    L_069A                          ; E3 07
        mov     bx, 2                           ; BB 02 00
        lcall   [0x1f2]                         ; FF 1E F2 01
;   [conditional branch target (if/else)] L_069A
L_069A:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     ah, 0x4c                        ; B4 4C
        int     0x21                            ; CD 21
; Description (heuristic):
;   Internal helper (10 instructions).

;-------------------------------------------------------------------------
; sub_06A1   offset=0x06A1  size=10 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_06A1
L_06A1:
        ; constant WM_RBUTTONDOWN
        mov     bx, 0x204                       ; BB 04 02
;   [loop start] L_06A4
L_06A4:
        cmp     bx, 0x204                       ; 81 FB 04 02
        jae     L_06B2                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_06A4                          ; EB F2
;   [error/early exit] L_06B2
L_06B2:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (10 instructions).

;-------------------------------------------------------------------------
; sub_06B3   offset=0x06B3  size=10 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_06B3
L_06B3:
        ; constant WM_RBUTTONDOWN
        mov     bx, 0x204                       ; BB 04 02
;   [loop start] L_06B6
L_06B6:
        cmp     bx, 0x206                       ; 81 FB 06 02
        jae     L_06C4                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_06B6                          ; EB F2
;   [error/early exit] L_06C4
L_06C4:
        ret                                     ; C3

CALENDAR_TEXT ENDS

        END
