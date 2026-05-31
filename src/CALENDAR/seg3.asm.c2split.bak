; ======================================================================
; CALENDAR / seg3.asm   (segment 3 of CALENDAR)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):       176
; Total instructions:                 8903
; 
; Classification (pass8):
;   C-origin (high+medium):             14
;   ASM-origin (high+medium):            9
;   Unclear:                           153
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     249 (109 unique)
;   Top:
;       11  SENDMESSAGE
;       11  INVALIDATERECT
;        8  GETFOCUS
;        8  TEXTOUT
;        8  ENDDIALOG
;        7  UPDATEWINDOW
;        7  GETCLIENTRECT
;        6  LSTRLEN
; ======================================================================
; AUTO-GENERATED from original CALENDAR segment 3
; segment_size=22642 bytes, flags=0xf130
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
;   Drawing routine (3 GDI APIs).
;   Acquires a device context, draws, releases.

;-------------------------------------------------------------------------
; sub_0000   offset=0x0000  size=474 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
;   CREATECARET
;   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   DESTROYCARET
;   DESTROYWINDOW(HWND hWnd) -> BOOL
;   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
;   GETFOCUS
;   HIDECARET
;   ISWINDOWENABLED
;   KILLTIMER
;   MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
;   POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
;   POSTQUITMESSAGE
;   SETCURSOR
;   SHOWCARET
;   UPDATEWINDOW(HWND hWnd) -> BOOL
;
; Near calls (first 8 of 31): L_0501, L_054F, L_0598, L_05AD, L_06E0, L_074B, L_0BC2, L_0C11 ...
;-------------------------------------------------------------------------
L_0000:
        call    L_57CD                          ; E8 CA 57
        pop     es                              ; 07
        add     al, 0xa1                        ; 04 A1
        bound   ax, dword ptr [bp + si]         ; 62 02
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        je      L_0010                          ; 74 03
        jmp     L_013C                          ; E9 2C 01
;   [conditional branch target (if/else)] L_0010
L_0010:
        call    far USER.GETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [0x27a]            ; 3B 06 7A 02
        jne     L_001E                          ; 75 03
        call    L_22AE                          ; E8 90 22
;   [conditional branch target (if/else)] L_001E
L_001E:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, ax                          ; 0B C0
        je      L_002D                          ; 74 08
        cmp     ax, 2                           ; 3D 02 00
        je      L_002D                          ; 74 03
        jmp     L_013C                          ; E9 0F 01
;   [conditional branch target (if/else)] L_002D
L_002D:
        push    word ptr [0x266]                ; FF 36 66 02
        call    L_0501                          ; E8 CD 04
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    ax                              ; 50
        call    L_054F                          ; E8 14 05
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    ax                              ; 50
        push    word ptr [0x444]                ; FF 36 44 04
        push    word ptr [0x44c]                ; FF 36 4C 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ; --> MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
        call    far USER.MOVEWINDOW             ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x242]            ; A1 42 02
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        sub     si, word ptr [bp - 0xa]         ; 2B 76 F6
        sub     si, word ptr [0x240]            ; 2B 36 40 02
        cmp     ax, si                          ; 3B C6
        jle     L_0066                          ; 7E 03
        mov     word ptr [bp - 2], si           ; 89 76 FE
;   [conditional branch target (if/else)] L_0066
L_0066:
        mov     ax, word ptr [0x444]            ; A1 44 04
        sub     ax, word ptr [0x44e]            ; 2B 06 4E 04
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        sub     si, word ptr [bp - 8]           ; 2B 76 F8
        cmp     ax, si                          ; 3B C6
        jle     L_007D                          ; 7E 03
        mov     word ptr [bp - 0xe], si         ; 89 76 F2
;   [conditional branch target (if/else)] L_007D
L_007D:
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ;   ^ arg hWnd
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    word ptr [0x240]                ; FF 36 40 02
        ;   ^ arg y
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg nWidth
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg nHeight
        push    ax                              ; 50
        ;   ^ arg bRepaint
        ; --> MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
        call    far USER.MOVEWINDOW             ; 9A 4B 00 00 00 [FIXUP]
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     cx, word ptr [0x456]            ; 8B 0E 56 04
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        sub     ax, word ptr [0x376]            ; 2B 06 76 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x274]            ; A1 74 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        mov     cx, word ptr [0x5ec]            ; 8B 0E EC 05
        idiv    cx                              ; F7 F9
        mov     word ptr [0x274], ax            ; A3 74 02
        or      ax, ax                          ; 0B C0
        jne     L_00C1                          ; 75 04
        inc     word ptr [0x274]                ; FF 06 74 02
;   [conditional branch target (if/else)] L_00C1
L_00C1:
        mov     ax, word ptr [0x274]            ; A1 74 02
        dec     ax                              ; 48
        mov     word ptr [0x448], ax            ; A3 48 04
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        mov     cx, word ptr [0x5ec]            ; 8B 0E EC 05
        idiv    cx                              ; F7 F9
        mov     ax, dx                          ; 8B C2
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        inc     ax                              ; 40
        mov     word ptr [0x458], ax            ; A3 58 04
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0x274]            ; A1 74 02
        imul    word ptr [0x5ec]                ; F7 2E EC 05
        add     cx, ax                          ; 03 C8
        mov     word ptr [0x37a], cx            ; 89 0E 7A 03
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_0137                          ; 74 44
        call    L_2066                          ; E8 70 1F
        mov     ax, word ptr [0x274]            ; A1 74 02
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jle     L_0137                          ; 7E 34
        jmp     L_0124                          ; EB 1F
;   [loop start] L_0105
L_0105:
        mov     si, word ptr [0x448]            ; 8B 36 48 04
        sub     si, word ptr [bp - 0xc]         ; 2B 76 F4
        mov     cl, 2                           ; B1 02
        shl     si, cl                          ; D3 E6
        push    word ptr [si + 0x310]           ; FF B4 10 03
        mov     ax, si                          ; 8B C6
        add     ax, 0x314                       ; 05 14 03
        push    ax                              ; 50
        call    L_1B10                          ; E8 F3 19
        or      ax, ax                          ; 0B C0
        je      L_012A                          ; 74 09
        dec     word ptr [bp - 0xc]             ; FF 4E F4
;   [unconditional branch target] L_0124
L_0124:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jne     L_0105                          ; 75 DB
;   [conditional branch target (if/else)] L_012A
L_012A:
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C9F                          ; E8 68 1B
;   [conditional branch target (if/else)] L_0137
L_0137:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_013E                          ; EB 02
;   [fall-through exit] L_013C
L_013C:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_013E
L_013E:
        ret                                     ; C3
        call    L_57F5                          ; E8 B3 56
        adc     ax, 0xbe05                      ; 15 05 BE
        add     word ptr [bx + si], ax          ; 01 00
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     dx, dx                          ; 2B D2
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x16                        ; 3D 16 00
        je      L_01BF                          ; 74 69
        jbe     L_015B                          ; 76 03
        jmp     L_048A                          ; E9 2F 03
;   [conditional branch target (if/else)] L_015B
L_015B:
        sub     ax, 2                           ; 2D 02 00
        cmp     ax, 0x13                        ; 3D 13 00
        jbe     L_0166                          ; 76 03
        jmp     L_0233                          ; E9 CD 00
;   [conditional branch target (if/else)] L_0166
L_0166:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x462]        ; 2E FF A7 62 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_32E8                          ; E8 74 31
        or      ax, ax                          ; 0B C0
        je      L_0181                          ; 74 09
        push    word ptr [0x262]                ; FF 36 62 02
        ;   ^ arg hWnd
        ; --> DESTROYWINDOW(HWND hWnd) -> BOOL
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
;   [loop start (also forward branch)] L_0181
L_0181:
        or      si, si                          ; 0B F6
        jne     L_0188                          ; 75 03
        jmp     L_04EC                          ; E9 64 03
;   [conditional branch target (if/else)] L_0188
L_0188:
        sub     ax, ax                          ; 2B C0
;   [loop start] L_018A
L_018A:
        cdq                                     ; 99
        jmp     L_0500                          ; E9 72 03
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_32E8                          ; E8 53 31
        jmp     L_018A                          ; EB F3
        mov     ax, word ptr [0x262]            ; A1 62 02
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        je      L_01A2                          ; 74 03
        jmp     L_0233                          ; E9 91 00
;   [conditional branch target (if/else)] L_01A2
L_01A2:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.KILLTIMER              ; 9A FF FF 00 00 [FIXUP]
        call    L_36E1                          ; E8 33 35
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_575D                          ; E8 A8 55
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.POSTQUITMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0181                          ; EB C2
;   [conditional branch target (if/else)] L_01BF
L_01BF:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0181                          ; 74 BC
        call    L_36E1                          ; E8 19 35
        jmp     L_0181                          ; EB B7
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    0                               ; E8 27 FE
;   [loop start] L_01D9
L_01D9:
        mov     si, ax                          ; 8B F0
        jmp     L_0181                          ; EB A4
        push    word ptr [0x27a]                ; FF 36 7A 02
        call    far USER.HIDECARET              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
        call    far USER.BEGINPAINT             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x28]            ; FF 76 D8
        call    L_0C8E                          ; E8 95 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x28]            ; FF 76 D8
        push    word ptr [bp - 0x26]            ; FF 76 DA
        call    L_074B                          ; E8 46 05
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
        call    far USER.ENDPAINT               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x27a]                ; FF 36 7A 02
        call    far USER.SHOWCARET              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0181                          ; E9 63 FF
;   [loop start] L_021E
L_021E:
        cmp     di, 1                           ; 83 FF 01
        ja      L_022C                          ; 77 09
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        jmp     L_030F                          ; E9 E3 00
;   [conditional branch target (if/else)] L_022C
L_022C:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    di                              ; 57
        call    L_2642                          ; E8 0F 24
;   [loop start (also forward branch)] L_0233
L_0233:
        sub     si, si                          ; 2B F6
        jmp     L_0181                          ; E9 49 FF
;   [loop start] L_0238
L_0238:
        cmp     word ptr [bp + 0xa], 0x14       ; 83 7E 0A 14
        jne     L_0233                          ; 75 F5
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    L_2C30                          ; E8 EB 29
        jmp     L_0181                          ; E9 39 FF
;   [loop start] L_0248
L_0248:
        sub     ax, ax                          ; 2B C0
;   [loop start] L_024A
L_024A:
        push    ax                              ; 50
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0181                          ; E9 2E FF
;   [loop start] L_0253
L_0253:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_024A                          ; EB F2
;   [loop start] L_0258
L_0258:
        push    word ptr [0x262]                ; FF 36 62 02
        call    far USER.ISWINDOWENABLED        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0268                          ; 75 03
        jmp     L_0181                          ; E9 19 FF
;   [conditional branch target (if/else)] L_0268
L_0268:
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_027B                          ; 74 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_1C0E                          ; E8 96 19
        jmp     L_01D9                          ; E9 5E FF
;   [conditional branch target (if/else)] L_027B
L_027B:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_1583                          ; E8 FF 12
        jmp     L_01D9                          ; E9 52 FF
;   [loop start] L_0287
L_0287:
        mov     ax, word ptr [0x268]            ; A1 68 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0x2dc]            ; A1 DC 02
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        jne     L_02A4                          ; 75 0F
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_02A4                          ; 74 08
        mov     ax, word ptr [0x452]            ; A1 52 04
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jae     L_02B4                          ; 73 10
;   [conditional branch target (if/else)] L_02A4
L_02A4:
        mov     ax, word ptr [0x266]            ; A1 66 02
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        jne     L_02BA                          ; 75 0E
        mov     ax, word ptr [0x2e4]            ; A1 E4 02
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jbe     L_02BA                          ; 76 06
;   [conditional branch target (if/else)] L_02B4
L_02B4:
        mov     ax, word ptr [0x38a]            ; A1 8A 03
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [conditional branch target (if/else)] L_02BA
L_02BA:
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0181                          ; E9 BC FE
;   [loop start] L_02C5
L_02C5:
        mov     ax, word ptr [0x266]            ; A1 66 02
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        jne     L_02E8                          ; 75 1B
        mov     ax, word ptr [0x2e4]            ; A1 E4 02
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jbe     L_02E8                          ; 76 13
        mov     ax, word ptr [0x23c]            ; A1 3C 02
        sub     word ptr [bp + 6], ax           ; 29 46 06
        mov     ax, word ptr [0x246]            ; A1 46 02
        sub     word ptr [bp + 8], ax           ; 29 46 08
        push    word ptr [0x2e8]                ; FF 36 E8 02
        jmp     L_037B                          ; E9 93 00
;   [conditional branch target (if/else)] L_02E8
L_02E8:
        mov     ax, word ptr [0x280]            ; A1 80 02
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        jne     L_0337                          ; 75 47
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_0337                          ; 74 40
        mov     ax, word ptr [0x5ee]            ; A1 EE 05
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jb      L_0315                          ; 72 16
        mov     ax, word ptr [0x244]            ; A1 44 02
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jae     L_0315                          ; 73 0E
        push    word ptr [0x262]                ; FF 36 62 02
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
;   [loop start] L_030E
L_030E:
        push    ax                              ; 50
;   [unconditional branch target] L_030F
L_030F:
        call    L_2986                          ; E8 74 26
        jmp     L_0181                          ; E9 6C FE
;   [conditional branch target (if/else)] L_0315
L_0315:
        mov     ax, word ptr [0x392]            ; A1 92 03
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jb      L_032E                          ; 72 11
        mov     ax, word ptr [0x2f6]            ; A1 F6 02
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jae     L_032E                          ; 73 09
        push    word ptr [0x262]                ; FF 36 62 02
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        jmp     L_030E                          ; EB E0
;   [conditional branch target (if/else)] L_032E
L_032E:
        push    word ptr [0x262]                ; FF 36 62 02
        mov     ax, 0xa                         ; B8 0A 00
        jmp     L_030E                          ; EB D7
;   [conditional branch target (if/else)] L_0337
L_0337:
        mov     ax, word ptr [0x2dc]            ; A1 DC 02
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        je      L_0342                          ; 74 03
        jmp     L_0233                          ; E9 F1 FE
;   [conditional branch target (if/else)] L_0342
L_0342:
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_0389                          ; 74 40
        push    di                              ; 57
        call    L_1F7E                          ; E8 31 1C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     ax, word ptr [0x24a]            ; 3B 06 4A 02
        je      L_0367                          ; 74 11
        push    word ptr [0x262]                ; FF 36 62 02
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1FB8                          ; E8 51 1C
;   [conditional branch target (if/else)] L_0367
L_0367:
        mov     ax, word ptr [0x452]            ; A1 52 04
        sub     word ptr [bp + 6], ax           ; 29 46 06
        push    word ptr [0x24a]                ; FF 36 4A 02
        call    L_1F6D                          ; E8 F9 1B
        sub     word ptr [bp + 8], ax           ; 29 46 08
        push    word ptr [0x27a]                ; FF 36 7A 02
;   [unconditional branch target] L_037B
L_037B:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        jmp     L_03D8                          ; EB 4F
;   [conditional branch target (if/else)] L_0389
L_0389:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        cmp     word ptr [bp + 0xc], 0x203      ; 81 7E 0C 03 02
        jne     L_039B                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_039D                          ; EB 02
;   [conditional branch target (if/else)] L_039B
L_039B:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_039D
L_039D:
        push    ax                              ; 50
        call    L_1506                          ; E8 65 11
        jmp     L_0181                          ; E9 DD FD
;   [loop start] L_03A4
L_03A4:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_15FE                          ; E8 4B 12
        jmp     L_01D9                          ; E9 23 FE
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_03BF                          ; 75 03
        jmp     L_0233                          ; E9 74 FE
;   [conditional branch target (if/else)] L_03BF
L_03BF:
        or      di, di                          ; 0B FF
        jne     L_03CC                          ; 75 09
        push    word ptr [0x50]                 ; FF 36 50 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0598                          ; E8 CC 01
;   [conditional branch target (if/else)] L_03CC
L_03CC:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x464                       ; B8 64 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
;   [unconditional branch target] L_03D8
L_03D8:
        ; --> POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
        call    far USER.POSTMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0181                          ; E9 A1 FD
;   [loop start] L_03E0
L_03E0:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_45D2                          ; E8 ED 41
        jmp     L_0181                          ; E9 99 FD
        mov     ax, word ptr [0x2dc]            ; A1 DC 02
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        je      L_03F3                          ; 74 03
        jmp     L_0233                          ; E9 40 FE
;   [conditional branch target (if/else)] L_03F3
L_03F3:
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_03FD                          ; 74 03
        jmp     L_0233                          ; E9 36 FE
;   [conditional branch target (if/else)] L_03FD
L_03FD:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [0x462]            ; A1 62 04
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.CREATECARET            ; 9A FF FF 00 00 [FIXUP]
        call    L_1201                          ; E8 EF 0D
        push    word ptr [0x2dc]                ; FF 36 DC 02
        call    far USER.SHOWCARET              ; 9A 17 02 00 00 [FIXUP]
        mov     ax, word ptr [0x2dc]            ; A1 DC 02
        mov     word ptr [0x50], ax             ; A3 50 00
        jmp     L_0181                          ; E9 5D FD
        mov     ax, word ptr [0x2dc]            ; A1 DC 02
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        je      L_042F                          ; 74 03
        jmp     L_0233                          ; E9 04 FE
;   [conditional branch target (if/else)] L_042F
L_042F:
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_0439                          ; 74 03
        jmp     L_0233                          ; E9 FA FD
;   [conditional branch target (if/else)] L_0439
L_0439:
        call    far USER.DESTROYCARET           ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0181                          ; E9 40 FD
        call    L_0C11                          ; E8 CD 07
        call    L_0BC2                          ; E8 7B 07
        jmp     L_0181                          ; E9 37 FD
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0C47                          ; E8 F4 07
        jmp     L_0181                          ; E9 2B FD
;   [loop start] L_0456
L_0456:
        call    L_05AD                          ; E8 54 01
        jmp     L_0181                          ; E9 25 FD
;   [loop start] L_045C
L_045C:
        call    L_06E0                          ; E8 81 02
        jmp     L_0181                          ; E9 1F FD
        xchg    di, ax                          ; 97
        add     word ptr [bp + di], si          ; 01 33
        add     dh, byte ptr [bp + di]          ; 02 33
        add     cl, dl                          ; 02 CA
        add     word ptr [bp - 0x17fd], si      ; 01 B6 03 E8
        add     sp, word ptr [si]               ; 03 24
        add     al, 0x33                        ; 04 33
        add     dh, byte ptr [bp + di]          ; 02 33
        add     dh, byte ptr [bp + di]          ; 02 33
        add     dh, byte ptr [bp + di]          ; 02 33
        add     dh, byte ptr [bp + di]          ; 02 33
        add     dh, byte ptr [bp + di]          ; 02 33
        add     bl, ch                          ; 02 DD
        add     word ptr [bp + 1], bp           ; 01 6E 01
        mov     es, word ptr [bx + di]          ; 8E 01
        xor     ax, word ptr [bp + si]          ; 33 02
        xor     ax, word ptr [bp + si]          ; 33 02
        dec     dx                              ; 4A
        add     al, 0x41                        ; 04 41
        add     al, 0x3d                        ; 04 3D
        adc     ax, word ptr [bx + di]          ; 13 01
        jne     L_0492                          ; 75 03
        jmp     L_0248                          ; E9 B6 FD
;   [conditional branch target (if/else)] L_0492
L_0492:
        ja      L_04BC                          ; 77 28
        cmp     ax, 0x1a                        ; 3D 1A 00
        je      L_045C                          ; 74 C3
        cmp     ax, 0x1e                        ; 3D 1E 00
        jne     L_04A1                          ; 75 03
        jmp     L_0253                          ; E9 B2 FD
;   [conditional branch target (if/else)] L_04A1
L_04A1:
        cmp     ax, 0x100                       ; 3D 00 01
        jne     L_04A9                          ; 75 03
        jmp     L_03A4                          ; E9 FB FE
;   [conditional branch target (if/else)] L_04A9
L_04A9:
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_04B1                          ; 75 03
        jmp     L_021E                          ; E9 6D FD
;   [conditional branch target (if/else)] L_04B1
L_04B1:
        cmp     ax, 0x112                       ; 3D 12 01
        jne     L_04B9                          ; 75 03
        jmp     L_0238                          ; E9 7F FD
;   [conditional branch target (if/else)] L_04B9
L_04B9:
        jmp     L_0233                          ; E9 77 FD
;   [conditional branch target (if/else)] L_04BC
L_04BC:
        cmp     ax, 0x115                       ; 3D 15 01
        jne     L_04C4                          ; 75 03
        jmp     L_0258                          ; E9 94 FD
;   [conditional branch target (if/else)] L_04C4
L_04C4:
        cmp     ax, 0x116                       ; 3D 16 01
        je      L_0456                          ; 74 8D
        cmp     ax, 0x200                       ; 3D 00 02
        jne     L_04D1                          ; 75 03
        jmp     L_0287                          ; E9 B6 FD
;   [conditional branch target (if/else)] L_04D1
L_04D1:
        cmp     ax, 0x201                       ; 3D 01 02
        jne     L_04D9                          ; 75 03
        jmp     L_02C5                          ; E9 EC FD
;   [conditional branch target (if/else)] L_04D9
L_04D9:
        cmp     ax, 0x203                       ; 3D 03 02
        jne     L_04E1                          ; 75 03
        jmp     L_02C5                          ; E9 E4 FD
;   [conditional branch target (if/else)] L_04E1
L_04E1:
        cmp     ax, 0x464                       ; 3D 64 04
        L_048A:
        jne     L_04E9                          ; 75 03
        jmp     L_03E0                          ; E9 F7 FE
;   [conditional branch target (if/else)] L_04E9
L_04E9:
        jmp     L_0233                          ; E9 47 FD
;   [unconditional branch target] L_04EC
L_04EC:
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
;   [fall-through exit] L_0500
L_0500:
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around GETCLIENTRECT(hWnd, lpRect) -> VOID.

;-------------------------------------------------------------------------
; sub_0501   offset=0x0501  size=30 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_0501
L_0501:
        call    L_57CD                          ; E8 C9 52
        pop     es                              ; 07
        add     bh, bh                          ; 00 FF
        bound   ax, dword ptr ss:[bp + si]      ; 36 62 02
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A 5E 05 00 00 [FIXUP]
        mov     ax, word ptr [0x444]            ; A1 44 04
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jle     L_053E                          ; 7E 0E
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
;   [conditional branch target (if/else)] L_053E
L_053E:
        mov     ax, word ptr [0x462]            ; A1 62 04
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jle     L_054B                          ; 7E 05
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        jmp     L_054E                          ; EB 03
;   [error/early exit] L_054B
L_054B:
        mov     ax, word ptr [0x462]            ; A1 62 04
;   [fall-through exit] L_054E
L_054E:
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around GETCLIENTRECT(hWnd, lpRect) -> VOID.

;-------------------------------------------------------------------------
; sub_054F   offset=0x054F  size=28 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_054F
L_054F:
        call    L_57CD                          ; E8 7B 52
        push    es                              ; 06
        ;   ^ arg hWnd
        add     bh, bh                          ; 00 FF
        bound   ax, dword ptr ss:[bp + si]      ; 36 62 02
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        mov     ax, word ptr [0x44c]            ; A1 4C 04
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jle     L_0587                          ; 7E 0F
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     ax, word ptr [0x44c]            ; 2B 06 4C 04
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [conditional branch target (if/else)] L_0587
L_0587:
        mov     ax, word ptr [0x456]            ; A1 56 04
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jle     L_0594                          ; 7E 05
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_0597                          ; EB 03
;   [error/early exit] L_0594
L_0594:
        mov     ax, word ptr [0x456]            ; A1 56 04
;   [fall-through exit] L_0597
L_0597:
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around SETFOCUS.

;-------------------------------------------------------------------------
; sub_0598   offset=0x0598  size=7 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   SETFOCUS
;
; Near calls (internal): L_57F5
;-------------------------------------------------------------------------
;   [sub-routine] L_0598
L_0598:
        call    L_57F5                          ; E8 5A 52
        add     byte ptr [bx + di], al          ; 00 01
        cmp     word ptr [0x2ec], 0             ; 83 3E EC 02 00
        jne     L_05AC                          ; 75 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_05AC
L_05AC:
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x6]   LRESULT   (1 use)

; Description (heuristic):
;   Menu manipulation routine (2 menu APIs).

;-------------------------------------------------------------------------
; sub_05AD   offset=0x05AD  size=113 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
;   CLOSECLIPBOARD
;   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
;   ENUMCLIPBOARDFORMATS
;   GETMENU
;   OPENCLIPBOARD
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;
; Near calls (internal): L_43CA, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_05AD
L_05AD:
        call    L_57CD                          ; E8 1D 52
        push    es                              ; 06
        add     bh, bh                          ; 00 FF
        bound   ax, dword ptr ss:[bp + si]      ; 36 62 02
        call    far USER.GETMENU                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        ; constant WM_CREATE
        mov     di, 1                           ; BF 01 00
        mov     si, di                          ; 8B F7
        mov     ax, word ptr [0x2dc]            ; A1 DC 02
        cmp     word ptr [0x50], ax             ; 39 06 50 00
        je      L_061C                          ; 74 50
        push    word ptr [0x50]                 ; FF 36 50 00
        ;   ^ arg hWnd
        mov     ax, 0x400                       ; B8 00 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        cmp     dx, ax                          ; 3B D0
        je      L_05EA                          ; 74 02
        sub     si, si                          ; 2B F6
;   [conditional branch target (if/else)] L_05EA
L_05EA:
        push    word ptr [0x262]                ; FF 36 62 02
        call    far USER.OPENCLIPBOARD          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_061C                          ; 74 25
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        jmp     L_0608                          ; EB 0A
;   [loop start] L_05FE
L_05FE:
        cmp     word ptr [bp - 8], 1            ; 83 7E F8 01
        jne     L_0608                          ; 75 04
        sub     di, di                          ; 2B FF
        jmp     L_0617                          ; EB 0F
;   [branch target] L_0608
L_0608:
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far USER.ENUMCLIPBOARDFORMATS   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        jne     L_05FE                          ; 75 E7
;   [unconditional branch target] L_0617
L_0617:
        call    far USER.CLOSECLIPBOARD         ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_061C
L_061C:
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hMenu
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        push    si                              ; 56
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 32 06 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hMenu
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        push    si                              ; 56
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 3F 06 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hMenu
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        push    di                              ; 57
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A FF FF 00 00 [FIXUP]
        mov     si, 8                           ; BE 08 00
        sub     di, di                          ; 2B FF
        cmp     word ptr [0x1c], di             ; 39 3E 1C 00
        jne     L_0653                          ; 75 05
        sub     si, si                          ; 2B F6
        mov     di, 8                           ; BF 08 00
;   [conditional branch target (if/else)] L_0653
L_0653:
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hMenu
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        push    si                              ; 56
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 69 06 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hMenu
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        push    di                              ; 57
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A FF FF 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     si, 1                           ; BE 01 00
        sub     di, di                          ; 2B FF
        mov     ax, word ptr [0x27a]            ; A1 7A 02
        cmp     word ptr [0x50], ax             ; 39 06 50 00
        jne     L_068B                          ; 75 10
        sub     si, si                          ; 2B F6
        push    word ptr [0x24a]                ; FF 36 4A 02
        call    L_43CA                          ; E8 46 3D
        or      ax, ax                          ; 0B C0
        je      L_068B                          ; 74 03
        mov     di, 8                           ; BF 08 00
;   [conditional branch target (if/else)] L_068B
L_068B:
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hMenu
        ; constant WM_PAINT
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        push    si                              ; 56
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A DB 06 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hMenu
        ; constant WM_PAINT
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        push    di                              ; 57
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A C2 06 00 00 [FIXUP]
        sub     si, si                          ; 2B F6
        mov     bx, word ptr [0x228]            ; 8B 1E 28 02
        add     bx, word ptr [0x466]            ; 03 1E 66 04
        test    byte ptr [bx + 0x394], 0x80     ; F6 87 94 03 80
        je      L_06B9                          ; 74 03
        mov     si, 8                           ; BE 08 00
;   [conditional branch target (if/else)] L_06B9
L_06B9:
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hMenu
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        push    si                              ; 56
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 5C 06 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     si, 1                           ; BE 01 00
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_06D2                          ; 74 02
        sub     si, si                          ; 2B F6
;   [conditional branch target (if/else)] L_06D2
L_06D2:
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hMenu
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        push    si                              ; 56
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 25 06 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: DELETEDC, ENABLEMENUITEM, GETMENU (+1 more).

;-------------------------------------------------------------------------
; sub_06E0   offset=0x06E0  size=38 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   DELETEDC(HDC hDC) -> BOOL
;   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
;   GETMENU
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_06E0
L_06E0:
        call    L_57CD                          ; E8 EA 50
        add     al, 0                           ; 04 00
        push    word ptr [0x262]                ; FF 36 62 02
        call    far USER.GETMENU                ; 9A B7 05 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        call    far _entry_29                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jge     L_0709                          ; 7D 0C
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_071A                          ; EB 11
;   [conditional branch target (if/else)] L_0709
L_0709:
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_071A
L_071A:
        push    ax                              ; 50
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 94 06 00 00 [FIXUP]
        push    word ptr [0x460]                ; FF 36 60 04
        cmp     word ptr [0x44a], 0             ; 83 3E 4A 04 00
        je      L_0730                          ; 74 05
        mov     ax, 0x20                        ; B8 20 00
        jmp     L_0733                          ; EB 03
;   [conditional branch target (if/else)] L_0730
L_0730:
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
;   [unconditional branch target] L_0733
L_0733:
        push    ax                              ; 50
        call    far _entry_28                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x262]                ; FF 36 62 02
        ;   ^ arg hWnd
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A FF FF 00 00 [FIXUP]
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HDC       (1 use)

; Description (heuristic):
;   Mixed routine using: PATBLT, SETTEXTCOLOR, GETSYSCOLOR.

;-------------------------------------------------------------------------
; sub_074B   offset=0x074B  size=95 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
;   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
;   GETSYSCOLOR
;
; Near calls (first 8 of 9): L_084E, L_0888, L_08AD, L_094E, L_0C8E, L_0E6E, L_0EF1, L_190A ...
;-------------------------------------------------------------------------
;   [sub-routine] L_074B
L_074B:
        call    L_57CD                          ; E8 7F 50
        add     al, byte ptr [bp + di]          ; 02 03
        mov     ax, word ptr [0x266]            ; A1 66 02
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jne     L_0777                          ; 75 1F
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    word ptr [0x2e4]                ; FF 36 E4 02
        ;   ^ arg y
        push    word ptr [0x236]                ; FF 36 36 02
        ;   ^ arg nWidth
        push    word ptr [0x456]                ; FF 36 56 04
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0777
L_0777:
        mov     ax, word ptr [0x280]            ; A1 80 02
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jne     L_07EB                          ; 75 6C
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_08AD                          ; E8 26 01
        mov     si, 0x250                       ; BE 50 02
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_07E0                          ; 74 4F
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x2ea], ax            ; A3 EA 02
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        ; --> SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
        call    far GDI.SETTEXTCOLOR            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x5e]                 ; FF 36 5E 00
        push    word ptr [0x5ee]                ; FF 36 EE 05
        call    L_084E                          ; E8 9B 00
        push    word ptr [0x5ee]                ; FF 36 EE 05
        call    L_0888                          ; E8 CE 00
        push    word ptr [0x244]                ; FF 36 44 02
        call    L_0888                          ; E8 C7 00
        push    word ptr [0x60]                 ; FF 36 60 00
        push    word ptr [0x392]                ; FF 36 92 03
        call    L_084E                          ; E8 82 00
        mov     ax, word ptr [0x2f6]            ; A1 F6 02
        sub     ax, word ptr [0x44e]            ; 2B 06 4E 04
        push    ax                              ; 50
        call    L_0888                          ; E8 B1 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0C8E                          ; E8 B1 04
        mov     si, 0x226                       ; BE 26 02
;   [conditional branch target (if/else)] L_07E0
L_07E0:
        push    word ptr [bp + 6]               ; FF 76 06
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_094E                          ; E8 65 01
        jmp     L_084D                          ; EB 62
;   [conditional branch target (if/else)] L_07EB
L_07EB:
        mov     ax, word ptr [0x2dc]            ; A1 DC 02
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jne     L_084D                          ; 75 5A
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0x238]                ; FF 36 38 02
        ;   ^ arg nWidth
        push    word ptr [0x456]                ; FF 36 56 04
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A 2E 08 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        mov     ax, word ptr [0x242]            ; A1 42 02
        sub     ax, word ptr [0x456]            ; 2B 06 56 04
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0x238]                ; FF 36 38 02
        ;   ^ arg nWidth
        push    word ptr [0x456]                ; FF 36 56 04
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A 73 07 00 00 [FIXUP]
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_0841                          ; 74 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_190A                          ; E8 CB 10
        jmp     L_084D                          ; EB 0C
;   [conditional branch target (if/else)] L_0841
L_0841:
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0E6E                          ; E8 27 06
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0EF1                          ; E8 A4 06
;   [error/early exit] L_084D
L_084D:
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  INT       (1 use)
;     [bp+0x6]  HANDLE    (1 use)

; Description (heuristic):
;   Small helper using 2 API(s): BITBLT, SELECTOBJECT.

;-------------------------------------------------------------------------
; sub_084E   offset=0x084E  size=20 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_084E
L_084E:
        call    L_57CD                          ; E8 7C 4F
        add     byte ptr [bp + si], al          ; 00 02
        push    word ptr [0x5c]                 ; FF 36 5C 00
        ;   ^ arg hDC
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x2ea]                ; FF 36 EA 02
        ;   ^ arg hDCDest
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg x
        push    word ptr [0x456]                ; FF 36 56 04
        ;   ^ arg y
        push    word ptr [0x5f2]                ; FF 36 F2 05
        ;   ^ arg nWidth
        push    word ptr [0x222]                ; FF 36 22 02
        ;   ^ arg nHeight
        push    word ptr [0x5c]                 ; FF 36 5C 00
        ;   ^ arg hDCSrc
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  INT       (1 use)

; Description (heuristic):
;   Thin wrapper around PATBLT(hDC, x, y, nWidth, nHeight, dwRop) -> BOOL.

;-------------------------------------------------------------------------
; sub_0888   offset=0x0888  size=14 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_0888
L_0888:
        call    L_57CD                          ; E8 42 4F
        add     byte ptr [bx + di], al          ; 00 01
        push    word ptr [0x2ea]                ; FF 36 EA 02
        ;   ^ arg hDC
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg x
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0x44e]                ; FF 36 4E 04
        ;   ^ arg nWidth
        push    word ptr [0x240]                ; FF 36 40 02
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A 0B 08 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Small helper using 2 API(s): LSTRLEN, TEXTOUT.

;-------------------------------------------------------------------------
; sub_08AD   offset=0x08AD  size=20 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
;   LSTRLEN(LPSTR lpsz) -> INT
;
; Near calls (internal): L_08DE, L_57F5
;-------------------------------------------------------------------------
;   [sub-routine] L_08AD
L_08AD:
        call    L_57F5                          ; E8 45 4F
        pop     es                              ; 07
        add     di, di                          ; 01 FF
        pop     si                              ; 36 5E
        add     cl, byte ptr [di - 0xdba]       ; 02 8D 46 F2
        push    ax                              ; 50
        call    L_08DE                          ; E8 21 00
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x462]                ; FF 36 62 04
        push    word ptr [0x376]                ; FF 36 76 03
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A FF FF 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (18 instructions).

;-------------------------------------------------------------------------
; sub_08DE   offset=0x08DE  size=18 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_08DE
L_08DE:
        call    L_57CD                          ; E8 EC 4E
        add     al, byte ptr [bp + si]          ; 02 02
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        mov     cx, 0x3c                        ; B9 3C 00
        idiv    cx                              ; F7 F9
        mov     byte ptr [bp - 2], dl           ; 88 56 FE
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     byte ptr [bp - 1], al           ; 88 46 FF
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        call    far _entry_30                   ; 9A FF FF 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (17 instructions).

;-------------------------------------------------------------------------
; sub_0909   offset=0x0909  size=17 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_0909
L_0909:
        call    L_57CD                          ; E8 C1 4E
        add     byte ptr [bp + si], al          ; 00 02
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        mov     cl, 0xa                         ; B1 0A
        div     cl                              ; F6 F1
        add     al, 0x30                        ; 04 30
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        mov     byte ptr [bx], al               ; 88 07
        mov     ax, si                          ; 8B C6
        div     cl                              ; F6 F1
        add     ah, 0x30                        ; 80 C4 30
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     byte ptr [bx], ah               ; 88 27
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (13 instructions).

;-------------------------------------------------------------------------
; sub_0930   offset=0x0930  size=13 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_0930
L_0930:
        call    L_57CD                          ; E8 9A 4E
        add     byte ptr [bp + si], al          ; 00 02
;   [loop start] L_0935
L_0935:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        inc     word ptr [bp + 4]               ; FF 46 04
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr [bx], al               ; 88 07
        or      al, al                          ; 0A C0
        jne     L_0935                          ; 75 EC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        dec     ax                              ; 48
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x4c]   HBRUSH    (1 use)

; Description (heuristic):
;   Mixed routine using: CREATESOLIDBRUSH, TEXTOUT, LSTRLEN (+3 more).

;-------------------------------------------------------------------------
; sub_094E   offset=0x094E  size=41 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
;   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
;   LSTRLEN(LPSTR lpsz) -> INT
;   FILLRECT
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;   GETSYSCOLOR
;
; Near calls (internal): L_09B9, L_57F5
;-------------------------------------------------------------------------
;   [sub-routine] L_094E
L_094E:
        call    L_57F5                          ; E8 A4 4E
        add     bh, bh                          ; 26 02 FF
        jbe     L_095C                          ; 76 06
        lea     ax, [bp - 0x4a]                 ; 8D 46 B6
        push    ax                              ; 50
        call    L_09B9                          ; E8 5C 00
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A 9D 07 00 00 [FIXUP]
        push    dx                              ; 52
        ;   ^ arg clr (high/segment)
        push    ax                              ; 50
        ;   ^ arg clr (low/offset)
        ; --> CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
        call    far GDI.CREATESOLIDBRUSH        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        or      ax, ax                          ; 0B C0
        je      L_0998                          ; 74 24
        push    word ptr [0x280]                ; FF 36 80 02
        ;   ^ arg hWnd
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A 10 05 00 00 [FIXUP]
        mov     ax, word ptr [0x446]            ; A1 46 04
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x4c]            ; FF 76 B4
        call    far USER.FILLRECT               ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0998
L_0998:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0x446]                ; FF 36 46 04
        push    word ptr [0x376]                ; FF 36 76 03
        lea     ax, [bp - 0x4a]                 ; 8D 46 B6
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x4a]                 ; 8D 46 B6
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A D3 08 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A D9 08 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (20 instructions).

;-------------------------------------------------------------------------
; sub_09B9   offset=0x09B9  size=20 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_09B9
L_09B9:
        call    L_57CD                          ; E8 11 4E
        add     ax, word ptr [bp + si]          ; 03 02
        mov     byte ptr [bp - 6], 0xff         ; C6 46 FA FF
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        add     ax, 0x7bc                       ; 05 BC 07
        mov     word ptr [bp - 3], ax           ; 89 46 FD
        mov     al, byte ptr [bx]               ; 8A 07
        inc     al                              ; FE C0
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        inc     al                              ; FE C0
        mov     byte ptr [bp - 5], al           ; 88 46 FB
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far _entry_31                   ; 9A FF FF 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (45 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_09EE   offset=0x09EE  size=45 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_09EE
L_09EE:
        call    L_57CD                          ; E8 DC 4D
        add     byte ptr [bp + di], al          ; 00 03
        jmp     L_0A00                          ; EB 0B
;   [loop start] L_09F5
L_09F5:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        mov     byte ptr [bx], al               ; 88 07
;   [unconditional branch target] L_0A00
L_0A00:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        dec     word ptr [bp + 6]               ; FF 4E 06
        or      ax, ax                          ; 0B C0
        jne     L_09F5                          ; 75 EB
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        ret                                     ; C3
        call    L_57CD                          ; E8 BC 4D
        add     al, byte ptr [bp + di]          ; 02 03
        mov     word ptr [bp - 4], 0x2710       ; C7 46 FC 10 27
;   [loop start] L_0A18
L_0A18:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     dx, dx                          ; 2B D2
        div     word ptr [bp - 4]               ; F7 76 FC
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     dx, dx                          ; 2B D2
        div     word ptr [bp - 4]               ; F7 76 FC
        mov     word ptr [bp + 8], dx           ; 89 56 08
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_0A40                          ; 75 0C
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_0A40                          ; 75 06
        cmp     word ptr [bp - 4], 1            ; 83 7E FC 01
        jne     L_0A52                          ; 75 12
;   [conditional branch target (if/else)] L_0A40
L_0A40:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        add     al, 0x30                        ; 04 30
        mov     byte ptr [bx], al               ; 88 07
        mov     word ptr [bp + 4], 1            ; C7 46 04 01 00
;   [conditional branch target (if/else)] L_0A52
L_0A52:
        mov     cx, 0xa                         ; B9 0A 00
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     dx, dx                          ; 2B D2
        div     cx                              ; F7 F1
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        ja      L_0A18                          ; 77 B5
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (18 instructions).

;-------------------------------------------------------------------------
; sub_0A67   offset=0x0A67  size=18 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_0A67
L_0A67:
        call    L_57CD                          ; E8 63 4D
        add     ax, word ptr [bx + di]          ; 03 01
        mov     al, byte ptr [0x226]            ; A0 26 02
        inc     al                              ; FE C0
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        mov     al, byte ptr [0x228]            ; A0 28 02
        inc     al                              ; FE C0
        mov     byte ptr [bp - 5], al           ; 88 46 FB
        mov     ax, word ptr [0x22a]            ; A1 2A 02
        add     ax, 0x7bc                       ; 05 BC 07
        mov     word ptr [bp - 3], ax           ; 89 46 FD
        lea     ax, [bp - 6]                    ; 8D 46 FA
        L_095C:
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_33                   ; 9A FF FF 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (20 instructions).

;-------------------------------------------------------------------------
; sub_0A96   offset=0x0A96  size=20 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_0A96
L_0A96:
        call    L_57CD                          ; E8 34 4D
        add     ax, word ptr [bp + si]          ; 03 02
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_0AC4                          ; 75 16
        mov     al, 0x3c                        ; B0 3C
        mul     byte ptr [bp - 3]               ; F6 66 FD
        mov     cl, byte ptr [bp - 4]           ; 8A 4E FC
        sub     ch, ch                          ; 2A ED
        add     ax, cx                          ; 03 C1
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx], ax               ; 89 07
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0AC7                          ; EB 03
;   [error/early exit] L_0AC4
L_0AC4:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
;   [fall-through exit] L_0AC7
L_0AC7:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (10 instructions).

;-------------------------------------------------------------------------
; sub_0AC8   offset=0x0AC8  size=10 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_0AC8
L_0AC8:
        call    L_57CD                          ; E8 02 4D
        add     byte ptr [bx + di], al          ; 00 01
        jmp     L_0AD4                          ; EB 05
;   [loop start] L_0ACF
L_0ACF:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        inc     word ptr [bx]                   ; FF 07
;   [unconditional branch target] L_0AD4
L_0AD4:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx], 0x20             ; 80 3F 20
        je      L_0ACF                          ; 74 F1
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (25 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0ADF   offset=0x0ADF  size=25 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_0ADF
L_0ADF:
        call    L_57CD                          ; E8 EB 4C
        add     al, 2                           ; 04 02
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_34                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        jne     L_0B1A                          ; 75 23
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        sub     ah, ah                          ; 2A E4
        dec     ax                              ; 48
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     al, byte ptr [bp - 5]           ; 8A 46 FB
        sub     ah, ah                          ; 2A E4
        dec     ax                              ; 48
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bp - 3]           ; 8B 46 FD
        sub     ax, 0x7bc                       ; 2D BC 07
        mov     word ptr [bx + 4], ax           ; 89 47 04
;   [error/early exit] L_0B1A
L_0B1A:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (46 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0B1E   offset=0x0B1E  size=46 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_0B1E
L_0B1E:
        call    L_57CD                          ; E8 AC 4C
        add     ax, word ptr [bp + si]          ; 03 02
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     dx, dx                          ; 2B D2
        mov     cx, 0x5b5                       ; B9 B5 05
        div     cx                              ; F7 F1
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     dx, dx                          ; 2B D2
        div     cx                              ; F7 F1
        mov     word ptr [bp + 6], dx           ; 89 56 06
        mov     si, 0x16e                       ; BE 6E 01
        jmp     L_0B52                          ; EB 0C
;   [loop start] L_0B46
L_0B46:
        sub     word ptr [bp + 6], si           ; 29 76 06
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        inc     word ptr [bx + 4]               ; FF 47 04
        mov     si, 0x16d                       ; BE 6D 01
;   [unconditional branch target] L_0B52
L_0B52:
        mov     ax, si                          ; 8B C6
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jae     L_0B46                          ; 73 ED
        sub     di, di                          ; 2B FF
;   [loop start] L_0B5B
L_0B5B:
        cmp     si, 0x16e                       ; 81 FE 6E 01
        jne     L_0B6B                          ; 75 0A
        cmp     di, 1                           ; 83 FF 01
        jne     L_0B6B                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0B6D                          ; EB 02
;   [conditional branch target (if/else)] L_0B6B
L_0B6B:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0B6D
L_0B6D:
        mov     cl, byte ptr [di + 0x10]        ; 8A 8D 10 00
        sub     ch, ch                          ; 2A ED
        add     ax, cx                          ; 03 C1
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        ja      L_0B83                          ; 77 06
        sub     word ptr [bp + 6], ax           ; 29 46 06
        inc     di                              ; 47
        jmp     L_0B5B                          ; EB D8
;   [conditional branch target (if/else)] L_0B83
L_0B83:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx], di               ; 89 3F
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bx + 2], ax           ; 89 47 02
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HWND      (2 uses)

; Description (heuristic):
;   Thin wrapper around SENDMESSAGE(hWnd, wMsg, wParam, lParam) -> LRESULT.

;-------------------------------------------------------------------------
; sub_0B92   offset=0x0B92  size=22 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_0B92
L_0B92:
        call    L_57CD                          ; E8 38 4C
        add     byte ptr [bp + si], al          ; 00 02
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    ds                              ; 1E
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A BD 0B 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        mov     ax, 0x7fff                      ; B8 FF 7F
        mov     dx, ax                          ; 8B D0
        push    dx                              ; 52
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A DA 05 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: CREATESOLIDBRUSH, GETSYSCOLOR.

;-------------------------------------------------------------------------
; sub_0BC2   offset=0x0BC2  size=32 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
;   GETSYSCOLOR
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_0BC2
L_0BC2:
        call    L_57CD                          ; E8 08 4C
        add     byte ptr [bx + si], al          ; 00 00
        mov     ax, 0x7f00                      ; B8 00 7F
        mov     dx, 0xff                        ; BA FF 00
        push    dx                              ; 52
        ;   ^ arg clr (high/segment)
        push    ax                              ; 50
        ;   ^ arg clr (low/offset)
        ; --> CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
        call    far GDI.CREATESOLIDBRUSH        ; 9A EB 0B 00 00 [FIXUP]
        mov     word ptr [0x20], ax             ; A3 20 00
        or      ax, ax                          ; 0B C0
        jne     L_0BDF                          ; 75 04
;   [loop start] L_0BDB
L_0BDB:
        sub     ax, ax                          ; 2B C0
        jmp     L_0C10                          ; EB 31
;   [conditional branch target (if/else)] L_0BDF
L_0BDF:
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A FB 0B 00 00 [FIXUP]
        push    dx                              ; 52
        ;   ^ arg clr (high/segment)
        push    ax                              ; 50
        ;   ^ arg clr (low/offset)
        ; --> CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
        call    far GDI.CREATESOLIDBRUSH        ; 9A 02 0C 00 00 [FIXUP]
        mov     word ptr [0x22], ax             ; A3 22 00
        or      ax, ax                          ; 0B C0
        je      L_0BDB                          ; 74 E5
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A 62 09 00 00 [FIXUP]
        push    dx                              ; 52
        ;   ^ arg clr (high/segment)
        push    ax                              ; 50
        ;   ^ arg clr (low/offset)
        ; --> CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
        call    far GDI.CREATESOLIDBRUSH        ; 9A 69 09 00 00 [FIXUP]
        mov     word ptr [0x1e], ax             ; A3 1E 00
        or      ax, ax                          ; 0B C0
        je      L_0BDB                          ; 74 CE
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_0C10
L_0C10:
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around DELETEOBJECT(hObj) -> BOOL.

;-------------------------------------------------------------------------
; sub_0C11   offset=0x0C11  size=15 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   DELETEOBJECT(HANDLE hObj) -> BOOL
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_0C11
L_0C11:
        call    L_57CD                          ; E8 B9 4B
        add     byte ptr [bx + si], al          ; 00 00
        cmp     word ptr [0x20], 0              ; 83 3E 20 00 00
        je      L_0C26                          ; 74 09
        push    word ptr [0x20]                 ; FF 36 20 00
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A 32 0C 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0C26
L_0C26:
        cmp     word ptr [0x22], 0              ; 83 3E 22 00 00
        je      L_0C36                          ; 74 09
        push    word ptr [0x22]                 ; FF 36 22 00
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A 42 0C 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0C36
L_0C36:
        cmp     word ptr [0x1e], 0              ; 83 3E 1E 00 00
        je      L_0C46                          ; 74 09
        push    word ptr [0x1e]                 ; FF 36 1E 00
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_0C46
L_0C46:
        ret                                     ; C3
; Description (heuristic):
;   Small helper using 2 API(s): FILLRECT, GETCLIENTRECT.

;-------------------------------------------------------------------------
; sub_0C47   offset=0x0C47  size=19 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   FILLRECT
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_0C47
L_0C47:
        call    L_57CD                          ; E8 83 4B
        add     ax, 0xff02                      ; 05 02 FF
        jbe     L_0C55                          ; 76 06
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A 7E 09 00 00 [FIXUP]
        mov     si, word ptr [0x20]             ; 8B 36 20 00
        mov     ax, word ptr [0x262]            ; A1 62 02
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        je      L_0C69                          ; 74 04
        mov     si, word ptr [0x22]             ; 8B 36 22 00
;   [conditional branch target (if/else)] L_0C69
L_0C69:
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        push    si                              ; 56
        call    far USER.FILLRECT               ; 9A 94 09 00 00 [FIXUP]
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HWND      (1 use)

; Description (heuristic):
;   Thin wrapper around GETDC(hWnd) -> HDC.

;-------------------------------------------------------------------------
; sub_0C78   offset=0x0C78  size=9 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   GETDC(HWND hWnd) -> HDC
;
; Near calls (internal): L_0C8E, L_57F5
;-------------------------------------------------------------------------
;   [sub-routine] L_0C78
L_0C78:
        call    L_57F5                          ; E8 7A 4B
        add     al, byte ptr [bx + di]          ; 02 01
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        push    si                              ; 56
        call    L_0C8E                          ; E8 03 00
        mov     ax, si                          ; 8B C6
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HDC       (1 use)

; Description (heuristic):
;   Mixed routine using: SELECTOBJECT, SETBKCOLOR, SETTEXTCOLOR (+1 more).

;-------------------------------------------------------------------------
; sub_0C8E   offset=0x0C8E  size=20 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   SETBKCOLOR(HDC hDC, DWORD clrBk) -> DWORD
;   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
;   GETSYSCOLOR
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_0C8E
L_0C8E:
        call    L_57CD                          ; E8 3C 4B
        add     byte ptr [bx + di], al          ; 00 01
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A AE 0C 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        ; --> SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
        call    far GDI.SETTEXTCOLOR            ; 9A A4 07 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A E4 0B 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        ; --> SETBKCOLOR(HDC hDC, DWORD clrBk) -> DWORD
        call    far GDI.SETBKCOLOR              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        push    word ptr [0x1e]                 ; FF 36 1E 00
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A D4 0C 00 00 [FIXUP]
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  INT       (1 use)
;     [bp+0x6]  HDC       (1 use)

; Description (heuristic):
;   Small helper using 2 API(s): BITBLT, SELECTOBJECT.

;-------------------------------------------------------------------------
; sub_0CC6   offset=0x0CC6  size=20 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_0CC6
L_0CC6:
        call    L_57CD                          ; E8 04 4B
        add     byte ptr [bp + si], al          ; 00 02
        push    word ptr [0x5c]                 ; FF 36 5C 00
        ;   ^ arg hDC
        push    word ptr [0x62]                 ; FF 36 62 00
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 5B 08 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDCDest
        push    word ptr [0x30c]                ; FF 36 0C 03
        ;   ^ arg x
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg y
        push    word ptr [0x30a]                ; FF 36 0A 03
        ;   ^ arg nWidth
        push    word ptr [0x30e]                ; FF 36 0E 03
        ;   ^ arg nHeight
        push    word ptr [0x5c]                 ; FF 36 5C 00
        ;   ^ arg hDCSrc
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A 83 08 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (13 instructions).

;-------------------------------------------------------------------------
; sub_0D00   offset=0x0D00  size=13 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_12D6, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_0D00
L_0D00:
        call    L_57CD                          ; E8 CA 4A
        add     byte ptr [bx + di], al          ; 00 01
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12D6                          ; E8 C9 05
        inc     ax                              ; 40
        inc     ax                              ; 40
        sub     dx, dx                          ; 2B D2
        mov     cx, 7                           ; B9 07 00
        div     cx                              ; F7 F1
        mov     ax, dx                          ; 8B C2
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (19 instructions).

;-------------------------------------------------------------------------
; sub_0D19   offset=0x0D19  size=19 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_0D19
L_0D19:
        call    L_57CD                          ; E8 B1 4A
        add     word ptr [bx + di], ax          ; 01 01
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     al, byte ptr [bx + 0x10]        ; 8A 87 10 00
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        sub     dx, dx                          ; 2B D2
        mov     cx, 4                           ; B9 04 00
        div     cx                              ; F7 F1
        or      dx, dx                          ; 0B D2
        jne     L_0D42                          ; 75 06
        cmp     word ptr [bx], 1                ; 83 3F 01
        jne     L_0D42                          ; 75 01
        inc     si                              ; 46
;   [error/early exit] L_0D42
L_0D42:
        mov     ax, si                          ; 8B C6
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (56 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0D45   offset=0x0D45  size=56 instr  segment=seg3.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_09EE, L_0D00, L_0D19, L_132D, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_0D45
L_0D45:
        call    L_57CD                          ; E8 85 4A
        add     ax, 0xb800                      ; 05 00 B8
        xchg    sp, ax                          ; 94
        add     dx, word ptr [bx + si - 0x48]   ; 03 50 B8
        sub     al, byte ptr [bx + si]          ; 2A 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_09EE                          ; E8 96 FC
        mov     ax, 0x226                       ; B8 26 02
        push    ax                              ; 50
        call    L_0D19                          ; E8 BA FF
        mov     word ptr [0x374], ax            ; A3 74 03
        lea     di, [bp - 8]                    ; 8D 7E F8
        mov     si, 0x226                       ; BE 26 02
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        call    L_0D00                          ; E8 87 FF
        mov     word ptr [0x466], ax            ; A3 66 04
        mov     ax, word ptr [0x374]            ; A1 74 03
        add     ax, word ptr [0x466]            ; 03 06 66 04
        add     ax, 6                           ; 05 06 00
        sub     dx, dx                          ; 2B D2
        mov     cx, 7                           ; B9 07 00
        div     cx                              ; F7 F1
        mov     word ptr [0x454], ax            ; A3 54 04
        mov     ax, word ptr [0x466]            ; A1 66 04
        add     ax, 0x394                       ; 05 94 03
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        jmp     L_0DAE                          ; EB 0E
;   [loop start] L_0DA0
L_0DA0:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        mov     byte ptr [bx], al               ; 88 07
        inc     word ptr [bp - 0xa]             ; FF 46 F6
;   [unconditional branch target] L_0DAE
L_0DAE:
        mov     ax, word ptr [0x374]            ; A1 74 03
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jbe     L_0DA0                          ; 76 EA
        mov     ax, word ptr [0x226]            ; A1 26 02
        cmp     word ptr [0x250], ax            ; 39 06 50 02
        jne     L_0DD5                          ; 75 16
        mov     ax, word ptr [0x22a]            ; A1 2A 02
        cmp     word ptr [0x254], ax            ; 39 06 54 02
        jne     L_0DD5                          ; 75 0D
        mov     si, word ptr [0x252]            ; 8B 36 52 02
        mov     bx, word ptr [0x466]            ; 8B 1E 66 04
        or      byte ptr [bx + si + 0x394], 0x40 ; 80 88 94 03 40
;   [conditional branch target (if/else)] L_0DD5
L_0DD5:
        call    L_132D                          ; E8 55 05
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (51 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0DD9   offset=0x0DD9  size=51 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_0DD9
L_0DD9:
        call    L_57CD                          ; E8 F1 49
        add     ax, 0xa100                      ; 05 00 A1
        cmp     byte ptr [bp + si], al          ; 38 02
        add     ax, word ptr [0x44e]            ; 03 06 4E 04
        cdq                                     ; 99
        mov     cx, 7                           ; B9 07 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x44e]            ; A1 4E 04
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
;   [loop start] L_0DFB
L_0DFB:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [bx + 0x5f4], ax       ; 89 87 F4 05
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     word ptr [bp - 2], ax           ; 01 46 FE
        inc     word ptr [bp - 6]               ; FF 46 FA
        cmp     word ptr [bp - 6], 7            ; 83 7E FA 07
        jl      L_0DFB                          ; 7C E5
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [0x238]            ; A1 38 02
        mov     word ptr [bx + 0x5f4], ax       ; 89 87 F4 05
        mov     ax, word ptr [0x260]            ; A1 60 02
        sub     ax, word ptr [0x456]            ; 2B 06 56 04
        cdq                                     ; 99
        mov     cx, word ptr [0x454]            ; 8B 0E 54 04
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [0x264]            ; A1 64 02
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        jmp     L_0E55                          ; EB 15
;   [loop start] L_0E40
L_0E40:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bx + 0x604], ax       ; 89 87 04 06
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     word ptr [bp - 8], ax           ; 01 46 F8
        inc     word ptr [bp - 6]               ; FF 46 FA
;   [unconditional branch target] L_0E55
L_0E55:
        mov     ax, word ptr [0x454]            ; A1 54 04
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jl      L_0E40                          ; 7C E3
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [0x242]            ; A1 42 02
        sub     ax, word ptr [0x456]            ; 2B 06 56 04
        mov     word ptr [bx + 0x604], ax       ; 89 87 04 06
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: PATBLT.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0E6E   offset=0x0E6E  size=31 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Far API calls:
;   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
;
; Near calls (internal): L_0DD9, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_0E6E
L_0E6E:
        call    L_57CD                          ; E8 5C 49
        add     al, byte ptr [bx + di]          ; 02 01
        call    L_0DD9                          ; E8 63 FF
        mov     ax, 0x604                       ; B8 04 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     cx, word ptr [0x454]            ; 8B 0E 54 04
        shl     cx, 1                           ; D1 E1
        add     ax, cx                          ; 03 C1
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_0EAD                          ; EB 24
;   [loop start] L_0E89
L_0E89:
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        push    word ptr [bx]                   ; FF 37
        ;   ^ arg y
        push    word ptr [0x238]                ; FF 36 38 02
        ;   ^ arg nWidth
        push    word ptr [0x456]                ; FF 36 56 04
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A E0 0E 00 00 [FIXUP]
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
;   [unconditional branch target] L_0EAD
L_0EAD:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jb      L_0E89                          ; 72 D4
        mov     ax, 0x5f6                       ; B8 F6 05
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        add     ax, 0xc                         ; 05 0C 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_0EE8                          ; EB 25
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HDC       (1 use)

; Description (heuristic):
;   Thin wrapper around PATBLT(hDC, x, y, nWidth, nHeight, dwRop) -> BOOL.

;-------------------------------------------------------------------------
; sub_0EC3   offset=0x0EC3  size=16 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
;-------------------------------------------------------------------------
;   [loop start] L_0EC3
L_0EC3:
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        push    word ptr [bx]                   ; FF 37
        ;   ^ arg x
        push    word ptr [0x264]                ; FF 36 64 02
        ;   ^ arg y
        push    word ptr [0x44e]                ; FF 36 4E 04
        ;   ^ arg nWidth
        push    word ptr [0x260]                ; FF 36 60 02
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A A8 08 00 00 [FIXUP]
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
;   [unconditional branch target] L_0EE8
L_0EE8:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jb      L_0EC3                          ; 72 D3
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HDC       (1 use)
;   Locals:
;     [bp-0x5e]   INT       (1 use)

; Description (heuristic):
;   Mixed routine using: TEXTOUT, LOADSTRING.

;-------------------------------------------------------------------------
; sub_0EF1   offset=0x0EF1  size=167 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;
; Near calls (internal): L_0909, L_10BC, L_11A1, L_11E4, L_1201, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_0EF1
L_0EF1:
        call    L_57CD                          ; E8 D9 48
        xor     ax, word ptr [bx + di]          ; 33 01
        mov     ax, word ptr [0x22a]            ; A1 2A 02
        add     ax, 0x7bc                       ; 05 BC 07
        mov     word ptr [bp - 0x11], ax        ; 89 46 EF
        mov     al, byte ptr [0x226]            ; A0 26 02
        inc     al                              ; FE C0
        mov     byte ptr [bp - 0x12], al        ; 88 46 EE
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far _entry_31                   ; 9A E9 09 00 00 [FIXUP]
        mov     word ptr [bp - 0x5e], ax        ; 89 46 A2
        imul    word ptr [0x462]                ; F7 2E 62 04
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0x238]            ; A1 38 02
        sub     ax, cx                          ; 2B C1
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
        mov     word ptr [bp - 0x5c], 2         ; C7 46 A4 02 00
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        push    ax                              ; 50
        ;   ^ arg x
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg y
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        ;   ^ arg lpszStr (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszStr (low/offset)
        push    word ptr [bp - 0x5e]            ; FF 76 A2
        ;   ^ arg cbStr
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A B4 09 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], 0x394      ; C7 46 F6 94 03
        mov     word ptr [bp - 0x5a], 0x604     ; C7 46 A6 04 06
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_109A                          ; E9 40 01
;   [loop start] L_0F5A
L_0F5A:
        mov     bx, word ptr [bp - 0x5a]        ; 8B 5E A6
        add     word ptr [bp - 0x5a], 2         ; 83 46 A6 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     bx, word ptr [bp - 0x5a]        ; 8B 5E A6
        mov     ax, word ptr [bx]               ; 8B 07
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0x56], 0x5f4     ; C7 46 AA F4 05
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [loop start] L_0F7B
L_0F7B:
        mov     bx, word ptr [bp - 0x56]        ; 8B 5E AA
        add     word ptr [bp - 0x56], 2         ; 83 46 AA 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, word ptr [bp - 0x56]        ; 8B 5E AA
        mov     ax, word ptr [bx]               ; 8B 07
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_0FE8                          ; 75 50
        push    word ptr [0x2fe]                ; FF 36 FE 02
        ;   ^ arg hInstance
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, 0x7ff3                      ; 05 F3 7F
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x62]                 ; 8D 46 9E
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x66], ax        ; 89 46 9A
        imul    word ptr [0x462]                ; F7 2E 62 04
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, cx                          ; 2B C1
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
        mov     ax, word ptr [0x264]            ; A1 64 02
        sub     ax, word ptr [0x5ec]            ; 2B 06 EC 05
        mov     word ptr [bp - 0x5c], ax        ; 89 46 A4
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        push    word ptr [bp - 0x58]            ; FF 76 A8
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        lea     ax, [bp - 0x62]                 ; 8D 46 9E
        push    ss                              ; 16
        ;   ^ arg lpszStr (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszStr (low/offset)
        push    word ptr [bp - 0x66]            ; FF 76 9A
        ;   ^ arg cbStr
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A 44 0F 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0FE8
L_0FE8:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0FF3                          ; 75 03
        jmp     L_1088                          ; E9 95 00
;   [conditional branch target (if/else)] L_0FF3
L_0FF3:
        mov     word ptr [bp - 0x5e], 2         ; C7 46 A2 02 00
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        and     al, 0x3f                        ; 24 3F
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        mov     word ptr [bp - 0x64], ax        ; 89 46 9C
        push    ax                              ; 50
        call    L_0909                          ; E8 00 F9
        mov     bx, word ptr [bp - 0x64]        ; 8B 5E 9C
        cmp     byte ptr [bx], 0x30             ; 80 3F 30
        jne     L_1017                          ; 75 06
        dec     word ptr [bp - 0x5e]            ; FF 4E A2
        inc     word ptr [bp - 0x64]            ; FF 46 9C
;   [conditional branch target (if/else)] L_1017
L_1017:
        mov     ax, word ptr [bp - 0x5e]        ; 8B 46 A2
        imul    word ptr [0x462]                ; F7 2E 62 04
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, cx                          ; 2B C1
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     ax, word ptr [0x464]            ; 2B 06 64 04
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp - 0xe]         ; 03 46 F2
        add     ax, word ptr [0x456]            ; 03 06 56 04
        mov     word ptr [bp - 0x5c], ax        ; 89 46 A4
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        test    byte ptr [bx], 0x40             ; F6 07 40
        je      L_105B                          ; 74 0D
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 8]               ; FF 76 F8
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_11A1                          ; E8 46 01
;   [conditional branch target (if/else)] L_105B
L_105B:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        test    byte ptr [bx], 0x80             ; F6 07 80
        je      L_1072                          ; 74 0F
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_10BC                          ; E8 4A 00
;   [conditional branch target (if/else)] L_1072
L_1072:
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        push    word ptr [bp - 0x58]            ; FF 76 A8
        ;   ^ arg x
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        ;   ^ arg y
        mov     ax, word ptr [bp - 0x64]        ; 8B 46 9C
        push    ds                              ; 1E
        ;   ^ arg lpszStr (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszStr (low/offset)
        push    word ptr [bp - 0x5e]            ; FF 76 A2
        ;   ^ arg cbStr
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A E4 0F 00 00 [FIXUP]
;   [unconditional branch target] L_1088
L_1088:
        inc     word ptr [bp - 4]               ; FF 46 FC
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        cmp     word ptr [bp - 4], 7            ; 83 7E FC 07
        jge     L_1097                          ; 7D 03
        jmp     L_0F7B                          ; E9 E4 FE
;   [conditional branch target (if/else)] L_1097
L_1097:
        inc     word ptr [bp - 2]               ; FF 46 FE
;   [unconditional branch target] L_109A
L_109A:
        mov     ax, word ptr [0x454]            ; A1 54 04
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jge     L_10A5                          ; 7D 03
        jmp     L_0F5A                          ; E9 B5 FE
;   [conditional branch target (if/else)] L_10A5
L_10A5:
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0x228]                ; FF 36 28 02
        call    L_11E4                          ; E8 35 01
        mov     ax, word ptr [0x2dc]            ; A1 DC 02
        cmp     word ptr [0x50], ax             ; 39 06 50 00
        jne     L_10BB                          ; 75 03
        call    L_1201                          ; E8 46 01
;   [error/early exit] L_10BB
L_10BB:
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: PATBLT.

;-------------------------------------------------------------------------
; sub_10BC   offset=0x10BC  size=87 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_10BC
L_10BC:
        call    L_57CD                          ; E8 0E 47
        add     al, 4                           ; 04 04
        mov     si, word ptr [0x462]            ; 8B 36 62 04
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, si                          ; 2B C6
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp + 8]           ; 03 46 08
        mov     cx, word ptr [0x44e]            ; 8B 0E 4E 04
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [0x44e]                ; F7 2E 4E 04
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     cx, word ptr [0x456]            ; 8B 0E 56 04
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     si, word ptr [0x456]            ; 8B 36 56 04
        sub     si, word ptr [0x2f4]            ; 2B 36 F4 02
        or      si, si                          ; 0B F6
        jle     L_110C                          ; 7E 04
        mov     ax, si                          ; 8B C6
        jmp     L_110E                          ; EB 02
;   [conditional branch target (if/else)] L_110C
L_110C:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_110E
L_110E:
        add     ax, word ptr [bp + 6]           ; 03 46 06
        add     ax, word ptr [0x464]            ; 03 06 64 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hDC
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg x
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg y
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg nWidth
        push    word ptr [0x456]                ; FF 36 56 04
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A 58 11 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hDC
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg x
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg y
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg nWidth
        push    word ptr [0x456]                ; FF 36 56 04
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A 7A 11 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hDC
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg x
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg y
        push    word ptr [0x44e]                ; FF 36 4E 04
        ;   ^ arg nWidth
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A 9C 11 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hDC
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg x
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg y
        push    word ptr [0x44e]                ; FF 36 4E 04
        ;   ^ arg nWidth
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A A5 0E 00 00 [FIXUP]
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  INT       (2 uses)
;     [bp+0xa]  HDC       (2 uses)

; Description (heuristic):
;   Thin wrapper around TEXTOUT(hDC, x, y, lpszStr, cbStr) -> BOOL.

;-------------------------------------------------------------------------
; sub_11A1   offset=0x11A1  size=27 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_11A1
L_11A1:
        call    L_57CD                          ; E8 29 46
        add     byte ptr [si], al               ; 00 04
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hDC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        ;   ^ arg x
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg y
        mov     ax, 0x64                        ; B8 64 00
        push    ds                              ; 1E
        ;   ^ arg lpszStr (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszStr (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg cbStr
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A DF 11 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hDC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [bp + 4]           ; 03 46 04
        sub     ax, word ptr [0x462]            ; 2B 06 62 04
        sub     ax, 3                           ; 2D 03 00
        push    ax                              ; 50
        ;   ^ arg x
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg y
        mov     ax, 0x66                        ; B8 66 00
        push    ds                              ; 1E
        ;   ^ arg lpszStr (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszStr (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg cbStr
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A 84 10 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around INVERTRECT.

;-------------------------------------------------------------------------
; sub_11E4   offset=0x11E4  size=13 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   INVERTRECT
;
; Near calls (internal): L_1237, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_11E4
L_11E4:
        call    L_57CD                          ; E8 E6 45
        push    es                              ; 06
        add     bh, bh                          ; 02 FF
        jbe     L_11F0                          ; 76 04
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ax                              ; 50
;   [conditional branch target (if/else)] L_11F0
L_11F0:
        call    L_1237                          ; E8 44 00
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.INVERTRECT             ; 9A FF FF 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around SETCARETPOS.

;-------------------------------------------------------------------------
; sub_1201   offset=0x1201  size=21 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   SETCARETPOS
;
; Near calls (internal): L_1237, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_1201
L_1201:
        call    L_57CD                          ; E8 C9 45
        push    es                              ; 06
        add     bh, bh                          ; 00 FF
        sub     byte ptr ss:[bp + si], al       ; 36 28 02
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ax                              ; 50
        call    L_1237                          ; E8 26 00
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        sub     ax, word ptr [0x462]            ; 2B 06 62 04
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [0x456]            ; 2B 06 56 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp - 2]               ; FF 76 FE
        push    ax                              ; 50
        call    far USER.SETCARETPOS            ; 9A FF FF 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (36 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1237   offset=0x1237  size=36 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_1237
L_1237:
        call    L_57CD                          ; E8 93 45
        add     ax, word ptr [bp + si]          ; 03 02
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, word ptr [0x466]            ; 03 06 66 04
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cdq                                     ; 99
        mov     cx, 7                           ; B9 07 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [si + 0x5f4]       ; 8B 84 F4 05
        add     ax, word ptr [0x44e]            ; 03 06 4E 04
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [si + 0x5f6]       ; 8B 84 F6 05
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     si, word ptr [bp - 6]           ; 8B 76 FA
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [si + 0x604]       ; 8B 84 04 06
        add     ax, word ptr [0x456]            ; 03 06 56 04
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     si, word ptr [bp - 6]           ; 8B 76 FA
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [si + 0x606]       ; 8B 84 06 06
        mov     word ptr [bx + 6], ax           ; 89 47 06
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (23 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_129C   offset=0x129C  size=23 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_129C
L_129C:
        call    L_57CD                          ; E8 2E 45
        add     byte ptr [si], al               ; 00 04
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx], 0                ; C7 07 00 00
        jmp     L_12C9                          ; EB 1F
;   [loop start] L_12AA
L_12AA:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr [bx], ax               ; 39 07
        jg      L_12D3                          ; 7F 1F
        add     word ptr [bp + 8], 2            ; 83 46 08 02
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     word ptr [bx], ax               ; 39 07
        jl      L_12C4                          ; 7C 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_12D5                          ; EB 11
;   [conditional branch target (if/else)] L_12C4
L_12C4:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        inc     word ptr [bx]                   ; FF 07
;   [unconditional branch target] L_12C9
L_12C9:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bx], ax               ; 39 07
        jl      L_12AA                          ; 7C D7
;   [error/early exit] L_12D3
L_12D3:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_12D5
L_12D5:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (34 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_12D6   offset=0x12D6  size=34 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57F5
;-------------------------------------------------------------------------
;   [sub-routine] L_12D6
L_12D6:
        call    L_57F5                          ; E8 1C 45
        add     al, byte ptr [bx + di]          ; 02 01
        mov     ax, 0x16d                       ; B8 6D 01
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mul     word ptr [bx + 4]               ; F7 67 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bx + 4], 0            ; 83 7F 04 00
        je      L_12F9                          ; 74 0C
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        dec     ax                              ; 48
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        inc     ax                              ; 40
        add     word ptr [bp - 4], ax           ; 01 46 FC
;   [conditional branch target (if/else)] L_12F9
L_12F9:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     bx, word ptr [bx]               ; 8B 1F
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x68]        ; 8B 87 68 00
        add     word ptr [bp - 4], ax           ; 01 46 FC
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        sub     dx, dx                          ; 2B D2
        mov     cx, 4                           ; B9 04 00
        div     cx                              ; F7 F1
        or      dx, dx                          ; 0B D2
        jne     L_1320                          ; 75 08
        cmp     word ptr [bx], 1                ; 83 3F 01
        jbe     L_1320                          ; 76 03
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [error/early exit] L_1320
L_1320:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        add     word ptr [bp - 4], ax           ; 01 46 FC
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (47 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_132D   offset=0x132D  size=47 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=4)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_12D6, L_3490, L_3695, L_36A4, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_132D
L_132D:
        call    L_57CD                          ; E8 9D 44
        or      byte ptr [bx + si], al          ; 08 00
        lea     di, [bp - 0xc]                  ; 8D 7E F4
        mov     si, 0x226                       ; BE 26 02
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12D6                          ; E8 8B FF
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        add     ax, word ptr [0x374]            ; 03 06 74 03
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 0x10]            ; FF 76 F0
        lea     ax, [bp - 2]                    ; 8D 46 FE
        push    ax                              ; 50
        call    L_3490                          ; E8 31 21
        call    L_3695                          ; E8 33 23
        mov     cx, ax                          ; 8B C8
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp - 2]               ; F7 6E FE
        add     ax, cx                          ; 03 C1
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_1399                          ; EB 28
;   [loop start] L_1371
L_1371:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        jae     L_13A1                          ; 73 23
        cmp     word ptr [bx + 2], 0            ; 83 7F 02 00
        je      L_1392                          ; 74 0E
        mov     si, ax                          ; 8B F0
        sub     si, word ptr [bp - 0x10]        ; 2B 76 F0
        mov     bx, word ptr [0x466]            ; 8B 1E 66 04
        or      byte ptr [bx + si + 0x394], 0x80 ; 80 88 94 03 80
;   [conditional branch target (if/else)] L_1392
L_1392:
        add     word ptr [bp - 4], 0xc          ; 83 46 FC 0C
        inc     word ptr [bp - 2]               ; FF 46 FE
;   [unconditional branch target] L_1399
L_1399:
        mov     ax, word ptr [0x26a]            ; A1 6A 02
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jl      L_1371                          ; 7C D0
;   [conditional branch target (if/else)] L_13A1
L_13A1:
        call    L_36A4                          ; E8 00 23
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: INVALIDATERECT, SETSCROLLPOS, SETSCROLLRANGE (+1 more).

;-------------------------------------------------------------------------
; sub_13A5   offset=0x13A5  size=55 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;   SETSCROLLPOS
;   SETSCROLLRANGE
;   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
;
; Near calls (internal): L_0598, L_14A1, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_13A5
L_13A5:
        call    L_57CD                          ; E8 25 44
        add     ax, 0x8300                      ; 05 00 83
        sbb     al, 0                           ; 3E 1C 00
        add     byte ptr [si + 0x7c], dh        ; 00 74 7C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0598                          ; E8 DF F1
        mov     word ptr [0x1c], 0              ; C7 06 1C 00 00 00
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x59f                       ; B8 9F 05
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        mul     word ptr [0x22a]                ; F7 26 2A 02
        add     ax, word ptr [0x226]            ; 03 06 26 02
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x27a]                ; FF 36 7A 02
        ;   ^ arg hWnd
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg nCmdShow
        ; --> SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
        call    far USER.SHOWWINDOW             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x280]                ; FF 36 80 02
        ;   ^ arg hWnd
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A 46 07 00 00 [FIXUP]
        mov     ax, word ptr [0x228]            ; A1 28 02
        mov     word ptr [0x286], ax            ; A3 86 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14A1                          ; E8 86 00
        mov     ax, word ptr [0x2e8]            ; A1 E8 02
        cmp     word ptr [0x50], ax             ; 39 06 50 00
        je      L_1427                          ; 74 03
        mov     ax, word ptr [0x2dc]            ; A1 DC 02
;   [conditional branch target (if/else)] L_1427
L_1427:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0598                          ; E8 6B F1
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (14 instructions).

;-------------------------------------------------------------------------
; sub_142E   offset=0x142E  size=14 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_142E
L_142E:
        call    L_57CD                          ; E8 9C 43
        add     byte ptr [bx + si], al          ; 00 00
        cmp     word ptr [0x2ee], 0             ; 83 3E EE 02 00
        je      L_1440                          ; 74 06
        dec     word ptr [0x2ee]                ; FF 0E EE 02
        jmp     L_1455                          ; EB 15
;   [conditional branch target (if/else)] L_1440
L_1440:
        cmp     word ptr [0x2f2], 0             ; 83 3E F2 02 00
        jne     L_144B                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_1458                          ; EB 0D
;   [conditional branch target (if/else)] L_144B
L_144B:
        dec     word ptr [0x2f2]                ; FF 0E F2 02
        mov     word ptr [0x2ee], 0xb           ; C7 06 EE 02 0B 00
;   [fall-through exit] L_1455
L_1455:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_1458
L_1458:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (14 instructions).

;-------------------------------------------------------------------------
; sub_1459   offset=0x1459  size=14 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_1459
L_1459:
        call    L_57CD                          ; E8 71 43
        add     byte ptr [bx + si], al          ; 00 00
        cmp     word ptr [0x2ee], 0xb           ; 83 3E EE 02 0B
        je      L_146B                          ; 74 06
        inc     word ptr [0x2ee]                ; FF 06 EE 02
        jmp     L_1480                          ; EB 15
;   [conditional branch target (if/else)] L_146B
L_146B:
        cmp     word ptr [0x2f2], 0x77          ; 83 3E F2 02 77
        jne     L_1476                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_1483                          ; EB 0D
;   [conditional branch target (if/else)] L_1476
L_1476:
        inc     word ptr [0x2f2]                ; FF 06 F2 02
        mov     word ptr [0x2ee], 0             ; C7 06 EE 02 00 00
;   [fall-through exit] L_1480
L_1480:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_1483
L_1483:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (13 instructions).

;-------------------------------------------------------------------------
; sub_1484   offset=0x1484  size=13 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_142E, L_1459, L_14A1, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_1484
L_1484:
        call    L_57CD                          ; E8 46 43
        add     byte ptr [bx + di], al          ; 00 01
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_1494                          ; 74 05
        call    L_1459                          ; E8 C7 FF
        jmp     L_1497                          ; EB 03
;   [conditional branch target (if/else)] L_1494
L_1494:
        call    L_142E                          ; E8 97 FF
;   [unconditional branch target] L_1497
L_1497:
        or      ax, ax                          ; 0B C0
        je      L_14A0                          ; 74 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14A1                          ; E8 01 00
;   [error/early exit] L_14A0
L_14A0:
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: SETSCROLLPOS, UPDATEWINDOW.

;-------------------------------------------------------------------------
; sub_14A1   offset=0x14A1  size=41 instr  segment=seg3.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=4)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   SETSCROLLPOS
;   UPDATEWINDOW(HWND hWnd) -> BOOL
;
; Near calls (internal): L_0D19, L_0D45, L_17A6, L_17BD, L_261E, L_57F5
;-------------------------------------------------------------------------
;   [sub-routine] L_14A1
L_14A1:
        call    L_57F5                          ; E8 51 43
        add     byte ptr [bx + si], al          ; 00 00
        mov     ax, 0x2ee                       ; B8 EE 02
        push    ax                              ; 50
        call    L_0D19                          ; E8 6C F8
        dec     ax                              ; 48
        cmp     ax, word ptr [0x286]            ; 3B 06 86 02
        jae     L_14BE                          ; 73 0A
        mov     ax, 0x2ee                       ; B8 EE 02
        push    ax                              ; 50
        call    L_0D19                          ; E8 5E F8
        dec     ax                              ; 48
        jmp     L_14C1                          ; EB 03
;   [conditional branch target (if/else)] L_14BE
L_14BE:
        mov     ax, word ptr [0x286]            ; A1 86 02
;   [unconditional branch target] L_14C1
L_14C1:
        mov     word ptr [0x2f0], ax            ; A3 F0 02
        call    L_17BD                          ; E8 F6 02
        or      ax, ax                          ; 0B C0
        je      L_1505                          ; 74 3A
        mov     di, 0x226                       ; BF 26 02
        mov     si, 0x2ee                       ; BE EE 02
        push    ds                              ; 1E
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        mul     word ptr [0x22a]                ; F7 26 2A 02
        add     ax, word ptr [0x226]            ; 03 06 26 02
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A EF 13 00 00 [FIXUP]
        call    L_0D45                          ; E8 4F F8
        call    L_17A6                          ; E8 AD 02
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A 5B 03 00 00 [FIXUP]
        call    L_261E                          ; E8 19 11
;   [error/early exit] L_1505
L_1505:
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: GETFOCUS.

;-------------------------------------------------------------------------
; sub_1506   offset=0x1506  size=52 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=4)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   GETFOCUS
;
; Near calls (internal): L_0598, L_129C, L_170B, L_17E1, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_1506
L_1506:
        call    L_57CD                          ; E8 C4 42
        add     ax, word ptr [bp + di]          ; 03 03
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x5f4                       ; B8 F4 05
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        call    L_129C                          ; E8 7F FD
        or      ax, ax                          ; 0B C0
        je      L_1582                          ; 74 61
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x604                       ; B8 04 06
        push    ax                              ; 50
        push    word ptr [0x454]                ; FF 36 54 04
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        call    L_129C                          ; E8 69 FD
        or      ax, ax                          ; 0B C0
        je      L_1582                          ; 74 4B
        mov     ax, 7                           ; B8 07 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     bx, ax                          ; 8B D8
        add     bx, word ptr [bp - 4]           ; 03 5E FC
        mov     word ptr [bp - 2], bx           ; 89 5E FE
        cmp     byte ptr [bx + 0x394], 0        ; 80 BF 94 03 00
        je      L_1582                          ; 74 36
        mov     di, 0x2ee                       ; BF EE 02
        mov     si, 0x226                       ; BE 26 02
        push    ds                              ; 1E
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     ax, bx                          ; 8B C3
        sub     ax, word ptr [0x466]            ; 2B 06 66 04
        push    ax                              ; 50
        call    L_170B                          ; E8 AA 01
        call    far USER.GETFOCUS               ; 9A 11 00 00 00 [FIXUP]
        cmp     ax, word ptr [0x2dc]            ; 3B 06 DC 02
        je      L_1575                          ; 74 09
        push    word ptr [0x2dc]                ; FF 36 DC 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0598                          ; E8 23 F0
;   [conditional branch target (if/else)] L_1575
L_1575:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_1582                          ; 74 07
        mov     ax, 0x226                       ; B8 26 02
        push    ax                              ; 50
        call    L_17E1                          ; E8 5F 02
;   [error/early exit] L_1582
L_1582:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (52 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1583   offset=0x1583  size=52 instr  segment=seg3.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=4)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_1484, L_14A1, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_1583
L_1583:
        call    L_57CD                          ; E8 47 42
        add     byte ptr [bp + si], al          ; 00 02
        mov     di, 0x2ee                       ; BF EE 02
        mov     si, 0x226                       ; BE 26 02
        push    ds                              ; 1E
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        je      L_15B0                          ; 74 16
        cmp     ax, 1                           ; 3D 01 00
        je      L_15BB                          ; 74 1C
        cmp     ax, 2                           ; 3D 02 00
        je      L_15C0                          ; 74 1C
        cmp     ax, 3                           ; 3D 03 00
        je      L_15D6                          ; 74 2D
        cmp     ax, 4                           ; 3D 04 00
        je      L_15E3                          ; 74 35
        jmp     L_15C7                          ; EB 17
;   [conditional branch target (if/else)] L_15B0
L_15B0:
        sub     ax, ax                          ; 2B C0
;   [loop start] L_15B2
L_15B2:
        push    ax                              ; 50
        call    L_1484                          ; E8 CE FE
;   [loop start] L_15B6
L_15B6:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_15FD                          ; EB 42
;   [conditional branch target (if/else)] L_15BB
L_15BB:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_15B2                          ; EB F2
;   [conditional branch target (if/else)] L_15C0
L_15C0:
        cmp     word ptr [0x2f2], 0             ; 83 3E F2 02 00
        jne     L_15CB                          ; 75 04
;   [loop start (also forward branch)] L_15C7
L_15C7:
        sub     ax, ax                          ; 2B C0
        jmp     L_15FD                          ; EB 32
;   [conditional branch target (if/else)] L_15CB
L_15CB:
        dec     word ptr [0x2f2]                ; FF 0E F2 02
;   [loop start] L_15CF
L_15CF:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14A1                          ; E8 CD FE
        jmp     L_15B6                          ; EB E0
;   [conditional branch target (if/else)] L_15D6
L_15D6:
        cmp     word ptr [0x2f2], 0x77          ; 83 3E F2 02 77
        je      L_15C7                          ; 74 EA
        inc     word ptr [0x2f2]                ; FF 06 F2 02
        jmp     L_15CF                          ; EB EC
;   [conditional branch target (if/else)] L_15E3
L_15E3:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     dx, dx                          ; 2B D2
        ; constant WM_SETTEXT
        mov     cx, 0xc                         ; B9 0C 00
        div     cx                              ; F7 F1
        mov     word ptr [0x2f2], ax            ; A3 F2 02
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     dx, dx                          ; 2B D2
        div     cx                              ; F7 F1
        mov     word ptr [0x2ee], dx            ; 89 16 EE 02
        jmp     L_15CF                          ; EB D2
;   [fall-through exit] L_15FD
L_15FD:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (114 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_15FE   offset=0x15FE  size=114 instr  segment=seg3.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: ret
;
; Near calls (first 8 of 9): L_0598, L_0D19, L_142E, L_1459, L_1484, L_170B, L_1754, L_17E1 ...
;-------------------------------------------------------------------------
;   [sub-routine] L_15FE
L_15FE:
        call    L_57CD                          ; E8 CC 41
        add     word ptr [si], ax               ; 01 04
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_160D                          ; 74 03
        jmp     L_1708                          ; E9 FB 00
;   [conditional branch target (if/else)] L_160D
L_160D:
        mov     ax, word ptr [0x2dc]            ; A1 DC 02
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        je      L_1618                          ; 74 03
        jmp     L_1708                          ; E9 F0 00
;   [conditional branch target (if/else)] L_1618
L_1618:
        push    si                              ; 56
        mov     di, 0x2ee                       ; BF EE 02
        mov     si, 0x226                       ; BE 26 02
        push    ds                              ; 1E
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     si                              ; 5E
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x22                        ; 3D 22 00
        jne     L_1630                          ; 75 03
        jmp     L_16D5                          ; E9 A5 00
;   [conditional branch target (if/else)] L_1630
L_1630:
        jbe     L_1635                          ; 76 03
        jmp     L_16EE                          ; E9 B9 00
;   [conditional branch target (if/else)] L_1635
L_1635:
        cmp     ax, 9                           ; 3D 09 00
        jne     L_163D                          ; 75 03
        jmp     L_16DA                          ; E9 9D 00
;   [conditional branch target (if/else)] L_163D
L_163D:
        cmp     ax, 0xd                         ; 3D 0D 00
        jne     L_1645                          ; 75 03
        jmp     L_16E5                          ; E9 A0 00
;   [conditional branch target (if/else)] L_1645
L_1645:
        cmp     ax, 0x21                        ; 3D 21 00
        jne     L_164D                          ; 75 03
        jmp     L_16CD                          ; E9 80 00
;   [conditional branch target (if/else)] L_164D
L_164D:
        jmp     L_1708                          ; E9 B8 00
;   [loop start] L_1650
L_1650:
        cmp     word ptr [0x2f0], 0             ; 83 3E F0 02 00
        je      L_165E                          ; 74 07
        mov     ax, word ptr [0x2f0]            ; A1 F0 02
        dec     ax                              ; 48
        push    ax                              ; 50
        jmp     L_16BA                          ; EB 5C
;   [conditional branch target (if/else)] L_165E
L_165E:
        call    L_142E                          ; E8 CD FD
        or      ax, ax                          ; 0B C0
        je      L_1671                          ; 74 0C
        mov     ax, 0x2ee                       ; B8 EE 02
        push    ax                              ; 50
        call    L_0D19                          ; E8 AD F6
        dec     ax                              ; 48
;   [loop start] L_166D
L_166D:
        push    ax                              ; 50
;   [loop start] L_166E
L_166E:
        call    L_1754                          ; E8 E3 00
;   [loop start (also forward branch)] L_1671
L_1671:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_170A                          ; E9 93 00
;   [loop start] L_1677
L_1677:
        mov     si, word ptr [0x2f0]            ; 8B 36 F0 02
        inc     si                              ; 46
        mov     ax, word ptr [0x374]            ; A1 74 03
        cmp     si, ax                          ; 3B F0
        jl      L_16B9                          ; 7C 36
        call    L_1459                          ; E8 D3 FD
        or      ax, ax                          ; 0B C0
        je      L_1671                          ; 74 E7
        sub     ax, ax                          ; 2B C0
        jmp     L_166D                          ; EB DF
;   [loop start] L_168E
L_168E:
        mov     si, word ptr [0x2f0]            ; 8B 36 F0 02
        sub     si, 7                           ; 83 EE 07
        or      si, si                          ; 0B F6
        jge     L_16B9                          ; 7D 20
        call    L_142E                          ; E8 92 FD
        or      ax, ax                          ; 0B C0
        je      L_1671                          ; 74 D1
        mov     ax, 0x2ee                       ; B8 EE 02
        push    ax                              ; 50
        call    L_0D19                          ; E8 72 F6
        add     ax, si                          ; 03 C6
        jmp     L_166D                          ; EB C2
;   [loop start] L_16AB
L_16AB:
        mov     si, word ptr [0x2f0]            ; 8B 36 F0 02
        add     si, 7                           ; 83 C6 07
        mov     ax, word ptr [0x374]            ; A1 74 03
        cmp     si, ax                          ; 3B F0
        jge     L_16BF                          ; 7D 06
;   [conditional branch target (if/else)] L_16B9
L_16B9:
        push    si                              ; 56
;   [unconditional branch target] L_16BA
L_16BA:
        call    L_170B                          ; E8 4E 00
        jmp     L_1671                          ; EB B2
;   [conditional branch target (if/else)] L_16BF
L_16BF:
        sub     si, word ptr [0x374]            ; 2B 36 74 03
        call    L_1459                          ; E8 93 FD
        or      ax, ax                          ; 0B C0
        je      L_1671                          ; 74 A7
        push    si                              ; 56
        jmp     L_166E                          ; EB A1
;   [unconditional branch target] L_16CD
L_16CD:
        sub     ax, ax                          ; 2B C0
;   [loop start] L_16CF
L_16CF:
        push    ax                              ; 50
        call    L_1484                          ; E8 B1 FD
        jmp     L_1671                          ; EB 9C
;   [unconditional branch target] L_16D5
L_16D5:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_16CF                          ; EB F5
;   [unconditional branch target] L_16DA
L_16DA:
        push    word ptr [0x2e8]                ; FF 36 E8 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0598                          ; E8 B5 EE
        jmp     L_1671                          ; EB 8C
;   [unconditional branch target] L_16E5
L_16E5:
        mov     ax, 0x226                       ; B8 26 02
        push    ax                              ; 50
        call    L_17E1                          ; E8 F5 00
        jmp     L_1671                          ; EB 83
;   [unconditional branch target] L_16EE
L_16EE:
        cmp     ax, 0x25                        ; 3D 25 00
        jne     L_16F6                          ; 75 03
        jmp     L_1650                          ; E9 5A FF
;   [conditional branch target (if/else)] L_16F6
L_16F6:
        cmp     ax, 0x26                        ; 3D 26 00
        je      L_168E                          ; 74 93
        cmp     ax, 0x27                        ; 3D 27 00
        jne     L_1703                          ; 75 03
        jmp     L_1677                          ; E9 74 FF
;   [conditional branch target (if/else)] L_1703
L_1703:
        cmp     ax, 0x28                        ; 3D 28 00
        je      L_16AB                          ; 74 A3
;   [fall-through exit] L_1708
L_1708:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_170A
L_170A:
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x2]   HDC       (1 use)

; Description (heuristic):
;   Thin wrapper around RELEASEDC(hWnd, hDC) -> INT.

;-------------------------------------------------------------------------
; sub_170B   offset=0x170B  size=27 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;
; Near calls (internal): L_0C78, L_11E4, L_1201, L_17BD, L_261E, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_170B
L_170B:
        call    L_57CD                          ; E8 BF 40
        add     word ptr [bx + di], ax          ; 01 01
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x2f0], ax            ; A3 F0 02
        call    L_17BD                          ; E8 A4 00
        or      ax, ax                          ; 0B C0
        je      L_1753                          ; 74 36
        push    word ptr [0x2dc]                ; FF 36 DC 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0C78                          ; E8 52 F5
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        push    word ptr [0x228]                ; FF 36 28 02
        call    L_11E4                          ; E8 B3 FA
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x228], ax            ; A3 28 02
        mov     word ptr [0x286], ax            ; A3 86 02
        push    ax                              ; 50
        call    L_11E4                          ; E8 A3 FA
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ;   ^ arg hWnd
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        call    L_1201                          ; E8 B1 FA
        call    L_261E                          ; E8 CB 0E
;   [error/early exit] L_1753
L_1753:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (13 instructions).

;-------------------------------------------------------------------------
; sub_1754   offset=0x1754  size=13 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_14A1, L_17BD, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_1754
L_1754:
        call    L_57CD                          ; E8 76 40
        add     byte ptr [bx + di], al          ; 00 01
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x2f0], ax            ; A3 F0 02
        call    L_17BD                          ; E8 5B 00
        or      ax, ax                          ; 0B C0
        je      L_1771                          ; 74 0B
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x286], ax            ; A3 86 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14A1                          ; E8 30 FD
;   [error/early exit] L_1771
L_1771:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (26 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1772   offset=0x1772  size=26 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=4)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_170B, L_1754, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_1772
L_1772:
        call    L_57CD                          ; E8 58 40
        add     word ptr [bx + di], ax          ; 01 01
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     si, word ptr [bx + 2]           ; 8B 77 02
        mov     ax, word ptr [0x226]            ; A1 26 02
        cmp     word ptr [bx], ax               ; 39 07
        jne     L_1792                          ; 75 0E
        mov     ax, word ptr [0x22a]            ; A1 2A 02
        cmp     word ptr [bx + 4], ax           ; 39 47 04
        jne     L_1792                          ; 75 06
        push    si                              ; 56
        call    L_170B                          ; E8 7B FF
        jmp     L_17A5                          ; EB 13
;   [conditional branch target (if/else)] L_1792
L_1792:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    si                              ; 56
        mov     di, 0x2ee                       ; BF EE 02
        mov     si, ax                          ; 8B F0
        push    ds                              ; 1E
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     si                              ; 5E
        push    si                              ; 56
        call    L_1754                          ; E8 AF FF
;   [fall-through exit] L_17A5
L_17A5:
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around INVALIDATERECT(hWnd, lpRect, bErase) -> VOID.

;-------------------------------------------------------------------------
; sub_17A6   offset=0x17A6  size=10 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_17A6
L_17A6:
        call    L_57CD                          ; E8 24 40
        add     al, 0                           ; 04 00
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ;   ^ arg hWnd
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A 0C 14 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around GETFOCUS.

;-------------------------------------------------------------------------
; sub_17BD   offset=0x17BD  size=18 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   GETFOCUS
;
; Near calls (internal): L_0598, L_12D6, L_3944, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_17BD
L_17BD:
        call    L_57CD                          ; E8 0D 40
        add     al, byte ptr [bx + si]          ; 02 00
        call    far USER.GETFOCUS               ; 9A 62 15 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     ax, 0x2ee                       ; B8 EE 02
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12D6                          ; E8 04 FB
        push    ax                              ; 50
        call    L_3944                          ; E8 6E 21
        mov     di, ax                          ; 8B F8
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0598                          ; E8 BA ED
        mov     ax, di                          ; 8B C7
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: FILLRECT, GETCLIENTRECT, RELEASEDC (+1 more).

;-------------------------------------------------------------------------
; sub_17E1   offset=0x17E1  size=47 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   FILLRECT
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
;
; Near calls (internal): L_0598, L_0B92, L_0C78, L_1864, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_17E1
L_17E1:
        call    L_57CD                          ; E8 E9 3F
        or      word ptr [bx + di], ax          ; 09 01
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        jne     L_185D                          ; 75 70
        mov     word ptr [0x1c], 1              ; C7 06 1C 00 01 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0598                          ; E8 9D ED
        mov     ax, word ptr [0x2e8]            ; A1 E8 02
        cmp     word ptr [0x50], ax             ; 39 06 50 00
        je      L_180A                          ; 74 06
        mov     ax, word ptr [0x27a]            ; A1 7A 02
        mov     word ptr [0x50], ax             ; A3 50 00
;   [conditional branch target (if/else)] L_180A
L_180A:
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ;   ^ arg hWnd
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A 55 0C 00 00 [FIXUP]
        mov     ax, word ptr [0x456]            ; A1 56 04
        sub     word ptr [bp - 2], ax           ; 29 46 FE
        push    word ptr [0x2dc]                ; FF 36 DC 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0C78                          ; E8 51 F4
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x22]                 ; FF 36 22 00
        call    far USER.FILLRECT               ; 9A 73 0C 00 00 [FIXUP]
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ;   ^ arg hWnd
        push    word ptr [bp - 0x10]            ; FF 76 F0
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 49 17 00 00 [FIXUP]
        push    word ptr [0x27a]                ; FF 36 7A 02
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    L_0B92                          ; E8 42 F3
        push    word ptr [0x27a]                ; FF 36 7A 02
        ;   ^ arg hWnd
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nCmdShow
        ; --> SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
        call    far USER.SHOWWINDOW             ; 9A FB 13 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_185D
L_185D:
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1864                          ; E8 01 00
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: INVALIDATERECT, UPDATEWINDOW.

;-------------------------------------------------------------------------
; sub_1864   offset=0x1864  size=72 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=4)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;   UPDATEWINDOW(HWND hWnd) -> BOOL
;
; Near calls (first 8 of 10): L_0598, L_0D45, L_12D6, L_1A48, L_1FB8, L_2066, L_20C2, L_261E ...
;-------------------------------------------------------------------------
;   [sub-routine] L_1864
L_1864:
        call    L_57CD                          ; E8 66 3F
        add     word ptr [bx + di], ax          ; 01 01
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12D6                          ; E8 65 FA
        push    ax                              ; 50
        call    L_3944                          ; E8 CF 20
        or      ax, ax                          ; 0B C0
        je      L_18AA                          ; 74 31
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [0x226]            ; A1 26 02
        cmp     word ptr [bx], ax               ; 39 07
        jne     L_188B                          ; 75 08
        mov     ax, word ptr [0x22a]            ; A1 2A 02
        cmp     word ptr [bx + 4], ax           ; 39 47 04
        je      L_1890                          ; 74 05
;   [conditional branch target (if/else)] L_188B
L_188B:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_1892                          ; EB 02
;   [conditional branch target (if/else)] L_1890
L_1890:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_1892
L_1892:
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    si                              ; 56
        mov     di, 0x226                       ; BF 26 02
        mov     si, ax                          ; 8B F0
        push    ds                              ; 1E
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     si                              ; 5E
        or      si, si                          ; 0B F6
        je      L_18AA                          ; 74 03
        call    L_0D45                          ; E8 9B F4
;   [conditional branch target (if/else)] L_18AA
L_18AA:
        push    word ptr [0x230]                ; FF 36 30 02
        call    L_1A48                          ; E8 97 01
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1FB8                          ; E8 FF 06
        mov     ax, word ptr [0x2e8]            ; A1 E8 02
        cmp     word ptr [0x50], ax             ; 39 06 50 00
        jne     L_18C8                          ; 75 06
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0598                          ; E8 D0 EC
;   [conditional branch target (if/else)] L_18C8
L_18C8:
        call    L_2066                          ; E8 9B 07
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    L_20C2                          ; E8 F0 07
        push    word ptr [0x280]                ; FF 36 80 02
        ;   ^ arg hWnd
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A B8 17 00 00 [FIXUP]
        push    word ptr [0x280]                ; FF 36 80 02
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A FE 14 00 00 [FIXUP]
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ;   ^ arg hWnd
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A DF 18 00 00 [FIXUP]
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A E8 18 00 00 [FIXUP]
        call    L_261E                          ; E8 15 0D
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: TEXTOUT, DRAWTEXT, SENDMESSAGE (+1 more).

;-------------------------------------------------------------------------
; sub_190A   offset=0x190A  size=127 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
;   DRAWTEXT
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   VALIDATERECT(HWND hWnd, LPRECT lpRect) -> VOID
;
; Near calls (internal): L_08DE, L_0CC6, L_1F6D, L_24E7, L_2503, L_43CA, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_190A
L_190A:
        call    L_57CD                          ; E8 C0 3E
        adc     ax, word ptr [bx + di]          ; 13 01
        call    L_24E7                          ; E8 D5 0B
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [0x452]            ; A1 52 04
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr [0x378]            ; A1 78 03
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        sub     di, di                          ; 2B FF
        jmp     L_1A3B                          ; E9 15 01
;   [loop start] L_1926
L_1926:
        push    di                              ; 57
        call    L_1F6D                          ; E8 43 06
        mov     si, ax                          ; 8B F0
        push    di                              ; 57
        call    L_43CA                          ; E8 9A 2A
        or      ax, ax                          ; 0B C0
        je      L_193B                          ; 74 07
        push    word ptr [bp + 4]               ; FF 76 04
        push    si                              ; 56
        call    L_0CC6                          ; E8 8B F3
;   [conditional branch target (if/else)] L_193B
L_193B:
        mov     bx, di                          ; 8B DF
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x310]       ; 8B 87 10 03
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    ax                              ; 50
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        push    ax                              ; 50
        call    L_08DE                          ; E8 8E EF
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        or      di, di                          ; 0B FF
        je      L_1963                          ; 74 0C
        cmp     word ptr [bp - 0xe], 0x2d0      ; 81 7E F2 D0 02
        je      L_1963                          ; 74 05
        mov     word ptr [bp - 0x10], 5         ; C7 46 F0 05 00
;   [conditional branch target (if/else)] L_1963
L_1963:
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        push    word ptr [0x24e]                ; FF 36 4E 02
        ;   ^ arg x
        push    si                              ; 56
        ;   ^ arg y
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        push    ss                              ; 16
        ;   ^ arg lpszStr (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszStr (low/offset)
        push    word ptr [bp - 0x10]            ; FF 76 F0
        ;   ^ arg cbStr
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A BD 11 00 00 [FIXUP]
        push    di                              ; 57
        call    L_1F6D                          ; E8 F1 05
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        add     ax, word ptr [0x464]            ; 03 06 64 04
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 2], 0x81         ; C7 46 FE 81 00
        mov     bx, di                          ; 8B DF
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x312]       ; 8B 87 12 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_19A6                          ; 74 09
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [conditional branch target (if/else)] L_19A6
L_19A6:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far USER.DRAWTEXT               ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x24a], di            ; 39 3E 4A 02
        jne     L_1A3A                          ; 75 74
        push    word ptr [0x27a]                ; FF 36 7A 02
        ;   ^ arg hWnd
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> VALIDATERECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.VALIDATERECT           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x27a]                ; FF 36 7A 02
        ;   ^ arg hWnd
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A F3 19 00 00 [FIXUP]
        push    word ptr [0x27a]                ; FF 36 7A 02
        ;   ^ arg hWnd
        mov     ax, 0x400                       ; B8 00 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 0B 1A 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        push    word ptr [0x27a]                ; FF 36 7A 02
        ;   ^ arg hWnd
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 20 1A 00 00 [FIXUP]
        push    word ptr [0x27a]                ; FF 36 7A 02
        ;   ^ arg hWnd
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wParam
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 36 1A 00 00 [FIXUP]
        push    word ptr [0x27a]                ; FF 36 7A 02
        ;   ^ arg hWnd
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg lParam (high/segment)
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A A7 0B 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1A3A
L_1A3A:
        inc     di                              ; 47
;   [unconditional branch target] L_1A3B
L_1A3B:
        cmp     word ptr [0x274], di            ; 39 3E 74 02
        jle     L_1A44                          ; 7E 03
        jmp     L_1926                          ; E9 E2 FE
;   [conditional branch target (if/else)] L_1A44
L_1A44:
        call    L_2503                          ; E8 BC 0A
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (53 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1A48   offset=0x1A48  size=53 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_1ACA, L_1B10, L_1B87, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_1A48
L_1A48:
        call    L_57CD                          ; E8 82 3D
        add     ax, word ptr [bx + di]          ; 03 01
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 0x310                       ; B8 10 03
        push    ax                              ; 50
        call    L_1B87                          ; E8 2E 01
        mov     ax, 0x310                       ; B8 10 03
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     cx, word ptr [0x448]            ; 8B 0E 48 04
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        add     ax, cx                          ; 03 C1
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_1A84                          ; EB 16
;   [loop start] L_1A6E
L_1A6E:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        push    word ptr [bx]                   ; FF 37
        mov     ax, bx                          ; 8B C3
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        call    L_1B10                          ; E8 94 00
        or      ax, ax                          ; 0B C0
        je      L_1A8C                          ; 74 0C
        add     word ptr [bp - 2], 4            ; 83 46 FE 04
;   [unconditional branch target] L_1A84
L_1A84:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jb      L_1A6E                          ; 72 E2
;   [conditional branch target (if/else)] L_1A8C
L_1A8C:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jle     L_1AC9                          ; 7E 2C
        push    ax                              ; 50
        call    L_1ACA                          ; E8 29 00
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, 0x310                       ; 05 10 03
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_1AC2                          ; EB 12
;   [loop start] L_1AB0
L_1AB0:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        push    word ptr [bx]                   ; FF 37
        mov     ax, bx                          ; 8B C3
        sub     ax, 4                           ; 2D 04 00
        push    ax                              ; 50
        call    L_1B87                          ; E8 C9 00
        sub     word ptr [bp - 2], 4            ; 83 6E FE 04
;   [unconditional branch target] L_1AC2
L_1AC2:
        cmp     word ptr [bp - 2], 0x310        ; 81 7E FE 10 03
        ja      L_1AB0                          ; 77 E7
;   [error/early exit] L_1AC9
L_1AC9:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (16 instructions).

;-------------------------------------------------------------------------
; sub_1ACA   offset=0x1ACA  size=16 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_35FF, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_1ACA
L_1ACA:
        call    L_57CD                          ; E8 00 3D
        add     byte ptr [bx + di], al          ; 00 01
        mov     ax, 0x310                       ; B8 10 03
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, 0x310                       ; 05 10 03
        push    ax                              ; 50
        mov     ax, word ptr [0x274]            ; A1 74 02
        sub     ax, word ptr [bp + 4]           ; 2B 46 04
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        call    L_35FF                          ; E8 13 1B
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (16 instructions).

;-------------------------------------------------------------------------
; sub_1AED   offset=0x1AED  size=16 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_35FF, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_1AED
L_1AED:
        call    L_57CD                          ; E8 DD 3C
        add     byte ptr [bx + di], al          ; 00 01
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, 0x310                       ; 05 10 03
        push    ax                              ; 50
        mov     ax, 0x310                       ; B8 10 03
        push    ax                              ; 50
        mov     ax, word ptr [0x274]            ; A1 74 02
        sub     ax, word ptr [bp + 4]           ; 2B 46 04
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        call    L_35FF                          ; E8 F0 1A
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (44 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1B10   offset=0x1B10  size=44 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_21E7, L_220A, L_24F6, L_2503, L_2538, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_1B10
L_1B10:
        call    L_57CD                          ; E8 BA 3C
        add     ax, word ptr [bp + si]          ; 03 02
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_220A                          ; E8 EF 06
        mov     word ptr [bp - 2], 0x5a0        ; C7 46 FE A0 05
        call    L_24F6                          ; E8 D3 09
        mov     bx, ax                          ; 8B D8
        mov     word ptr [bp - 6], bx           ; 89 5E FA
        mov     ax, word ptr [0x468]            ; A1 68 04
        cmp     word ptr [bx + 8], ax           ; 39 47 08
        je      L_1B40                          ; 74 10
        push    bx                              ; 53
        call    L_2538                          ; E8 04 0A
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0x468]            ; 8B 1E 68 04
        mov     ax, word ptr [bx + si + 2]      ; 8B 40 02
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [conditional branch target (if/else)] L_1B40
L_1B40:
        call    L_2503                          ; E8 C0 09
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_21E7                          ; E8 9E 06
        cmp     ax, word ptr [bp - 2]           ; 3B 46 FE
        jle     L_1B53                          ; 7E 05
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_1B59                          ; EB 06
;   [conditional branch target (if/else)] L_1B53
L_1B53:
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_21E7                          ; E8 8E 06
;   [unconditional branch target] L_1B59
L_1B59:
        mov     word ptr [bp + 6], ax           ; 89 46 06
        cmp     ax, 0x5a0                       ; 3D A0 05
        jne     L_1B65                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_1B86                          ; EB 21
;   [conditional branch target (if/else)] L_1B65
L_1B65:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_1B7A                          ; 75 05
        mov     ax, word ptr [0x468]            ; A1 68 04
        jmp     L_1B7D                          ; EB 03
;   [conditional branch target (if/else)] L_1B7A
L_1B7A:
        mov     ax, 0xffff                      ; B8 FF FF
;   [unconditional branch target] L_1B7D
L_1B7D:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx + 2], ax           ; 89 47 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_1B86
L_1B86:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (49 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1B87   offset=0x1B87  size=49 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_220A, L_24E7, L_2503, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_1B87
L_1B87:
        call    L_57CD                          ; E8 43 3C
        add     al, byte ptr [bp + si]          ; 02 02
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_220A                          ; E8 78 06
        mov     word ptr [bp - 2], 0xffff       ; C7 46 FE FF FF
        cmp     word ptr [0x270], -1            ; 83 3E 70 02 FF
        je      L_1BB0                          ; 74 12
        call    L_24E7                          ; E8 46 09
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0x270]            ; 8B 1E 70 02
        mov     ax, word ptr [bx + si + 2]      ; 8B 40 02
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        call    L_2503                          ; E8 53 09
;   [conditional branch target (if/else)] L_1BB0
L_1BB0:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        dec     ax                              ; 48
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_1BCD                          ; 74 10
        cdq                                     ; 99
        mov     cx, word ptr [0x258]            ; 8B 0E 58 02
        idiv    cx                              ; F7 F9
        sub     word ptr [bp - 4], dx           ; 29 56 FC
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jge     L_1BD2                          ; 7D 05
;   [conditional branch target (if/else)] L_1BCD
L_1BCD:
        mov     word ptr [bp - 4], 0xffff       ; C7 46 FC FF FF
;   [conditional branch target (if/else)] L_1BD2
L_1BD2:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jle     L_1BDF                          ; 7E 05
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_1BE2                          ; EB 03
;   [conditional branch target (if/else)] L_1BDF
L_1BDF:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
;   [unconditional branch target] L_1BE2
L_1BE2:
        mov     word ptr [bp + 6], ax           ; 89 46 06
        inc     ax                              ; 40
        jne     L_1BEC                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_1C0D                          ; EB 21
;   [conditional branch target (if/else)] L_1BEC
L_1BEC:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_1C01                          ; 75 05
        mov     ax, word ptr [0x270]            ; A1 70 02
        jmp     L_1C04                          ; EB 03
;   [conditional branch target (if/else)] L_1C01
L_1C01:
        mov     ax, 0xffff                      ; B8 FF FF
;   [unconditional branch target] L_1C04
L_1C04:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx + 2], ax           ; 89 47 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_1C0D
L_1C0D:
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: INVALIDATERECT.

;-------------------------------------------------------------------------
; sub_1C0E   offset=0x1C0E  size=66 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;
; Near calls (internal): L_0598, L_1A48, L_1C9F, L_1DCD, L_1FB8, L_20C2, L_211B, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_1C0E
L_1C0E:
        call    L_57CD                          ; E8 BC 3B
        add     al, 2                           ; 04 02
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        je      L_1C30                          ; 74 16
        cmp     ax, 1                           ; 3D 01 00
        je      L_1C45                          ; 74 26
        cmp     ax, 2                           ; 3D 02 00
        je      L_1C54                          ; 74 30
        cmp     ax, 3                           ; 3D 03 00
        je      L_1C5A                          ; 74 31
        cmp     ax, 4                           ; 3D 04 00
        je      L_1C60                          ; 74 32
        jmp     L_1C9C                          ; EB 6C
;   [conditional branch target (if/else)] L_1C30
L_1C30:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
;   [loop start] L_1C34
L_1C34:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C9F                          ; E8 5F 00
;   [loop start] L_1C40
L_1C40:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_1C9E                          ; EB 59
;   [conditional branch target (if/else)] L_1C45
L_1C45:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
;   [loop start] L_1C49
L_1C49:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1DCD                          ; E8 7B 01
        jmp     L_1C40                          ; EB EC
;   [conditional branch target (if/else)] L_1C54
L_1C54:
        push    word ptr [0x448]                ; FF 36 48 04
        jmp     L_1C34                          ; EB DA
;   [conditional branch target (if/else)] L_1C5A
L_1C5A:
        push    word ptr [0x448]                ; FF 36 48 04
        jmp     L_1C49                          ; EB E9
;   [conditional branch target (if/else)] L_1C60
L_1C60:
        mov     ax, word ptr [0x27a]            ; A1 7A 02
        cmp     word ptr [0x50], ax             ; 39 06 50 00
        jne     L_1C71                          ; 75 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0598                          ; E8 27 E9
;   [conditional branch target (if/else)] L_1C71
L_1C71:
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_211B                          ; E8 A4 04
        push    ax                              ; 50
        call    L_1A48                          ; E8 CD FD
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1FB8                          ; E8 35 03
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_20C2                          ; E8 39 04
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ;   ^ arg hWnd
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A F9 18 00 00 [FIXUP]
        jmp     L_1C40                          ; EB A4
;   [fall-through exit] L_1C9C
L_1C9C:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_1C9E
L_1C9E:
        ret                                     ; C3
; Description (heuristic):
;   Drawing routine (4 GDI APIs).

;-------------------------------------------------------------------------
; sub_1C9F   offset=0x1C9F  size=119 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
;   ANYPOPUP
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SCROLLWINDOW
;   UPDATEWINDOW(HWND hWnd) -> BOOL
;
; Near calls (internal): L_0598, L_0C78, L_1ACA, L_1B87, L_1F16, L_1FB8, L_20E8, L_57F5
;-------------------------------------------------------------------------
;   [sub-routine] L_1C9F
L_1C9F:
        call    L_57F5                          ; E8 53 3B
        or      ax, word ptr [bp + di]          ; 0B 03
        mov     ax, word ptr [0x27a]            ; A1 7A 02
        cmp     word ptr [0x50], ax             ; 39 06 50 00
        jne     L_1CB5                          ; 75 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0598                          ; E8 E3 E8
;   [conditional branch target (if/else)] L_1CB5
L_1CB5:
        mov     ax, word ptr [0x310]            ; A1 10 03
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        sub     si, si                          ; 2B F6
        jmp     L_1CE3                          ; EB 24
;   [loop start] L_1CBF
L_1CBF:
        push    word ptr [0x310]                ; FF 36 10 03
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ax                              ; 50
        call    L_1B87                          ; E8 BD FE
        or      ax, ax                          ; 0B C0
        je      L_1CE8                          ; 74 1A
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_1ACA                          ; E8 F5 FD
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        mov     word ptr [0x310], ax            ; A3 10 03
        mov     word ptr [0x312], dx            ; 89 16 12 03
        inc     si                              ; 46
;   [unconditional branch target] L_1CE3
L_1CE3:
        cmp     word ptr [bp + 0xa], si         ; 39 76 0A
        jg      L_1CBF                          ; 7F D7
;   [conditional branch target (if/else)] L_1CE8
L_1CE8:
        or      si, si                          ; 0B F6
        je      L_1D5B                          ; 74 6F
        cmp     word ptr [bp - 0x10], 0x2d0     ; 81 7E F0 D0 02
        je      L_1D25                          ; 74 32
        push    word ptr [0x2dc]                ; FF 36 DC 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0C78                          ; E8 7C EF
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    ax                              ; 50
        ;   ^ arg hDC
        push    word ptr [0x45a]                ; FF 36 5A 04
        ;   ^ arg x
        push    word ptr [0x458]                ; FF 36 58 04
        ;   ^ arg y
        mov     ax, 0x82                        ; B8 82 00
        push    ds                              ; 1E
        ;   ^ arg lpszStr (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszStr (low/offset)
        mov     ax, word ptr [0x45e]            ; A1 5E 04
        sub     ax, 6                           ; 2D 06 00
        push    ax                              ; 50
        ;   ^ arg cbStr
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A 74 19 00 00 [FIXUP]
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ;   ^ arg hWnd
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 41 18 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1D25
L_1D25:
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ;   ^ arg hWnd
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A 14 18 00 00 [FIXUP]
        mov     ax, word ptr [0x458]            ; A1 58 04
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [0x37a]            ; A1 7A 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x2dc]                ; FF 36 DC 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [0x5ec]            ; A1 EC 05
        imul    si                              ; F7 EE
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SCROLLWINDOW           ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1D5B
L_1D5B:
        sub     di, di                          ; 2B FF
        cmp     word ptr [bp + 8], di           ; 39 7E 08
        je      L_1D79                          ; 74 17
        mov     ax, word ptr [0x24a]            ; A1 4A 02
        add     ax, si                          ; 03 C6
        cmp     ax, word ptr [0x448]            ; 3B 06 48 04
        jge     L_1D74                          ; 7D 07
        mov     ax, word ptr [0x24a]            ; A1 4A 02
        add     ax, si                          ; 03 C6
        jmp     L_1D77                          ; EB 03
;   [conditional branch target (if/else)] L_1D74
L_1D74:
        mov     ax, word ptr [0x448]            ; A1 48 04
;   [unconditional branch target] L_1D77
L_1D77:
        mov     di, ax                          ; 8B F8
;   [conditional branch target (if/else)] L_1D79
L_1D79:
        push    di                              ; 57
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1FB8                          ; E8 39 02
        cmp     di, si                          ; 3B FE
        jl      L_1D89                          ; 7C 06
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_1D8D                          ; 74 04
;   [conditional branch target (if/else)] L_1D89
L_1D89:
        push    di                              ; 57
        call    L_1F16                          ; E8 89 01
;   [conditional branch target (if/else)] L_1D8D
L_1D8D:
        or      si, si                          ; 0B F6
        je      L_1DCC                          ; 74 3B
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A C8 1D 00 00 [FIXUP]
        mov     ax, si                          ; 8B C6
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        call    L_20E8                          ; E8 46 03
        call    far USER.ANYPOPUP               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1DCC                          ; 74 21
        cmp     word ptr [0x27a], 0             ; 83 3E 7A 02 00
        je      L_1DCC                          ; 74 1A
        push    word ptr [0x27a]                ; FF 36 7A 02
        ;   ^ arg hWnd
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A 96 1C 00 00 [FIXUP]
        push    word ptr [0x27a]                ; FF 36 7A 02
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A 02 19 00 00 [FIXUP]
;   [error/early exit] L_1DCC
L_1DCC:
        ret                                     ; C3
; Description (heuristic):
;   Drawing routine (4 GDI APIs).

;-------------------------------------------------------------------------
; sub_1DCD   offset=0x1DCD  size=127 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
;   LSTRLEN(LPSTR lpsz) -> INT
;   ANYPOPUP
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SCROLLWINDOW
;   UPDATEWINDOW(HWND hWnd) -> BOOL
;
; Near calls (internal): L_0598, L_0C78, L_1AED, L_1B10, L_1F16, L_1FB8, L_20E8, L_57F5
;-------------------------------------------------------------------------
;   [sub-routine] L_1DCD
L_1DCD:
        call    L_57F5                          ; E8 25 3A
        or      al, 2                           ; 0C 02
        mov     ax, word ptr [0x27a]            ; A1 7A 02
        cmp     word ptr [0x50], ax             ; 39 06 50 00
        jne     L_1DE3                          ; 75 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0598                          ; E8 B5 E7
;   [conditional branch target (if/else)] L_1DE3
L_1DE3:
        sub     si, si                          ; 2B F6
        jmp     L_1E1C                          ; EB 35
;   [loop start] L_1DE7
L_1DE7:
        mov     bx, word ptr [0x448]            ; 8B 1E 48 04
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x310]           ; FF B7 10 03
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        call    L_1B10                          ; E8 16 FD
        or      ax, ax                          ; 0B C0
        je      L_1E21                          ; 74 23
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_1AED                          ; E8 E8 FC
        mov     bx, word ptr [0x448]            ; 8B 1E 48 04
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        mov     word ptr [bx + 0x310], ax       ; 89 87 10 03
        mov     word ptr [bx + 0x312], dx       ; 89 97 12 03
        inc     si                              ; 46
;   [unconditional branch target] L_1E1C
L_1E1C:
        cmp     word ptr [bp + 8], si           ; 39 76 08
        jg      L_1DE7                          ; 7F C6
;   [conditional branch target (if/else)] L_1E21
L_1E21:
        or      si, si                          ; 0B F6
        jne     L_1E28                          ; 75 03
        jmp     L_1EAD                          ; E9 85 00
;   [conditional branch target (if/else)] L_1E28
L_1E28:
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ;   ^ arg hWnd
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A 2F 1D 00 00 [FIXUP]
        mov     ax, word ptr [0x458]            ; A1 58 04
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [0x37a]            ; A1 7A 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x2dc]                ; FF 36 DC 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        neg     ax                              ; F7 D8
        imul    word ptr [0x5ec]                ; F7 2E EC 05
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SCROLLWINDOW           ; 9A 57 1D 00 00 [FIXUP]
        cmp     word ptr [0x44a], 0             ; 83 3E 4A 04 00
        jne     L_1EAD                          ; 75 45
        push    word ptr [0x2dc]                ; FF 36 DC 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0C78                          ; E8 07 EE
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        cmp     word ptr [0x310], 0x2d0         ; 81 3E 10 03 D0 02
        jge     L_1E81                          ; 7D 05
        mov     ax, 0x132                       ; B8 32 01
        jmp     L_1E84                          ; EB 03
;   [conditional branch target (if/else)] L_1E81
L_1E81:
        mov     ax, 0x138                       ; B8 38 01
;   [unconditional branch target] L_1E84
L_1E84:
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [0x45a]                ; FF 36 5A 04
        push    word ptr [0x458]                ; FF 36 58 04
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A AE 09 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A 15 1D 00 00 [FIXUP]
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ;   ^ arg hWnd
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 21 1D 00 00 [FIXUP]
;   [branch target] L_1EAD
L_1EAD:
        mov     di, word ptr [0x448]            ; 8B 3E 48 04
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_1EC7                          ; 74 10
        mov     ax, word ptr [0x24a]            ; A1 4A 02
        sub     ax, si                          ; 2B C6
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        or      ax, ax                          ; 0B C0
        jg      L_1EC5                          ; 7F 02
        sub     ax, ax                          ; 2B C0
;   [conditional branch target (if/else)] L_1EC5
L_1EC5:
        mov     di, ax                          ; 8B F8
;   [conditional branch target (if/else)] L_1EC7
L_1EC7:
        push    di                              ; 57
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1FB8                          ; E8 EB 00
        mov     ax, word ptr [0x448]            ; A1 48 04
        sub     ax, si                          ; 2B C6
        cmp     ax, di                          ; 3B C7
        jge     L_1EDA                          ; 7D 04
        push    di                              ; 57
        call    L_1F16                          ; E8 3C 00
;   [conditional branch target (if/else)] L_1EDA
L_1EDA:
        or      si, si                          ; 0B F6
        je      L_1F15                          ; 74 37
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A 11 1F 00 00 [FIXUP]
        push    si                              ; 56
        call    L_20E8                          ; E8 FD 01
        call    far USER.ANYPOPUP               ; 9A A3 1D 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1F15                          ; 74 21
        cmp     word ptr [0x27a], 0             ; 83 3E 7A 02 00
        je      L_1F15                          ; 74 1A
        push    word ptr [0x27a]                ; FF 36 7A 02
        ;   ^ arg hWnd
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A BF 1D 00 00 [FIXUP]
        push    word ptr [0x27a]                ; FF 36 7A 02
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A 96 1D 00 00 [FIXUP]
;   [error/early exit] L_1F15
L_1F15:
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: INVALIDATERECT, OFFSETRECT.

;-------------------------------------------------------------------------
; sub_1F16   offset=0x1F16  size=33 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;   OFFSETRECT
;
; Near calls (internal): L_1F6D, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_1F16
L_1F16:
        call    L_57CD                          ; E8 B4 38
        add     al, 1                           ; 04 01
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1F6D                          ; E8 4C 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        add     ax, word ptr [0x464]            ; 03 06 64 04
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0x452]            ; A1 52 04
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [0x378]            ; A1 78 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ;   ^ arg hWnd
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A 68 1F 00 00 [FIXUP]
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x240]                ; FF 36 40 02
        call    far USER.OFFSETRECT             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x266]                ; FF 36 66 02
        ;   ^ arg hWnd
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A 08 1F 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (6 instructions).

;-------------------------------------------------------------------------
; sub_1F6D   offset=0x1F6D  size=6 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_1F6D
L_1F6D:
        call    L_57CD                          ; E8 5D 38
        add     byte ptr [bx + di], al          ; 00 01
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        imul    word ptr [0x5ec]                ; F7 2E EC 05
        add     ax, word ptr [0x458]            ; 03 06 58 04
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (25 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1F7E   offset=0x1F7E  size=25 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_1F7E
L_1F7E:
        call    L_57CD                          ; E8 4C 38
        add     byte ptr [bx + di], al          ; 00 01
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        sub     si, word ptr [0x458]            ; 2B 36 58 04
        or      si, si                          ; 0B F6
        jle     L_1F92                          ; 7E 04
        mov     ax, si                          ; 8B C6
        jmp     L_1F94                          ; EB 02
;   [conditional branch target (if/else)] L_1F92
L_1F92:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_1F94
L_1F94:
        cdq                                     ; 99
        mov     cx, word ptr [0x5ec]            ; 8B 0E EC 05
        idiv    cx                              ; F7 F9
        cmp     ax, word ptr [0x448]            ; 3B 06 48 04
        jge     L_1FB4                          ; 7D 13
        or      si, si                          ; 0B F6
        jle     L_1FA9                          ; 7E 04
        mov     ax, si                          ; 8B C6
        jmp     L_1FAB                          ; EB 02
;   [conditional branch target (if/else)] L_1FA9
L_1FA9:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_1FAB
L_1FAB:
        cdq                                     ; 99
        mov     cx, word ptr [0x5ec]            ; 8B 0E EC 05
        idiv    cx                              ; F7 F9
        jmp     L_1FB7                          ; EB 03
;   [error/early exit] L_1FB4
L_1FB4:
        mov     ax, word ptr [0x448]            ; A1 48 04
;   [fall-through exit] L_1FB7
L_1FB7:
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: MOVEWINDOW, SENDMESSAGE, VALIDATERECT.

;-------------------------------------------------------------------------
; sub_1FB8   offset=0x1FB8  size=71 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   VALIDATERECT(HWND hWnd, LPRECT lpRect) -> VOID
;
; Near calls (internal): L_0598, L_0B92, L_1F6D, L_24E7, L_2503, L_57F5
;-------------------------------------------------------------------------
;   [sub-routine] L_1FB8
L_1FB8:
        call    L_57F5                          ; E8 3A 38
        add     al, 1                           ; 04 01
        mov     ax, word ptr [0x27a]            ; A1 7A 02
        cmp     word ptr [0x50], ax             ; 39 06 50 00
        jne     L_1FCE                          ; 75 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0598                          ; E8 CA E5
;   [conditional branch target (if/else)] L_1FCE
L_1FCE:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x24a], ax            ; A3 4A 02
        push    word ptr [0x27a]                ; FF 36 7A 02
        push    word ptr [0x452]                ; FF 36 52 04
        push    ax                              ; 50
        call    L_1F6D                          ; E8 8D FF
        push    ax                              ; 50
        mov     ax, word ptr [0x378]            ; A1 78 03
        sub     ax, word ptr [0x452]            ; 2B 06 52 04
        push    ax                              ; 50
        push    word ptr [0x464]                ; FF 36 64 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ; --> MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
        call    far USER.MOVEWINDOW             ; 9A 90 00 00 00 [FIXUP]
        call    L_24E7                          ; E8 EF 04
        mov     si, ax                          ; 8B F0
        mov     di, 0x89                        ; BF 89 00
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x312]       ; 8B 87 12 03
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_2017                          ; 74 07
        mov     di, ax                          ; 8B F8
        add     di, si                          ; 03 FE
        add     di, 4                           ; 83 C7 04
;   [conditional branch target (if/else)] L_2017
L_2017:
        push    word ptr [0x27a]                ; FF 36 7A 02
        ;   ^ arg hWnd
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 42 20 00 00 [FIXUP]
        push    word ptr [0x27a]                ; FF 36 7A 02
        push    di                              ; 57
        call    L_0B92                          ; E8 61 EB
        push    word ptr [0x27a]                ; FF 36 7A 02
        ;   ^ arg hWnd
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wParam
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A E1 19 00 00 [FIXUP]
        push    word ptr [0x27a]                ; FF 36 7A 02
        ;   ^ arg hWnd
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> VALIDATERECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.VALIDATERECT           ; 9A CF 19 00 00 [FIXUP]
        call    L_2503                          ; E8 AD 04
        mov     ax, word ptr [0x27a]            ; A1 7A 02
        cmp     word ptr [0x50], ax             ; 39 06 50 00
        jne     L_2065                          ; 75 06
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0598                          ; E8 33 E5
;   [error/early exit] L_2065
L_2065:
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around SETSCROLLRANGE.

;-------------------------------------------------------------------------
; sub_2066   offset=0x2066  size=16 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   SETSCROLLRANGE
;
; Near calls (internal): L_2102, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_2066
L_2066:
        call    L_57CD                          ; E8 64 37
        add     byte ptr [bx + si], al          ; 00 00
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        call    L_2102                          ; E8 85 00
        sub     ax, word ptr [0x274]            ; 2B 06 74 02
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A BD 20 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Small helper using 2 API(s): GETSCROLLRANGE, SETSCROLLRANGE.

;-------------------------------------------------------------------------
; sub_208B   offset=0x208B  size=24 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   GETSCROLLRANGE
;   SETSCROLLRANGE
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_208B
L_208B:
        call    L_57CD                          ; E8 3F 37
        add     al, byte ptr [bx + di]          ; 02 01
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 2]                    ; 8D 46 FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETSCROLLRANGE         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [bp + 4]           ; 03 46 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A D2 13 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around SETSCROLLPOS.

;-------------------------------------------------------------------------
; sub_20C2   offset=0x20C2  size=15 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   SETSCROLLPOS
;
; Near calls (internal): L_2102, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_20C2
L_20C2:
        call    L_57CD                          ; E8 08 37
        add     byte ptr [bx + di], al          ; 00 01
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        cmp     si, -1                          ; 83 FE FF
        jne     L_20D8                          ; 75 09
        push    word ptr [0x310]                ; FF 36 10 03
        call    L_2102                          ; E8 2C 00
        mov     si, ax                          ; 8B F0
;   [conditional branch target (if/else)] L_20D8
L_20D8:
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    si                              ; 56
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A EF 14 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around GETSCROLLPOS.

;-------------------------------------------------------------------------
; sub_20E8   offset=0x20E8  size=10 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   GETSCROLLPOS
;
; Near calls (internal): L_20C2, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_20E8
L_20E8:
        call    L_57CD                          ; E8 E2 36
        add     byte ptr [bx + di], al          ; 00 01
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETSCROLLPOS           ; 9A FF FF 00 00 [FIXUP]
        add     ax, word ptr [bp + 4]           ; 03 46 04
        push    ax                              ; 50
        call    L_20C2                          ; E8 C1 FF
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (10 instructions).

;-------------------------------------------------------------------------
; sub_2102   offset=0x2102  size=10 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_212F, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_2102
L_2102:
        call    L_57CD                          ; E8 C8 36
        add     word ptr [bx + di], ax          ; 01 01
        mov     word ptr [bp - 2], 0xffff       ; C7 46 FE FF FF
        lea     ax, [bp + 4]                    ; 8D 46 04
        push    ax                              ; 50
        lea     ax, [bp - 2]                    ; 8D 46 FE
        push    ax                              ; 50
        call    L_212F                          ; E8 18 00
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (9 instructions).

;-------------------------------------------------------------------------
; sub_211B   offset=0x211B  size=9 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_212F, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_211B
L_211B:
        call    L_57CD                          ; E8 AF 36
        add     word ptr [bx + di], ax          ; 01 01
        lea     ax, [bp - 2]                    ; 8D 46 FE
        push    ax                              ; 50
        lea     ax, [bp + 4]                    ; 8D 46 04
        push    ax                              ; 50
        call    L_212F                          ; E8 04 00
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (62 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_212F   offset=0x212F  size=62 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_21C7, L_21E7, L_24F6, L_2503, L_2538, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_212F
L_212F:
        call    L_57CD                          ; E8 9B 36
        or      byte ptr [bp + si], al          ; 08 02
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        cmp     word ptr [bx], -1               ; 83 3F FF
        jne     L_2141                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2143                          ; EB 02
;   [conditional branch target (if/else)] L_2141
L_2141:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_2143
L_2143:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        je      L_2151                          ; 74 07
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx]               ; 8B 07
        jmp     L_2154                          ; EB 03
;   [conditional branch target (if/else)] L_2151
L_2151:
        mov     ax, 0x5a0                       ; B8 A0 05
;   [unconditional branch target] L_2154
L_2154:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        call    L_24F6                          ; E8 9C 03
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    ax                              ; 50
        call    L_2538                          ; E8 D7 03
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        add     ax, word ptr [bx + 8]           ; 03 47 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_21C7                          ; E8 50 00
        mov     di, ax                          ; 8B F8
        sub     si, si                          ; 2B F6
        mov     word ptr [bp - 2], si           ; 89 76 FE
        jmp     L_21A9                          ; EB 29
;   [loop start] L_2180
L_2180:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bx], ax               ; 39 07
        je      L_21AE                          ; 74 24
        push    si                              ; 56
        call    L_21E7                          ; E8 59 00
        mov     si, ax                          ; 8B F0
        cmp     si, di                          ; 3B F7
        jl      L_21A6                          ; 7C 12
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_21C7                          ; E8 29 00
        mov     di, ax                          ; 8B F8
        cmp     di, si                          ; 3B FE
        jge     L_21A6                          ; 7D 02
        mov     si, di                          ; 8B F7
;   [conditional branch target (if/else)] L_21A6
L_21A6:
        inc     word ptr [bp - 2]               ; FF 46 FE
;   [unconditional branch target] L_21A9
L_21A9:
        cmp     word ptr [bp - 4], si           ; 39 76 FC
        jg      L_2180                          ; 7F D2
;   [conditional branch target (if/else)] L_21AE
L_21AE:
        call    L_2503                          ; E8 52 03
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_21C1                          ; 74 0A
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [bx], ax               ; 89 07
        jmp     L_21C6                          ; EB 05
;   [error/early exit] L_21C1
L_21C1:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx], si               ; 89 37
;   [fall-through exit] L_21C6
L_21C6:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (14 instructions).

;-------------------------------------------------------------------------
; sub_21C7   offset=0x21C7  size=14 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_21C7
L_21C7:
        call    L_57CD                          ; E8 03 36
        add     al, byte ptr [bp + si]          ; 02 02
        mov     di, 0x5a0                       ; BF A0 05
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     si, word ptr [bx]               ; 8B 37
        cmp     si, word ptr [bp + 4]           ; 3B 76 04
        jae     L_21E4                          ; 73 0B
        mov     di, word ptr [si + 2]           ; 8B 7C 02
        mov     al, byte ptr [si]               ; 8A 04
        sub     ah, ah                          ; 2A E4
        add     ax, si                          ; 03 C6
        mov     word ptr [bx], ax               ; 89 07
;   [error/early exit] L_21E4
L_21E4:
        mov     ax, di                          ; 8B C7
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (15 instructions).

;-------------------------------------------------------------------------
; sub_21E7   offset=0x21E7  size=15 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_21E7
L_21E7:
        call    L_57CD                          ; E8 E3 35
        add     word ptr [bx + di], ax          ; 01 01
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     di, word ptr [0x258]            ; 8B 3E 58 02
        mov     ax, si                          ; 8B C6
        cdq                                     ; 99
        mov     cx, di                          ; 8B CF
        idiv    cx                              ; F7 F9
        sub     di, dx                          ; 2B FA
        add     di, si                          ; 03 FE
        cmp     di, 0x59f                       ; 81 FF 9F 05
        jle     L_2207                          ; 7E 03
        mov     di, 0x5a0                       ; BF A0 05
;   [error/early exit] L_2207
L_2207:
        mov     ax, di                          ; 8B C7
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (60 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_220A   offset=0x220A  size=60 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_2503, L_2538, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_220A
L_220A:
        call    L_57CD                          ; E8 C0 35
        pop     es                              ; 07
        add     ax, bp                          ; 01 E8
        in      al, 2                           ; E4 02
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, 0xffff                      ; B8 FF FF
        mov     word ptr [0x278], ax            ; A3 78 02
        mov     word ptr [0x270], ax            ; A3 70 02
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        mov     word ptr [0x468], ax            ; A3 68 04
        push    bx                              ; 53
        call    L_2538                          ; E8 0D 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        add     ax, word ptr [bx + 8]           ; 03 47 08
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
;   [loop start] L_223F
L_223F:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jae     L_2271                          ; 73 2A
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        add     ax, bx                          ; 03 C3
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        jne     L_228A                          ; 75 2F
        mov     ax, bx                          ; 8B C3
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        mov     word ptr [0x278], ax            ; A3 78 02
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        mov     word ptr [0x468], ax            ; A3 68 04
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
;   [loop start (also forward branch)] L_2271
L_2271:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        je      L_2282                          ; 74 09
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        mov     word ptr [0x270], ax            ; A3 70 02
;   [conditional branch target (if/else)] L_2282
L_2282:
        call    L_2503                          ; E8 7E 02
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_22AD                          ; EB 23
;   [conditional branch target (if/else)] L_228A
L_228A:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        jle     L_229F                          ; 7E 0A
        mov     ax, bx                          ; 8B C3
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        mov     word ptr [0x468], ax            ; A3 68 04
        jmp     L_2271                          ; EB D2
;   [conditional branch target (if/else)] L_229F
L_229F:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_223F                          ; EB 92
;   [fall-through exit] L_22AD
L_22AD:
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x64]   LRESULT   (1 use)

; Description (heuristic):
;   Mixed routine using: LSTRCMP, SENDMESSAGE.

;-------------------------------------------------------------------------
; sub_22AE   offset=0x22AE  size=129 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;
; Near calls (first 8 of 10): L_0930, L_220A, L_23FE, L_2426, L_246B, L_24E7, L_24F6, L_2503 ...
;-------------------------------------------------------------------------
;   [sub-routine] L_22AE
L_22AE:
        call    L_57CD                          ; E8 1C 35
        xor     ax, word ptr [bx + si]          ; 33 00
        mov     si, word ptr [0x24a]            ; 8B 36 4A 02
        push    word ptr [0x27a]                ; FF 36 7A 02
        ;   ^ arg hWnd
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        mov     ax, 0x29                        ; B8 29 00
        push    ax                              ; 50
        ;   ^ arg wParam
        lea     ax, [bp - 0x58]                 ; 8D 46 A8
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 25 20 00 00 [FIXUP]
        mov     word ptr [bp - 0x64], ax        ; 89 46 9C
        mov     byte ptr [bp - 0x2a], 0         ; C6 46 D6 00
        mov     word ptr [bp - 0x66], 0         ; C7 46 9A 00 00
        call    L_24E7                          ; E8 0B 02
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x312]       ; 8B 87 12 03
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_230B                          ; 74 1A
        mov     di, ax                          ; 8B F8
        add     di, word ptr [bp - 0x2c]        ; 03 7E D4
        mov     al, byte ptr [di]               ; 8A 05
        sub     ah, ah                          ; 2A E4
        sub     ax, 5                           ; 2D 05 00
        mov     word ptr [bp - 0x66], ax        ; 89 46 9A
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ax                              ; 50
        lea     ax, [di + 4]                    ; 8D 45 04
        push    ax                              ; 50
        call    L_0930                          ; E8 25 E6
;   [conditional branch target (if/else)] L_230B
L_230B:
        mov     ax, word ptr [bp - 0x64]        ; 8B 46 9C
        cmp     word ptr [bp - 0x66], ax        ; 39 46 9A
        jne     L_232B                          ; 75 18
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        ;   ^ arg lpsz1 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz1 (low/offset)
        lea     ax, [bp - 0x58]                 ; 8D 46 A8
        push    ss                              ; 16
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_232B                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_232D                          ; EB 02
;   [conditional branch target (if/else)] L_232B
L_232B:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_232D
L_232D:
        mov     word ptr [bp - 0x60], ax        ; 89 46 A0
        call    L_2503                          ; E8 D0 01
        cmp     word ptr [bp - 0x60], 0         ; 83 7E A0 00
        je      L_233C                          ; 74 03
        jmp     L_23FD                          ; E9 C1 00
;   [conditional branch target (if/else)] L_233C
L_233C:
        call    L_24F6                          ; E8 B7 01
        mov     bx, ax                          ; 8B D8
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0x380], ax            ; A3 80 03
        mov     word ptr [bx + 4], ax           ; 89 47 04
        call    L_2503                          ; E8 B6 01
        cmp     word ptr [bp - 0x2e], -1        ; 83 7E D2 FF
        jne     L_236A                          ; 75 17
        and     byte ptr [bp - 0x5b], 0xfd      ; 80 66 A5 FD
        and     byte ptr [bp - 0x5b], 0xfe      ; 80 66 A5 FE
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x310]       ; 8B 87 10 03
        mov     word ptr [bp - 0x5a], ax        ; 89 46 A6
        jmp     L_239D                          ; EB 33
;   [conditional branch target (if/else)] L_236A
L_236A:
        call    L_24E7                          ; E8 7A 01
        add     ax, word ptr [bp - 0x2e]        ; 03 46 D2
        push    ax                              ; 50
        lea     ax, [bp - 0x5c]                 ; 8D 46 A4
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    L_35FF                          ; E8 83 12
        call    L_2503                          ; E8 84 01
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        call    L_2426                          ; E8 A1 00
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + 0x312], 0xffff   ; C7 87 12 03 FF FF
        push    si                              ; 56
        mov     al, byte ptr [bp - 0x5c]        ; 8A 46 A4
        sub     ah, ah                          ; 2A E4
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        call    L_23FE                          ; E8 61 00
;   [unconditional branch target] L_239D
L_239D:
        mov     al, byte ptr [bp - 0x64]        ; 8A 46 9C
        add     al, 5                           ; 04 05
        sub     ah, ah                          ; 2A E4
        mov     cx, word ptr [bp - 0x5c]        ; 8B 4E A4
        and     cl, 0                           ; 80 E1 00
        or      ax, cx                          ; 0B C1
        mov     word ptr [bp - 0x5c], ax        ; 89 46 A4
        cmp     word ptr [bp - 0x64], 0         ; 83 7E 9C 00
        jne     L_23C3                          ; 75 0E
        test    word ptr [bp - 0x5c], 0x100     ; F7 46 A4 00 01
        jne     L_23C3                          ; 75 07
        test    word ptr [bp - 0x5c], 0x200     ; F7 46 A4 00 02
        je      L_23FD                          ; 74 3A
;   [conditional branch target (if/else)] L_23C3
L_23C3:
        cmp     word ptr [bp - 0x2e], -1        ; 83 7E D2 FF
        jne     L_23DC                          ; 75 13
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x310]           ; FF B7 10 03
        call    L_220A                          ; E8 34 FE
        mov     ax, word ptr [0x468]            ; A1 68 04
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
;   [conditional branch target (if/else)] L_23DC
L_23DC:
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        lea     ax, [bp - 0x5c]                 ; 8D 46 A4
        push    ax                              ; 50
        call    L_246B                          ; E8 85 00
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        mov     word ptr [bx + 0x312], ax       ; 89 87 12 03
        push    si                              ; 56
        mov     al, byte ptr [bp - 0x5c]        ; 8A 46 A4
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_23FE                          ; E8 01 00
;   [error/early exit] L_23FD
L_23FD:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (16 instructions).

;-------------------------------------------------------------------------
; sub_23FE   offset=0x23FE  size=16 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_23FE
L_23FE:
        call    L_57CD                          ; E8 CC 33
        add     byte ptr [bp + si], al          ; 00 02
        jmp     L_241A                          ; EB 15
;   [loop start] L_2405
L_2405:
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     cl, 2                           ; B1 02
        shl     si, cl                          ; D3 E6
        add     si, 0x312                       ; 81 C6 12 03
        cmp     word ptr [si], -1               ; 83 3C FF
        je      L_241A                          ; 74 05
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     word ptr [si], ax               ; 01 04
;   [branch target] L_241A
L_241A:
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     ax, word ptr [0x274]            ; A1 74 02
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jl      L_2405                          ; 7C E0
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (28 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_2426   offset=0x2426  size=28 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_2503, L_2538, L_35FF, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_2426
L_2426:
        call    L_57CD                          ; E8 A4 33
        add     ax, 0xe801                      ; 05 01 E8
        enter   -0x7700, 0x46                   ; C8 00 89 46
        clc                                     ; F8
        push    ax                              ; 50
        call    L_2538                          ; E8 03 01
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        add     ax, word ptr [bp + 4]           ; 03 46 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        add     ax, bx                          ; 03 C3
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        push    bx                              ; 53
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        push    ax                              ; 50
        call    L_35FF                          ; E8 A1 11
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        sub     word ptr [bx + 8], ax           ; 29 47 08
        call    L_2503                          ; E8 99 00
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (52 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_246B   offset=0x246B  size=52 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_2503, L_2538, L_31D5, L_35FF, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_246B
L_246B:
        call    L_57CD                          ; E8 5F 33
        push    es                              ; 06
        add     ch, al                          ; 02 E8
        add     word ptr [bx + si], -0x75       ; 83 00 8B
        clc                                     ; F8
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     cx, 0x72e                       ; B9 2E 07
        sub     cx, word ptr [di + 8]           ; 2B 4D 08
        cmp     ax, cx                          ; 3B C1
        ja      L_248E                          ; 77 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2490                          ; EB 02
;   [conditional branch target (if/else)] L_248E
L_248E:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_2490
L_2490:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_24D2                          ; 74 3B
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        and     byte ptr [bx + 1], 3            ; 80 67 01 03
        push    di                              ; 57
        call    L_2538                          ; E8 96 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     si, ax                          ; 8B F0
        add     si, word ptr [bp + 6]           ; 03 76 06
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    si                              ; 56
        push    ax                              ; 50
        mov     ax, word ptr [di + 8]           ; 8B 45 08
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        sub     ax, si                          ; 2B C6
        push    ax                              ; 50
        call    L_35FF                          ; E8 3F 11
        push    word ptr [bp + 4]               ; FF 76 04
        push    si                              ; 56
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_35FF                          ; E8 35 11
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     word ptr [di + 8], ax           ; 01 45 08
        jmp     L_24E0                          ; EB 0E
;   [conditional branch target (if/else)] L_24D2
L_24D2:
        push    word ptr [0x2be]                ; FF 36 BE 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    L_31D5                          ; E8 F5 0C
;   [unconditional branch target] L_24E0
L_24E0:
        call    L_2503                          ; E8 20 00
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (7 instructions).

;-------------------------------------------------------------------------
; sub_24E7   offset=0x24E7  size=7 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_24F6, L_2538, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_24E7
L_24E7:
        call    L_57CD                          ; E8 E3 32
        add     word ptr [bx + si], ax          ; 01 00
        call    L_24F6                          ; E8 07 00
        mov     si, ax                          ; 8B F0
        push    si                              ; 56
        call    L_2538                          ; E8 43 00
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (5 instructions).

;-------------------------------------------------------------------------
; sub_24F6   offset=0x24F6  size=5 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_2510, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_24F6
L_24F6:
        call    L_57CD                          ; E8 D4 32
        add     byte ptr [bx + si], al          ; 00 00
        push    word ptr [0x282]                ; FF 36 82 02
        call    L_2510                          ; E8 0E 00
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (5 instructions).

;-------------------------------------------------------------------------
; sub_2503   offset=0x2503  size=5 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_2524, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_2503
L_2503:
        call    L_57CD                          ; E8 C7 32
        add     byte ptr [bx + si], al          ; 00 00
        push    word ptr [0x282]                ; FF 36 82 02
        call    L_2524                          ; E8 15 00
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around LOCALLOCK(hMem) -> PSTR.

;-------------------------------------------------------------------------
; sub_2510   offset=0x2510  size=7 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   LOCALLOCK(HANDLE hMem) -> PSTR
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_2510
L_2510:
        call    L_57CD                          ; E8 BA 32
        add     byte ptr [bx + di], al          ; 00 01
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x304]           ; FF B7 04 03
        ;   ^ arg hMem
        ; --> LOCALLOCK(HANDLE hMem) -> PSTR
        call    far KERNEL.LOCALLOCK            ; 9A FF FF 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around LOCALUNLOCK(hMem) -> BOOL.

;-------------------------------------------------------------------------
; sub_2524   offset=0x2524  size=7 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   LOCALUNLOCK(HANDLE hMem) -> BOOL
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_2524
L_2524:
        call    L_57CD                          ; E8 A6 32
        add     byte ptr [bx + di], al          ; 00 01
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x304]           ; FF B7 04 03
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A FF FF 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (7 instructions).

;-------------------------------------------------------------------------
; sub_2538   offset=0x2538  size=7 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_2538
L_2538:
        call    L_57CD                          ; E8 92 32
        add     byte ptr [bx + di], al          ; 00 01
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        add     ax, bx                          ; 03 C3
        add     ax, 0xa                         ; 05 0A 00
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: LSTRCMP, SENDMESSAGE.

;-------------------------------------------------------------------------
; sub_2549   offset=0x2549  size=86 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;
; Near calls (internal): L_24F6, L_2503, L_2538, L_35FF, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_2549
L_2549:
        call    L_57CD                          ; E8 81 32
        push    0                               ; 6A 00
        mov     ax, 0x8a                        ; B8 8A 00
        mov     word ptr [bp - 0xd2], ax        ; 89 86 2E FF
        mov     word ptr [bp - 0xd4], ax        ; 89 86 2C FF
        call    L_24F6                          ; E8 9A FF
        mov     di, ax                          ; 8B F8
        cmp     word ptr [di + 6], 0            ; 83 7D 06 00
        je      L_256B                          ; 74 07
        lea     ax, [di + 0xa]                  ; 8D 45 0A
        mov     word ptr [bp - 0xd2], ax        ; 89 86 2E FF
;   [conditional branch target (if/else)] L_256B
L_256B:
        push    word ptr [0x2e8]                ; FF 36 E8 02
        ;   ^ arg hWnd
        mov     ax, 0x418                       ; B8 18 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wParam
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 91 25 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x2e8]                ; FF 36 E8 02
        ;   ^ arg hWnd
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A B0 25 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_25B4                          ; 74 19
        push    word ptr [0x50]                 ; FF 36 50 00
        ;   ^ arg hWnd
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        inc     si                              ; 46
        push    si                              ; 56
        ;   ^ arg wParam
        lea     ax, [bp - 0xcc]                 ; 8D 86 34 FF
        mov     word ptr [bp - 0xd4], ax        ; 89 86 2C FF
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A C9 22 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_25B4
L_25B4:
        mov     ax, si                          ; 8B C6
        sub     ax, word ptr [di + 6]           ; 2B 45 06
        mov     word ptr [bp - 0xce], ax        ; 89 86 32 FF
        or      ax, ax                          ; 0B C0
        jne     L_25D6                          ; 75 15
        mov     ax, word ptr [bp - 0xd2]        ; 8B 86 2E FF
        push    ds                              ; 1E
        ;   ^ arg lpsz1 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, word ptr [bp - 0xd4]        ; 8B 86 2C FF
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A 1E 23 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_2602                          ; 74 2C
;   [conditional branch target (if/else)] L_25D6
L_25D6:
        push    di                              ; 57
        call    L_2538                          ; E8 5E FF
        push    ax                              ; 50
        push    di                              ; 57
        call    L_2538                          ; E8 59 FF
        add     ax, word ptr [bp - 0xce]        ; 03 86 32 FF
        push    ax                              ; 50
        push    word ptr [di + 8]               ; FF 75 08
        call    L_35FF                          ; E8 15 10
        push    word ptr [bp - 0xd4]            ; FF B6 2C FF
        lea     ax, [di + 0xa]                  ; 8D 45 0A
        push    ax                              ; 50
        push    si                              ; 56
        call    L_35FF                          ; E8 09 10
        mov     word ptr [di + 6], si           ; 89 75 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0x380], ax            ; A3 80 03
        mov     word ptr [di + 4], ax           ; 89 45 04
;   [conditional branch target (if/else)] L_2602
L_2602:
        call    L_2503                          ; E8 FE FE
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_261D                          ; 74 12
        push    word ptr [0x2e8]                ; FF 36 E8 02
        ;   ^ arg hWnd
        mov     ax, 0x418                       ; B8 18 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 7C 25 00 00 [FIXUP]
;   [error/early exit] L_261D
L_261D:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (14 instructions).

;-------------------------------------------------------------------------
; sub_261E   offset=0x261E  size=14 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0B92, L_24F6, L_2503, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_261E
L_261E:
        call    L_57CD                          ; E8 AC 31
        add     al, byte ptr [bx + si]          ; 02 00
        mov     si, 0x8b                        ; BE 8B 00
        call    L_24F6                          ; E8 CD FE
        mov     di, ax                          ; 8B F8
        cmp     word ptr [di + 6], 0            ; 83 7D 06 00
        je      L_2636                          ; 74 05
        mov     si, di                          ; 8B F7
        add     si, 0xa                         ; 83 C6 0A
;   [conditional branch target (if/else)] L_2636
L_2636:
        push    word ptr [0x2e8]                ; FF 36 E8 02
        push    si                              ; 56
        call    L_0B92                          ; E8 54 E5
        call    L_2503                          ; E8 C2 FE
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: SENDMESSAGE.

;-------------------------------------------------------------------------
; sub_2642   offset=0x2642  size=89 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;
; Near calls (internal): L_22AE, L_24F6, L_2503, L_2538, L_2549, L_272F, L_31D5, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_2642
L_2642:
        call    L_57CD                          ; E8 88 31
        add     ax, word ptr [bp + si]          ; 03 02
        cmp     word ptr [bp + 6], 0x64         ; 83 7E 06 64
        jne     L_2652                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2654                          ; EB 02
;   [conditional branch target (if/else)] L_2652
L_2652:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_2654
L_2654:
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        jne     L_2663                          ; 75 09
        cmp     word ptr [bp + 6], 0x65         ; 83 7E 06 65
        je      L_2663                          ; 74 03
        jmp     L_272E                          ; E9 CB 00
;   [conditional branch target (if/else)] L_2663
L_2663:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     ax, 0x100                       ; 3D 00 01
        je      L_2680                          ; 74 15
        cmp     ax, 0x200                       ; 3D 00 02
        je      L_26DD                          ; 74 6D
        cmp     ax, 0x300                       ; 3D 00 03
        jne     L_2678                          ; 75 03
        jmp     L_2701                          ; E9 89 00
;   [conditional branch target (if/else)] L_2678
L_2678:
        cmp     ax, 0x500                       ; 3D 00 05
        je      L_26F1                          ; 74 74
        jmp     L_272E                          ; E9 AE 00
;   [conditional branch target (if/else)] L_2680
L_2680:
        or      di, di                          ; 0B FF
        je      L_26CF                          ; 74 4B
        mov     ax, word ptr [0x27a]            ; A1 7A 02
        mov     word ptr [0x50], ax             ; A3 50 00
        call    L_24F6                          ; E8 69 FE
        mov     si, ax                          ; 8B F0
        mov     ax, 0x729                       ; B8 29 07
        sub     ax, word ptr [si + 8]           ; 2B 44 08
        mov     word ptr [0x8c], ax             ; A3 8C 00
        mov     bx, word ptr [0x24a]            ; 8B 1E 4A 02
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x312]       ; 8B 87 12 03
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_26BD                          ; 74 11
        push    si                              ; 56
        call    L_2538                          ; E8 88 FE
        mov     bx, ax                          ; 8B D8
        add     bx, word ptr [bp - 2]           ; 03 5E FE
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        add     word ptr [0x8c], ax             ; 01 06 8C 00
;   [conditional branch target (if/else)] L_26BD
L_26BD:
        call    L_2503                          ; E8 43 FE
        cmp     word ptr [0x8c], 0              ; 83 3E 8C 00 00
        jge     L_272E                          ; 7D 67
        mov     word ptr [0x8c], 0              ; C7 06 8C 00 00 00
        jmp     L_272E                          ; EB 5F
;   [conditional branch target (if/else)] L_26CF
L_26CF:
        mov     ax, word ptr [0x2e8]            ; A1 E8 02
        mov     word ptr [0x50], ax             ; A3 50 00
        mov     word ptr [0x8c], 0xc1           ; C7 06 8C 00 C1 00
        jmp     L_272E                          ; EB 51
;   [conditional branch target (if/else)] L_26DD
L_26DD:
        mov     word ptr [0x8c], 0x7fff         ; C7 06 8C 00 FF 7F
        or      di, di                          ; 0B FF
        je      L_26EC                          ; 74 05
        call    L_22AE                          ; E8 C4 FB
        jmp     L_272E                          ; EB 42
;   [conditional branch target (if/else)] L_26EC
L_26EC:
        call    L_2549                          ; E8 5A FE
        jmp     L_272E                          ; EB 3D
;   [conditional branch target (if/else)] L_26F1
L_26F1:
        push    word ptr [0x29c]                ; FF 36 9C 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    L_31D5                          ; E8 D6 0A
        jmp     L_272E                          ; EB 2D
;   [unconditional branch target] L_2701
L_2701:
        or      di, di                          ; 0B FF
        je      L_270A                          ; 74 05
        mov     ax, word ptr [0x27a]            ; A1 7A 02
        jmp     L_270D                          ; EB 03
;   [conditional branch target (if/else)] L_270A
L_270A:
        mov     ax, word ptr [0x2e8]            ; A1 E8 02
;   [unconditional branch target] L_270D
L_270D:
        cmp     ax, word ptr [0x50]             ; 3B 06 50 00
        jne     L_272E                          ; 75 1B
        push    word ptr [0x50]                 ; FF 36 50 00
        ;   ^ arg hWnd
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 19 26 00 00 [FIXUP]
        cmp     ax, word ptr [0x8c]             ; 3B 06 8C 00
        jle     L_272E                          ; 7E 03
        call    L_272F                          ; E8 01 00
;   [error/early exit] L_272E
L_272E:
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: ANSINEXT, ENDDIALOG, SENDMESSAGE (+1 more).

;-------------------------------------------------------------------------
; sub_272F   offset=0x272F  size=84 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   ANSINEXT
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
;
; Near calls (internal): L_0B92, L_2811, L_31D5, L_57CD, L_57F5
;-------------------------------------------------------------------------
;   [sub-routine] L_272F
L_272F:
        call    L_57CD                          ; E8 9B 30
        add     bh, bh                          ; 67 00 FF
        push    ax                              ; 36 50
        ;   ^ arg hWnd
        add     byte ptr [bx + si + 0xd], bh    ; 00 B8 0D 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        mov     ax, 0xc8                        ; B8 C8 00
        push    ax                              ; 50
        ;   ^ arg wParam
        lea     ax, [bp - 0xc8]                 ; 8D 86 38 FF
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 21 27 00 00 [FIXUP]
        mov     si, bp                          ; 8B F5
        sub     si, 0xc8                        ; 81 EE C8 00
        jmp     L_2766                          ; EB 13
;   [loop start] L_2753
L_2753:
        mov     ax, word ptr [bp - 0xce]        ; 8B 86 32 FF
        mov     word ptr [bp - 0xcc], ax        ; 89 86 34 FF
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSINEXT             ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
;   [unconditional branch target] L_2766
L_2766:
        mov     ax, si                          ; 8B C6
        sub     ax, bp                          ; 2B C5
        add     ax, 0xc8                        ; 05 C8 00
        mov     word ptr [bp - 0xce], ax        ; 89 86 32 FF
        cmp     ax, word ptr [0x8c]             ; 3B 06 8C 00
        jle     L_2753                          ; 7E DC
        mov     di, word ptr [bp - 0xcc]        ; 8B BE 34 FF
        mov     byte ptr [bp + di - 0xc8], 0    ; C6 83 38 FF 00
        push    word ptr [0x50]                 ; FF 36 50 00
        lea     ax, [bp - 0xc8]                 ; 8D 86 38 FF
        push    ax                              ; 50
        call    L_0B92                          ; E8 06 E4
        push    word ptr [0x2be]                ; FF 36 BE 02
        push    word ptr [0x2c0]                ; FF 36 C0 02
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    L_31D5                          ; E8 3A 0A
        ret                                     ; C3
        call    L_57F5                          ; E8 56 30
        or      al, byte ptr [di]               ; 0A 05
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_27B0                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_27EA                          ; 74 3C
        jmp     L_280E                          ; EB 5E
;   [conditional branch target (if/else)] L_27B0
L_27B0:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x4c], ax             ; A3 4C 00
        mov     byte ptr [bp - 6], 1            ; C6 46 FA 01
        mov     byte ptr [bp - 7], 1            ; C6 46 F9 01
        mov     word ptr [bp - 5], 0x7bc        ; C7 46 FB BC 07
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_33                   ; 9A 91 0A 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_27E5
L_27E5:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2810                          ; EB 26
;   [conditional branch target (if/else)] L_27EA
L_27EA:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_27F9                          ; 74 07
        cmp     ax, 2                           ; 3D 02 00
        je      L_2801                          ; 74 0A
        jmp     L_27E5                          ; EB EC
;   [conditional branch target (if/else)] L_27F9
L_27F9:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_2811                          ; E8 12 00
        jmp     L_27E5                          ; EB E4
;   [conditional branch target (if/else)] L_2801
L_2801:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_27E5                          ; EB D7
;   [fall-through exit] L_280E
L_280E:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_2810
L_2810:
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: ENDDIALOG, GETDLGITEMTEXT.

;-------------------------------------------------------------------------
; sub_2811   offset=0x2811  size=80 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
;
; Near calls (internal): L_0930, L_0ADF, L_12D6, L_31D5, L_3490, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_2811
L_2811:
        call    L_57CD                          ; E8 B9 2F
        db      00fh                            ; 0F
        add     di, di                          ; 01 FF
        jbe     L_281D                          ; 76 04
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
;   [conditional branch target (if/else)] L_281D
L_281D:
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        ; --> GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETDLGITEMTEXT         ; 9A 3C 28 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDlg
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        ;   ^ arg cbMax
        ; --> GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_284F                          ; 75 0B
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ax                              ; 50
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ax                              ; 50
        call    L_0930                          ; E8 E1 E0
;   [conditional branch target (if/else)] L_284F
L_284F:
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ax                              ; 50
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ax                              ; 50
        call    L_0ADF                          ; E8 85 E2
        or      ax, ax                          ; 0B C0
        jne     L_28B4                          ; 75 56
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ax                              ; 50
        mov     ax, 0x2ee                       ; B8 EE 02
        push    ax                              ; 50
        call    L_0ADF                          ; E8 76 E2
        or      ax, ax                          ; 0B C0
        jne     L_28B4                          ; 75 47
        mov     ax, 0x2ee                       ; B8 EE 02
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12D6                          ; E8 60 EA
        mov     word ptr [0x302], ax            ; A3 02 03
        lea     cx, [bp - 0x1e]                 ; 8D 4E E2
        push    cx                              ; 51
        mov     si, ax                          ; 8B F0
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12D6                          ; E8 52 EA
        mov     word ptr [0x388], ax            ; A3 88 03
        cmp     ax, si                          ; 3B C6
        ja      L_28B4                          ; 77 29
        push    ax                              ; 50
        mov     ax, 0x2f8                       ; B8 F8 02
        push    ax                              ; 50
        call    L_3490                          ; E8 FD 0B
        push    word ptr [0x302]                ; FF 36 02 03
        mov     ax, 0x38c                       ; B8 8C 03
        push    ax                              ; 50
        call    L_3490                          ; E8 F2 0B
        or      ax, ax                          ; 0B C0
        je      L_28A6                          ; 74 04
        inc     word ptr [0x38c]                ; FF 06 8C 03
;   [conditional branch target (if/else)] L_28A6
L_28A6:
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDlg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A 08 28 00 00 [FIXUP]
        jmp     L_28C2                          ; EB 0E
;   [conditional branch target (if/else)] L_28B4
L_28B4:
        push    word ptr [0x28e]                ; FF 36 8E 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    L_31D5                          ; E8 13 09
;   [fall-through exit] L_28C2
L_28C2:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (66 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_28C3   offset=0x28C3  size=66 instr  segment=seg3.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: ret
;
; Near calls (first 8 of 10): L_0598, L_14A1, L_1864, L_2510, L_2524, L_2951, L_2971, L_359F ...
;-------------------------------------------------------------------------
;   [sub-routine] L_28C3
L_28C3:
        call    L_57CD                          ; E8 07 2F
        add     al, byte ptr [bx + si]          ; 02 00
        call    L_2951                          ; E8 86 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0598                          ; E8 C5 DC
        sub     si, si                          ; 2B F6
;   [loop start] L_28D5
L_28D5:
        push    si                              ; 56
        call    L_2510                          ; E8 37 FC
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [0x388]            ; A1 88 03
        cmp     word ptr [di + 2], ax           ; 39 45 02
        jb      L_28F0                          ; 72 0D
        mov     ax, word ptr [0x302]            ; A1 02 03
        cmp     word ptr [di + 2], ax           ; 39 45 02
        ja      L_28F0                          ; 77 05
        mov     word ptr [di + 2], 0xffff       ; C7 45 02 FF FF
;   [conditional branch target (if/else)] L_28F0
L_28F0:
        push    si                              ; 56
        call    L_2524                          ; E8 30 FC
        inc     si                              ; 46
        cmp     si, 3                           ; 83 FE 03
        jl      L_28D5                          ; 7C DB
        push    word ptr [0x2f8]                ; FF 36 F8 02
        mov     ax, word ptr [0x38c]            ; A1 8C 03
        sub     ax, word ptr [0x2f8]            ; 2B 06 F8 02
        push    ax                              ; 50
        call    L_359F                          ; E8 96 0C
        mov     ax, 0x37c                       ; B8 7C 03
        push    ax                              ; 50
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_46A7                          ; E8 8D 1D
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_292A                          ; 74 09
        mov     ax, 0x226                       ; B8 26 02
        push    ax                              ; 50
        call    L_1864                          ; E8 3C EF
        jmp     L_2947                          ; EB 1D
;   [conditional branch target (if/else)] L_292A
L_292A:
        push    word ptr [0x50]                 ; FF 36 50 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0598                          ; E8 65 DC
        push    si                              ; 56
        push    di                              ; 57
        mov     di, 0x2ee                       ; BF EE 02
        mov     si, 0x226                       ; BE 26 02
        push    ds                              ; 1E
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     di                              ; 5F
        pop     si                              ; 5E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14A1                          ; E8 5A EB
;   [unconditional branch target] L_2947
L_2947:
        mov     word ptr [0x380], 1             ; C7 06 80 03 01 00
        call    L_2971                          ; E8 21 00
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around SETCURSOR.

;-------------------------------------------------------------------------
; sub_2951   offset=0x2951  size=11 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   SETCURSOR
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_2951
L_2951:
        call    L_57CD                          ; E8 79 2E
        add     word ptr [bx + si], ax          ; 01 00
        push    word ptr [0x25a]                ; FF 36 5A 02
        call    far USER.SETCURSOR              ; 9A 81 29 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [0x8e]             ; A1 8E 00
        inc     word ptr [0x8e]                 ; FF 06 8E 00
        or      ax, ax                          ; 0B C0
        jne     L_2970                          ; 75 04
        mov     word ptr [0x440], si            ; 89 36 40 04
;   [error/early exit] L_2970
L_2970:
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around SETCURSOR.

;-------------------------------------------------------------------------
; sub_2971   offset=0x2971  size=7 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   SETCURSOR
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_2971
L_2971:
        call    L_57CD                          ; E8 59 2E
        add     byte ptr [bx + si], al          ; 00 00
        dec     word ptr [0x8e]                 ; FF 0E 8E 00
        jne     L_2985                          ; 75 09
        push    word ptr [0x440]                ; FF 36 40 04
        call    far USER.SETCURSOR              ; 9A BE 02 00 00 [FIXUP]
;   [error/early exit] L_2985
L_2985:
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: GETFOCUS, GETKEYSTATE, GETMENU (+3 more).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_2986   offset=0x2986  size=125 instr  segment=seg3.asm
;
; Classification (pass8): asm_medium  (score C=3, ASM=6)
; Prologue: none     Epilogue: jmp_tail
;
; Far API calls:
;   GETFOCUS
;   GETKEYSTATE
;   GETMENU
;   HILITEMENUITEM
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SETFOCUS
;
; Near calls (internal): L_28C3, L_2C30, L_32E8, L_3BFF, L_416C, L_41F6, L_49D0, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_2986
L_2986:
        call    L_57CD                          ; E8 44 2E
        or      word ptr [bp + si], ax          ; 09 02
        push    si                              ; 56
        push    di                              ; 57
        mov     di, 0x2ee                       ; BF EE 02
        mov     si, 0x226                       ; BE 26 02
        push    ds                              ; 1E
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     ax, 0x15                        ; 3D 15 00
        jbe     L_29A5                          ; 76 03
        jmp     L_2C2F                          ; E9 8A 02
;   [conditional branch target (if/else)] L_29A5
L_29A5:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x2c03]       ; 2E FF A7 03 2C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_32E8                          ; E8 35 09
        or      ax, ax                          ; 0B C0
        jne     L_29BA                          ; 75 03
        jmp     L_2C2F                          ; E9 75 02
;   [conditional branch target (if/else)] L_29BA
L_29BA:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_416C                          ; E8 AB 17
        jmp     L_2C2F                          ; E9 6B 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_32E8                          ; E8 1E 09
        or      ax, ax                          ; 0B C0
        jne     L_29D1                          ; 75 03
        jmp     L_2C2F                          ; E9 5E 02
;   [conditional branch target (if/else)] L_29D1
L_29D1:
        call    L_41F6                          ; E8 22 18
        jmp     L_2C2F                          ; E9 58 02
        cmp     word ptr [0x23a], 0             ; 83 3E 3A 02 00
        je      L_29FC                          ; 74 1E
        call    far USER.GETFOCUS               ; 9A C3 17 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, 0x3be                       ; B8 BE 03
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_3BFF                          ; E8 0E 12
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far USER.SETFOCUS               ; 9A A8 05 00 00 [FIXUP]
        jmp     L_2C2F                          ; E9 33 02
;   [conditional branch target (if/else)] L_29FC
L_29FC:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_2C30                          ; E8 2D 02
        jmp     L_2C2F                          ; E9 29 02
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_2C30                          ; E8 23 02
        or      ax, ax                          ; 0B C0
        jne     L_2A14                          ; 75 03
        jmp     L_2C2F                          ; E9 1B 02
;   [conditional branch target (if/else)] L_2A14
L_2A14:
        call    L_49D0                          ; E8 B9 1F
        jmp     L_2C2F                          ; E9 15 02
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    L_2C30                          ; E8 0F 02
        or      ax, ax                          ; 0B C0
        jne     L_2A28                          ; 75 03
        jmp     L_2C2F                          ; E9 07 02
;   [conditional branch target (if/else)] L_2A28
L_2A28:
        call    L_28C3                          ; E8 98 FE
        jmp     L_2C2F                          ; E9 01 02
        call    far USER.GETFOCUS               ; 9A DF 29 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        cmp     ax, word ptr [0x2dc]            ; 3B 06 DC 02
        jne     L_2A3F                          ; 75 03
        jmp     L_2C2F                          ; E9 F0 01
;   [conditional branch target (if/else)] L_2A3F
L_2A3F:
        push    ax                              ; 50
        ;   ^ arg hWnd
        mov     ax, 0x400                       ; B8 00 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 9D 2A 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        cmp     dx, ax                          ; 3B D0
        jne     L_2A5B                          ; 75 03
        jmp     L_2C2F                          ; E9 D4 01
;   [conditional branch target (if/else)] L_2A5B
L_2A5B:
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A 6D 2A 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_2A75                          ; 7D 0D
        mov     ax, 0x2e                        ; B8 2E 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jl      L_2ABE                          ; 7C 49
;   [conditional branch target (if/else)] L_2A75
L_2A75:
        push    word ptr [0x262]                ; FF 36 62 02
        push    word ptr [0x262]                ; FF 36 62 02
        call    far USER.GETMENU                ; 9A AA 2A 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far USER.HILITEMENUITEM         ; 9A B7 2A 00 00 [FIXUP]
        push    word ptr [bp - 0x12]            ; FF 76 EE
        ;   ^ arg hWnd
        mov     ax, 0x300                       ; B8 00 03
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 47 27 00 00 [FIXUP]
        push    word ptr [0x262]                ; FF 36 62 02
        push    word ptr [0x262]                ; FF 36 62 02
        call    far USER.GETMENU                ; 9A EA 06 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.HILITEMENUITEM         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_2C2F                          ; E9 71 01
; Description (heuristic):
;   Mixed routine using: GETFOCUS, RELEASEDC, SENDMESSAGE.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_2ABE   offset=0x2ABE  size=149 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=3)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   GETFOCUS
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;
; Near calls (first 8 of 14): L_08AD, L_0B1E, L_0C78, L_12D6, L_13A5, L_1484, L_1772, L_17E1 ...
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_2ABE
L_2ABE:
        push    word ptr [bp - 0x12]            ; FF 76 EE
        mov     ax, 0x303                       ; B8 03 03
;   [loop start] L_2AC4
L_2AC4:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 4A 2A 00 00 [FIXUP]
        jmp     L_2C2F                          ; E9 5D 01
        call    far USER.GETFOCUS               ; 9A DE 2A 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0x300                       ; B8 00 03
        jmp     L_2AC4                          ; EB E7
        call    far USER.GETFOCUS               ; 9A E9 2A 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0x301                       ; B8 01 03
        jmp     L_2AC4                          ; EB DC
        call    far USER.GETFOCUS               ; 9A 2F 2A 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0x302                       ; B8 02 03
        jmp     L_2AC4                          ; EB D1
        call    L_13A5                          ; E8 AF E8
        jmp     L_2C2F                          ; E9 36 01
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_2B05                          ; 74 05
        mov     ax, 0x250                       ; B8 50 02
        jmp     L_2B77                          ; EB 72
;   [conditional branch target (if/else)] L_2B05
L_2B05:
        mov     ax, 0x250                       ; B8 50 02
;   [loop start] L_2B08
L_2B08:
        push    ax                              ; 50
        call    L_1772                          ; E8 66 EC
        jmp     L_2C2F                          ; E9 20 01
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_2B33                          ; 74 1D
        mov     ax, 0x226                       ; B8 26 02
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12D6                          ; E8 B7 E7
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        jne     L_2B28                          ; 75 03
        jmp     L_2C2F                          ; E9 07 01
;   [conditional branch target (if/else)] L_2B28
L_2B28:
        dec     di                              ; 4F
;   [loop start] L_2B29
L_2B29:
        push    di                              ; 57
        mov     ax, 0x2ee                       ; B8 EE 02
        push    ax                              ; 50
        call    L_0B1E                          ; E8 ED DF
        jmp     L_2B74                          ; EB 41
;   [conditional branch target (if/else)] L_2B33
L_2B33:
        sub     ax, ax                          ; 2B C0
;   [loop start] L_2B35
L_2B35:
        push    ax                              ; 50
        call    L_1484                          ; E8 4B E9
        jmp     L_2C2F                          ; E9 F3 00
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_2B5A                          ; 74 17
        mov     ax, 0x226                       ; B8 26 02
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12D6                          ; E8 8A E7
        mov     di, ax                          ; 8B F8
        cmp     di, 0xab35                      ; 81 FF 35 AB
        jne     L_2B57                          ; 75 03
        jmp     L_2C2F                          ; E9 D8 00
;   [conditional branch target (if/else)] L_2B57
L_2B57:
        inc     di                              ; 47
        jmp     L_2B29                          ; EB CF
;   [conditional branch target (if/else)] L_2B5A
L_2B5A:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2B35                          ; EB D6
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    L_2C30                          ; E8 CA 00
        or      ax, ax                          ; 0B C0
        jne     L_2B6D                          ; 75 03
        jmp     L_2C2F                          ; E9 C2 00
;   [conditional branch target (if/else)] L_2B6D
L_2B6D:
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_2B7E                          ; 74 0A
;   [unconditional branch target] L_2B74
L_2B74:
        mov     ax, 0x2ee                       ; B8 EE 02
;   [unconditional branch target] L_2B77
L_2B77:
        push    ax                              ; 50
        call    L_1864                          ; E8 E9 EC
        jmp     L_2C2F                          ; E9 B1 00
;   [conditional branch target (if/else)] L_2B7E
L_2B7E:
        mov     ax, 0x2ee                       ; B8 EE 02
        jmp     L_2B08                          ; EB 85
        call    L_4402                          ; E8 7C 18
        jmp     L_2C2F                          ; E9 A6 00
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    L_2C30                          ; E8 A0 00
        or      ax, ax                          ; 0B C0
        jne     L_2B97                          ; 75 03
        jmp     L_2C2F                          ; E9 98 00
;   [conditional branch target (if/else)] L_2B97
L_2B97:
        call    far _entry_35                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x380], 1             ; C7 06 80 03 01 00
        jmp     L_2C2F                          ; E9 8A 00
        call    L_33FF                          ; E8 57 08
        jmp     L_2C2F                          ; E9 84 00
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    L_2C30                          ; E8 7E 00
        or      ax, ax                          ; 0B C0
        je      L_2C2F                          ; 74 79
        cmp     word ptr [0x45c], 0             ; 83 3E 5C 04 00
        je      L_2BC2                          ; 74 05
        call    L_484B                          ; E8 8B 1C
        jmp     L_2C2F                          ; EB 6D
;   [conditional branch target (if/else)] L_2BC2
L_2BC2:
        call    L_488E                          ; E8 C9 1C
        jmp     L_2C2F                          ; EB 68
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    L_2C30                          ; E8 62 00
        or      ax, ax                          ; 0B C0
        je      L_2C2F                          ; 74 5D
        mov     word ptr [0x380], 1             ; C7 06 80 03 01 00
        push    word ptr [0x280]                ; FF 36 80 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0C78                          ; E8 97 E0
        mov     si, ax                          ; 8B F0
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_08AD                          ; E8 C4 DC
        push    word ptr [0x280]                ; FF 36 80 02
        ;   ^ arg hWnd
        push    si                              ; 56
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A A9 1E 00 00 [FIXUP]
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_2C2F                          ; 74 35
        mov     ax, 0x226                       ; B8 26 02
        push    ax                              ; 50
        call    L_17E1                          ; E8 E0 EB
        jmp     L_2C2F                          ; EB 2C
        lodsw   ax, word ptr [si]               ; AD
        sub     sp, ax                          ; 29 C4
        sub     di, dx                          ; 29 D7
        sub     sp, di                          ; 29 FC
        sub     word ptr [0x1a2a], ax           ; 29 06 2A 1A
        sub     dl, dl                          ; 2A D2
        sub     bl, ch                          ; 2A DD
        sub     ch, al                          ; 2A E8
        sub     bh, dl                          ; 2A FA
        sub     si, bx                          ; 2B F3
        sub     bh, cl                          ; 2A F9
        sub     cl, byte ptr [bx]               ; 2A 0F
        sub     di, word ptr [si]               ; 2B 3C
        sub     bx, word ptr [bx + 0x2b]        ; 2B 5F 2B
        sub     word ptr [bp + di], -0x77       ; 83 2B 89
        sub     sp, word ptr [di - 0x54d5]      ; 2B A5 2B AB
        sub     ax, di                          ; 2B C7
        sub     bp, word ptr [bx]               ; 2B 2F
        sub     al, 0x2e                        ; 2C 2E
        sub     al, bl                          ; 2A C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  LPSTR     (1 use)

; Description (heuristic):
;   Mixed routine using: DIALOGBOX.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_2C30   offset=0x2C30  size=48 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Far API calls:
;   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
;
; Near calls (internal): L_57CD, L_57F5
;-------------------------------------------------------------------------
;   [sub-routine] L_2C30
L_2C30:
        call    L_57CD                          ; E8 9A 2B
        add     word ptr [bx + di], ax          ; 01 01
        push    word ptr [0x460]                ; FF 36 60 04
        ;   ^ arg hInstance
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpszTemplate (high/segment)
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg lpszTemplate (low/offset)
        push    word ptr [0x262]                ; FF 36 62 02
        ;   ^ arg hWndOwner
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x22]            ; FF B7 22 00
        ;   ^ arg lpDialogFunc (high/segment)
        push    word ptr [bx + 0x20]            ; FF B7 20 00
        ;   ^ arg lpDialogFunc (low/offset)
        ; --> DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     word ptr [0x4c], 0              ; C7 06 4C 00 00 00
        ret                                     ; C3
        call    L_57F5                          ; E8 92 2B
        inc     bx                              ; 43
        add     ax, 0x468b                      ; 05 8B 46
        or      al, 0x3d                        ; 0C 3D
        adc     byte ptr [bx + di], al          ; 10 01
        je      L_2C74                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_2C92                          ; 74 20
        jmp     L_2CAA                          ; EB 36
;   [conditional branch target (if/else)] L_2C74
L_2C74:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x4c], ax             ; A3 4C 00
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        mov     ax, 0x46c                       ; B8 6C 04
        push    ax                              ; 50
        call    far _entry_36                   ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_2C8C
L_2C8C:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2D83                          ; E9 F1 00
;   [conditional branch target (if/else)] L_2C92
L_2C92:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_2CAF                          ; 74 15
        cmp     ax, 2                           ; 3D 02 00
        jne     L_2CA2                          ; 75 03
        jmp     L_2D6C                          ; E9 CA 00
;   [conditional branch target (if/else)] L_2CA2
L_2CA2:
        cmp     ax, 3                           ; 3D 03 00
        jne     L_2CAA                          ; 75 03
        jmp     L_2D73                          ; E9 C9 00
;   [branch target] L_2CAA
L_2CAA:
        sub     ax, ax                          ; 2B C0
        jmp     L_2D83                          ; E9 D4 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xe]  HWND      (2 uses)

; Description (heuristic):
;   File I/O routine (2 file APIs).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_2CAF   offset=0x2CAF  size=69 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ANSIUPPER(LPSTR lpsz) -> LPSTR
;   _LCLOSE(HFILE hFile) -> HFILE
;   _LOPEN(LPSTR lpszPath, INT wReadWrite) -> HFILE
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
;   ISWINDOWENABLED
;
; Near calls (internal): L_31D5, L_3256, L_3BFF
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_2CAF
L_2CAF:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.ISWINDOWENABLED        ; 9A 5D 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_2C8C                          ; 74 C7
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        ;   ^ arg cbMax
        ; --> GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETDLGITEMTEXT         ; 9A 27 28 00 00 [FIXUP]
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ax                              ; 50
        call    L_3256                          ; E8 68 05
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ax                              ; 50
        call    far _entry_37                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_2D0F                          ; 75 13
        push    word ptr [0x2c8]                ; FF 36 C8 02
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    L_31D5                          ; E8 C9 04
        jmp     L_2C8C                          ; E9 7D FF
;   [conditional branch target (if/else)] L_2D0F
L_2D0F:
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        ;   ^ arg lpszPath (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszPath (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wReadWrite
        ; --> _LOPEN(LPSTR lpszPath, INT wReadWrite) -> HFILE
        call    far KERNEL._LOPEN               ; 9A FF FF 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        inc     ax                              ; 40
        je      L_2D27                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2D29                          ; EB 02
;   [conditional branch target (if/else)] L_2D27
L_2D27:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_2D29
L_2D29:
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_2D4D                          ; 74 1E
        push    di                              ; 57
        ;   ^ arg hFile
        ; --> _LCLOSE(HFILE hFile) -> HFILE
        call    far KERNEL._LCLOSE              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x2a4]                ; FF 36 A4 02
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ax                              ; 50
        mov     ax, 0x124                       ; B8 24 01
        push    ax                              ; 50
        call    L_31D5                          ; E8 90 04
        cmp     ax, 7                           ; 3D 07 00
        jne     L_2D4D                          ; 75 03
        jmp     L_2C8C                          ; E9 3F FF
;   [conditional branch target (if/else)] L_2D4D
L_2D4D:
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ax                              ; 50
        push    si                              ; 56
        call    L_3BFF                          ; E8 A9 0E
        or      ax, ax                          ; 0B C0
        jne     L_2D5D                          ; 75 03
        jmp     L_2C8C                          ; E9 2F FF
; Description (heuristic):
;   Thin wrapper around ENDDIALOG(hDlg, nResult) -> BOOL.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_2D5D   offset=0x2D5D  size=8 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_2D5D
L_2D5D:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [loop start] L_2D63
L_2D63:
        push    ax                              ; 50
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A AE 28 00 00 [FIXUP]
        jmp     L_2C8C                          ; E9 20 FF
;   [unconditional branch target] L_2D6C
L_2D6C:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        jmp     L_2D63                          ; EB F0
; Description (heuristic):
;   Mixed routine using: SETDLGITEMTEXT.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_2D73   offset=0x2D73  size=32 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
;
; Near calls (internal): L_32AE, L_57F5
;-------------------------------------------------------------------------
;   [unconditional branch target] L_2D73
L_2D73:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_32AE                          ; E8 2E 05
        jmp     L_2C8C                          ; E9 09 FF
;   [fall-through exit] L_2D83
L_2D83:
        ret                                     ; C3
        call    L_57F5                          ; E8 6E 2A
        or      byte ptr [di], al               ; 08 05
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_2D98                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_2DB2                          ; 74 1C
        jmp     L_2E09                          ; EB 71
;   [conditional branch target (if/else)] L_2D98
L_2D98:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x4c], ax             ; A3 4C 00
        push    ax                              ; 50
        ;   ^ arg hDlg
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x90                        ; B8 90 00
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A E1 27 00 00 [FIXUP]
;   [loop start] L_2DAD
L_2DAD:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2E0B                          ; EB 59
;   [conditional branch target (if/else)] L_2DB2
L_2DB2:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_2DC1                          ; 74 07
        cmp     ax, 2                           ; 3D 02 00
        je      L_2DFC                          ; 74 3D
        jmp     L_2DAD                          ; EB EC
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xe]  HWND      (1 use)

; Description (heuristic):
;   Mixed routine using: CHECKDLGBUTTON, ENDDIALOG, GETDLGITEMTEXT (+1 more).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_2DC1   offset=0x2DC1  size=68 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=8, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   CHECKDLGBUTTON
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
;   SETDLGITEMINT
;
; Near calls (internal): L_0ADF, L_3362, L_57F5
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_2DC1
L_2DC1:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        ;   ^ arg cbMax
        ; --> GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETDLGITEMTEXT         ; 9A D7 2C 00 00 [FIXUP]
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ax                              ; 50
        mov     ax, 0x2ee                       ; B8 EE 02
        push    ax                              ; 50
        call    L_0ADF                          ; E8 FE DC
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        or      ax, ax                          ; 0B C0
        jne     L_2DF0                          ; 75 08
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2E01                          ; EB 11
;   [conditional branch target (if/else)] L_2DF0
L_2DF0:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    L_3362                          ; E8 68 05
        jmp     L_2DAD                          ; EB B1
;   [conditional branch target (if/else)] L_2DFC
L_2DFC:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_2E01
L_2E01:
        push    ax                              ; 50
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A 65 2D 00 00 [FIXUP]
        jmp     L_2DAD                          ; EB A4
;   [fall-through exit] L_2E09
L_2E09:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_2E0B
L_2E0B:
        ret                                     ; C3
        call    L_57F5                          ; E8 E6 29
        add     al, byte ptr [di]               ; 02 05
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_2E21                          ; 74 08
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_2E54                          ; 74 36
        jmp     L_2EF0                          ; E9 CF 00
;   [conditional branch target (if/else)] L_2E21
L_2E21:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x4c], ax             ; A3 4C 00
        push    ax                              ; 50
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        mov     ax, word ptr [0x284]            ; A1 84 02
        mov     word ptr [0x212], ax            ; A3 12 02
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        mov     ax, word ptr [0x2fa]            ; A1 FA 02
        mov     word ptr [0x210], ax            ; A3 10 02
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETDLGITEMINT          ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_2E4E
L_2E4E:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2EF2                          ; E9 9E 00
;   [conditional branch target (if/else)] L_2E54
L_2E54:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_2E68                          ; 74 0C
        cmp     ax, 2                           ; 3D 02 00
        je      L_2EAE                          ; 74 4D
        cmp     ax, 9                           ; 3D 09 00
        je      L_2EBB                          ; 74 55
        jmp     L_2E4E                          ; EB E6
; Description (heuristic):
;   Mixed routine using: ENDDIALOG, GETDLGITEMINT.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_2E68   offset=0x2E68  size=33 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;   GETDLGITEMINT
;
; Near calls (internal): L_31D5
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_2E68
L_2E68:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETDLGITEMINT          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x210], ax            ; A3 10 02
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_2E8A                          ; 74 05
        cmp     ax, 0xa                         ; 3D 0A 00
        jbe     L_2E9A                          ; 76 10
;   [conditional branch target (if/else)] L_2E8A
L_2E8A:
        push    word ptr [0x2ae]                ; FF 36 AE 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    L_31D5                          ; E8 3D 03
        jmp     L_2E4E                          ; EB B4
;   [conditional branch target (if/else)] L_2E9A
L_2E9A:
        mov     ax, word ptr [0x212]            ; A1 12 02
        mov     word ptr [0x284], ax            ; A3 84 02
        mov     ax, word ptr [0x210]            ; A1 10 02
        mov     word ptr [0x2fa], ax            ; A3 FA 02
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2EB3                          ; EB 05
;   [conditional branch target (if/else)] L_2EAE
L_2EAE:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_2EB3
L_2EB3:
        push    ax                              ; 50
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A 03 2E 00 00 [FIXUP]
        jmp     L_2E4E                          ; EB 93
; Description (heuristic):
;   Mixed routine using: CHECKDLGBUTTON, ISDLGBUTTONCHECKED, SETDLGITEMTEXT.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_2EBB   offset=0x2EBB  size=79 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   CHECKDLGBUTTON
;   ISDLGBUTTONCHECKED
;   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
;
; Near calls (internal): L_08DE, L_32AE, L_57F5
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_2EBB
L_2EBB:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_2ED4                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2ED6                          ; EB 02
;   [conditional branch target (if/else)] L_2ED4
L_2ED4:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_2ED6
L_2ED6:
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 34 2E 00 00 [FIXUP]
        cmp     word ptr [0x212], 0             ; 83 3E 12 02 00
        jne     L_2EE8                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2EEA                          ; EB 02
;   [conditional branch target (if/else)] L_2EE8
L_2EE8:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_2EEA
L_2EEA:
        mov     word ptr [0x212], ax            ; A3 12 02
        jmp     L_2E4E                          ; E9 5E FF
;   [fall-through exit] L_2EF0
L_2EF0:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_2EF2
L_2EF2:
        ret                                     ; C3
        call    L_57F5                          ; E8 FF 28
        or      al, byte ptr [di]               ; 0A 05
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_2F08                          ; 74 08
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_2F62                          ; 74 5D
        jmp     L_3027                          ; E9 1F 01
;   [conditional branch target (if/else)] L_2F08
L_2F08:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x4c], ax             ; A3 4C 00
        mov     bx, word ptr [0x24a]            ; 8B 1E 4A 02
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [bx + 0x310]       ; 8B BF 10 03
        mov     ax, di                          ; 8B C7
        cdq                                     ; 99
        mov     cx, word ptr [0x258]            ; 8B 0E 58 02
        idiv    cx                              ; F7 F9
        or      dx, dx                          ; 0B D2
        je      L_2F40                          ; 74 19
        push    di                              ; 57
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ax                              ; 50
        call    L_08DE                          ; E8 AF D9
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A A9 2D 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_2F40
L_2F40:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, 0x300                       ; B8 00 03
        push    ax                              ; 50
        call    L_32AE                          ; E8 60 03
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        mov     ax, 0x300                       ; B8 00 03
        push    ax                              ; 50
;   [loop start] L_2F59
L_2F59:
        call    L_32AE                          ; E8 52 03
;   [loop start] L_2F5C
L_2F5C:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3029                          ; E9 C7 00
;   [conditional branch target (if/else)] L_2F62
L_2F62:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_2FA0                          ; 74 36
        cmp     ax, 2                           ; 3D 02 00
        je      L_2F99                          ; 74 2A
        cmp     ax, 3                           ; 3D 03 00
        je      L_2F80                          ; 74 0C
        cmp     ax, 0xa                         ; 3D 0A 00
        je      L_2FA0                          ; 74 27
        cmp     ax, 0xb                         ; 3D 0B 00
        je      L_2FAC                          ; 74 2E
        jmp     L_2F5C                          ; EB DC
; Description (heuristic):
;   Mixed routine using: GETDLGITEMTEXT.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_2F80   offset=0x2F80  size=59 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
;
; Near calls (internal): L_0A96, L_220A, L_31D5, L_32AE, L_3362
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_2F80
L_2F80:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_32AE                          ; E8 21 03
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        jmp     L_2F59                          ; EB C0
;   [conditional branch target (if/else)] L_2F99
L_2F99:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        jmp     L_301E                          ; EB 7E
;   [conditional branch target (if/else)] L_2FA0
L_2FA0:
        mov     word ptr [0x45c], 1             ; C7 06 5C 04 01 00
        mov     si, word ptr [0x2b4]            ; 8B 36 B4 02
        jmp     L_2FB6                          ; EB 0A
;   [conditional branch target (if/else)] L_2FAC
L_2FAC:
        mov     word ptr [0x45c], 0             ; C7 06 5C 04 00 00
        mov     si, word ptr [0x2b2]            ; 8B 36 B2 02
;   [unconditional branch target] L_2FB6
L_2FB6:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        ;   ^ arg cbMax
        ; --> GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETDLGITEMTEXT         ; 9A D2 2D 00 00 [FIXUP]
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ax                              ; 50
        mov     ax, 0x22c                       ; B8 2C 02
        push    ax                              ; 50
        call    L_0A96                          ; E8 C0 DA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        jge     L_2FE9                          ; 7D 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_3362                          ; E8 7C 03
        jmp     L_2F5C                          ; E9 73 FF
;   [conditional branch target (if/else)] L_2FE9
L_2FE9:
        mov     ax, word ptr [0x22c]            ; A1 2C 02
        cdq                                     ; 99
        mov     cx, word ptr [0x258]            ; 8B 0E 58 02
        idiv    cx                              ; F7 F9
        or      dx, dx                          ; 0B D2
        jne     L_2FFD                          ; 75 06
        push    word ptr [0x2b0]                ; FF 36 B0 02
        jmp     L_300B                          ; EB 0E
;   [conditional branch target (if/else)] L_2FFD
L_2FFD:
        push    word ptr [0x22c]                ; FF 36 2C 02
        call    L_220A                          ; E8 06 F2
        xor     ax, word ptr [0x45c]            ; 33 06 5C 04
        jne     L_3018                          ; 75 0E
        push    si                              ; 56
;   [unconditional branch target] L_300B
L_300B:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    L_31D5                          ; E8 C0 01
        jmp     L_2F5C                          ; E9 44 FF
; Description (heuristic):
;   Dialog procedure (DlgProc). Handles dialog messages.
;   Reads/writes dialog item text.

;-------------------------------------------------------------------------
; sub_3018   offset=0x3018  size=171 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   CHECKRADIOBUTTON
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
;   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
;
; Near calls (internal): L_0598, L_08DE, L_0A96, L_3362, L_57F5
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_3018
L_3018:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_301E
L_301E:
        push    ax                              ; 50
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A B5 2E 00 00 [FIXUP]
        jmp     L_2F5C                          ; E9 35 FF
;   [fall-through exit] L_3027
L_3027:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_3029
L_3029:
        ret                                     ; C3
        call    L_57F5                          ; E8 C8 27
        or      word ptr [di], ax               ; 09 05
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_303E                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_3095                          ; 74 59
        jmp     L_3090                          ; EB 52
;   [conditional branch target (if/else)] L_303E
L_303E:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x4c], ax             ; A3 4C 00
        push    ax                              ; 50
        ; constant WM_PAINT
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        mov     ax, word ptr [0x44a]            ; A1 4A 04
        add     ax, 0xf                         ; 05 0F 00
        mov     word ptr [0x214], ax            ; A3 14 02
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x230]                ; FF 36 30 02
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        call    L_08DE                          ; E8 77 D8
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A 3C 2F 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, word ptr [0x272]            ; A1 72 02
        add     ax, 0xc                         ; 05 0C 00
        mov     word ptr [0x216], ax            ; A3 16 02
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A B7 2C 00 00 [FIXUP]
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0598                          ; E8 08 D5
;   [unconditional branch target] L_3090
L_3090:
        sub     ax, ax                          ; 2B C0
        jmp     L_319E                          ; E9 09 01
;   [conditional branch target (if/else)] L_3095
L_3095:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0xf                         ; 3D 0F 00
        jbe     L_30A3                          ; 76 03
        jmp     L_319B                          ; E9 F8 00
;   [conditional branch target (if/else)] L_30A3
L_30A3:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x317b]       ; 2E FF A7 7B 31
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        ;   ^ arg cbMax
        ; --> GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETDLGITEMTEXT         ; 9A C7 2F 00 00 [FIXUP]
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        mov     ax, 0x230                       ; B8 30 02
        push    ax                              ; 50
        call    L_0A96                          ; E8 CB D9
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jge     L_30DE                          ; 7D 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_3362                          ; E8 87 02
        jmp     L_319B                          ; E9 BD 00
;   [conditional branch target (if/else)] L_30DE
L_30DE:
        mov     ax, word ptr [0x214]            ; A1 14 02
        sub     ax, 0xf                         ; 2D 0F 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x44a]            ; A1 4A 04
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        je      L_310B                          ; 74 1C
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0x44a], ax            ; A3 4A 04
        push    word ptr [0x460]                ; FF 36 60 04
        or      ax, ax                          ; 0B C0
        je      L_3102                          ; 74 05
        mov     ax, 0x20                        ; B8 20 00
        jmp     L_3105                          ; EB 03
;   [conditional branch target (if/else)] L_3102
L_3102:
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
;   [unconditional branch target] L_3105
L_3105:
        push    ax                              ; 50
        call    far _entry_28                   ; 9A 35 07 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_310B
L_310B:
        mov     ax, word ptr [0x216]            ; A1 16 02
        sub     ax, 0xc                         ; 2D 0C 00
        mov     word ptr [0x272], ax            ; A3 72 02
        or      ax, ax                          ; 0B C0
        je      L_3124                          ; 74 0C
        cmp     ax, 1                           ; 3D 01 00
        je      L_3132                          ; 74 15
        cmp     ax, 2                           ; 3D 02 00
        je      L_313A                          ; 74 18
        jmp     L_312A                          ; EB 06
;   [conditional branch target (if/else)] L_3124
L_3124:
        mov     word ptr [0x258], 0xf           ; C7 06 58 02 0F 00
;   [loop start (also forward branch)] L_312A
L_312A:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3147                          ; EB 15
;   [conditional branch target (if/else)] L_3132
L_3132:
        mov     word ptr [0x258], 0x1e          ; C7 06 58 02 1E 00
        jmp     L_312A                          ; EB F0
;   [conditional branch target (if/else)] L_313A
L_313A:
        mov     word ptr [0x258], 0x3c          ; C7 06 58 02 3C 00
        jmp     L_312A                          ; EB E8
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_3147
L_3147:
        push    ax                              ; 50
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A 20 30 00 00 [FIXUP]
        jmp     L_319B                          ; EB 4C
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x216], ax            ; A3 16 02
;   [loop start] L_3160
L_3160:
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A 58 30 00 00 [FIXUP]
        jmp     L_319B                          ; EB 33
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_PAINT
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x214], ax            ; A3 14 02
        jmp     L_3160                          ; EB E5
        stosw   word ptr es:[di], ax            ; AB
        xor     byte ptr [bp + si + 0x31], al   ; 30 42 31
        wait                                    ; 9B
        xor     word ptr [bp + di - 0x64cf], bx ; 31 9B 31 9B
        xor     word ptr [bp + di - 0x64cf], bx ; 31 9B 31 9B
        xor     word ptr [bp + di - 0x64cf], bx ; 31 9B 31 9B
        xor     word ptr [bp + di - 0x64cf], bx ; 31 9B 31 9B
        xor     word ptr [bx + 0x31], cx        ; 31 4F 31
        dec     di                              ; 4F
        xor     word ptr [bx + 0x31], cx        ; 31 4F 31
        push    0x6831                          ; 68 31 68
        xor     word ptr [bx + si + 1], di      ; 31 B8 01 00
;   [fall-through exit] L_319E
L_319E:
        ret                                     ; C3
        call    L_57F5                          ; E8 53 26
        add     byte ptr [di], al               ; 00 05
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_31B3                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_31BE                          ; 74 0D
        jmp     L_31D2                          ; EB 1F
;   [conditional branch target (if/else)] L_31B3
L_31B3:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x4c], ax             ; A3 4C 00
;   [loop start] L_31B9
L_31B9:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_31D4                          ; EB 16
;   [conditional branch target (if/else)] L_31BE
L_31BE:
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        jne     L_31D2                          ; 75 0E
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A 49 31 00 00 [FIXUP]
        jmp     L_31B9                          ; EB E7
;   [error/early exit] L_31D2
L_31D2:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_31D4
L_31D4:
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around MESSAGEBOX(hWndOwner, lpszText, lpszTitle, wStyle) -> INT.

;-------------------------------------------------------------------------
; sub_31D5   offset=0x31D5  size=23 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
;
; Near calls (internal): L_320B, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_31D5
L_31D5:
        call    L_57CD                          ; E8 F5 25
        add     byte ptr [bp + di], 0xff        ; 82 03 FF
        jbe     L_31E5                          ; 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x100]                ; 8D 86 00 FF
        push    ax                              ; 50
;   [conditional branch target (if/else)] L_31E5
L_31E5:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_320B                          ; E8 21 00
        mov     si, word ptr [0x4c]             ; 8B 36 4C 00
        or      si, si                          ; 0B F6
        jne     L_31F6                          ; 75 04
        mov     si, word ptr [0x262]            ; 8B 36 62 02
;   [conditional branch target (if/else)] L_31F6
L_31F6:
        push    si                              ; 56
        ;   ^ arg hWndOwner
        lea     ax, [bp - 0x100]                ; 8D 86 00 FF
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, word ptr [0x28a]            ; A1 8A 02
        push    ds                              ; 1E
        ;   ^ arg lpszTitle (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTitle (low/offset)
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg wStyle
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (35 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_320B   offset=0x320B  size=35 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=3)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57F5
;-------------------------------------------------------------------------
;   [sub-routine] L_320B
L_320B:
        call    L_57F5                          ; E8 E7 25
        add     ax, word ptr [bp + di]          ; 03 03
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
;   [loop start] L_3216
L_3216:
        mov     ax, word ptr [0x43e]            ; A1 3E 04
        cmp     word ptr [si], ax               ; 39 04
        jne     L_3225                          ; 75 08
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_3248                          ; 74 25
        jmp     L_3240                          ; EB 1B
;   [conditional branch target (if/else)] L_3225
L_3225:
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
        inc     si                              ; 46
        cmp     byte ptr [si - 1], 0            ; 80 7C FF 00
        jne     L_3216                          ; 75 E5
        sub     ax, ax                          ; 2B C0
        jmp     L_3255                          ; EB 20
;   [loop start] L_3235
L_3235:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
;   [unconditional branch target] L_3240
L_3240:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_3235                          ; 75 ED
;   [conditional branch target (if/else)] L_3248
L_3248:
        inc     si                              ; 46
        inc     si                              ; 46
;   [loop start] L_324A
L_324A:
        lodsb   al, byte ptr [si]               ; AC
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
        or      al, al                          ; 0A C0
        jne     L_324A                          ; 75 F8
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_3255
L_3255:
        ret                                     ; C3
; Description (heuristic):
;   String manipulation routine (2 string APIs).

;-------------------------------------------------------------------------
; sub_3256   offset=0x3256  size=40 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   ANSIPREV
;   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LSTRLEN(LPSTR lpsz) -> INT
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_3256
L_3256:
        call    L_57CD                          ; E8 74 25
        add     al, byte ptr [bx + di]          ; 02 01
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A 97 1E 00 00 [FIXUP]
        add     ax, si                          ; 03 C6
        jmp     L_3288                          ; EB 1D
;   [loop start] L_326B
L_326B:
        cmp     di, 0x5c                        ; 83 FF 5C
        je      L_3297                          ; 74 27
        cmp     di, 0x3a                        ; 83 FF 3A
        je      L_3297                          ; 74 22
        cmp     word ptr [bp - 2], si           ; 39 76 FE
        jbe     L_3297                          ; 76 1D
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_3288
L_3288:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx]               ; 8A 07
        cwde                                    ; 98
        mov     di, ax                          ; 8B F8
        cmp     di, 0x2e                        ; 83 FF 2E
        jne     L_326B                          ; 75 D4
;   [conditional branch target (if/else)] L_3297
L_3297:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        cmp     byte ptr [bx], 0x2e             ; 80 3F 2E
        je      L_32AD                          ; 74 0E
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x91                        ; B8 91 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_32AD
L_32AD:
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  INT       (1 use)
;     [bp+0x8]  HWND      (2 uses)

; Description (heuristic):
;   Small helper using 3 API(s): ENABLEWINDOW, GETDLGITEM, SENDMESSAGE.

;-------------------------------------------------------------------------
; sub_32AE   offset=0x32AE  size=23 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   ENABLEWINDOW
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_32AE
L_32AE:
        call    L_57CD                          ; E8 1C 25
        add     byte ptr [bp + di], al          ; 00 03
        cmp     word ptr [bp + 4], 0x300        ; 81 7E 04 00 03
        jne     L_32E7                          ; 75 2D
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hDlg
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A CE 32 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hDlg
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 86 30 00 00 [FIXUP]
        push    ax                              ; 50
        ;   ^ arg hWnd
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A CB 2A 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_32E7
L_32E7:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (36 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_32E8   offset=0x32E8  size=36 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_2C30, L_31D5, L_3341, L_3BFF, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_32E8
L_32E8:
        call    L_57CD                          ; E8 E2 24
        add     byte ptr [bx + di], al          ; 00 01
        call    L_3341                          ; E8 51 00
        cmp     word ptr [0x380], 0             ; 83 3E 80 03 00
        je      L_333D                          ; 74 46
        push    word ptr [0x2a6]                ; FF 36 A6 02
        mov     ax, 0x3be                       ; B8 BE 03
        push    ax                              ; 50
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_330A                          ; 74 05
        mov     ax, 0x1000                      ; B8 00 10
        jmp     L_330C                          ; EB 02
;   [conditional branch target (if/else)] L_330A
L_330A:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_330C
L_330C:
        or      al, 0x23                        ; 0C 23
        push    ax                              ; 50
        call    L_31D5                          ; E8 C3 FE
        cmp     ax, 2                           ; 3D 02 00
        je      L_3339                          ; 74 22
        cmp     ax, 6                           ; 3D 06 00
        jne     L_333D                          ; 75 21
        cmp     word ptr [0x23a], 0             ; 83 3E 3A 02 00
        je      L_3330                          ; 74 0D
        mov     ax, 0x3be                       ; B8 BE 03
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_3BFF                          ; E8 D1 08
        jmp     L_3340                          ; EB 10
;   [conditional branch target (if/else)] L_3330
L_3330:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_2C30                          ; E8 F9 F8
        jmp     L_3340                          ; EB 07
;   [conditional branch target (if/else)] L_3339
L_3339:
        sub     ax, ax                          ; 2B C0
        jmp     L_3340                          ; EB 03
;   [error/early exit] L_333D
L_333D:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_3340
L_3340:
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around GETFOCUS.

;-------------------------------------------------------------------------
; sub_3341   offset=0x3341  size=12 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   GETFOCUS
;
; Near calls (internal): L_22AE, L_2549, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_3341
L_3341:
        call    L_57CD                          ; E8 89 24
        add     word ptr [bx + si], ax          ; 01 00
        call    far USER.GETFOCUS               ; 9A D3 2A 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        cmp     si, word ptr [0x2e8]            ; 3B 36 E8 02
        jne     L_3358                          ; 75 05
        call    L_2549                          ; E8 F3 F1
        jmp     L_3361                          ; EB 09
;   [conditional branch target (if/else)] L_3358
L_3358:
        cmp     word ptr [0x27a], si            ; 39 36 7A 02
        jne     L_3361                          ; 75 03
        call    L_22AE                          ; E8 4D EF
;   [error/early exit] L_3361
L_3361:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (57 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_3362   offset=0x3362  size=57 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_08DE, L_31D5, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_3362
L_3362:
        call    L_57CD                          ; E8 68 24
        test    word ptr [bp + si], ax          ; 85 02
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     ax, 0xfffd                      ; 3D FD FF
        je      L_3380                          ; 74 0C
        cmp     ax, 0xfffe                      ; 3D FE FF
        je      L_3388                          ; 74 0F
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_339E                          ; 74 20
        jmp     L_33F1                          ; EB 71
;   [conditional branch target (if/else)] L_3380
L_3380:
        mov     ax, word ptr [0x2d2]            ; A1 D2 02
;   [loop start] L_3383
L_3383:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_33F1                          ; EB 69
;   [conditional branch target (if/else)] L_3388
L_3388:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_3393                          ; 74 05
        mov     bx, 0x26                        ; BB 26 00
        jmp     L_3396                          ; EB 03
;   [conditional branch target (if/else)] L_3393
L_3393:
        mov     bx, 0x27                        ; BB 27 00
;   [unconditional branch target] L_3396
L_3396:
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x288]       ; 8B 87 88 02
        jmp     L_3383                          ; EB E5
;   [conditional branch target (if/else)] L_339E
L_339E:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_33A9                          ; 74 05
        mov     ax, word ptr [0x28c]            ; A1 8C 02
        jmp     L_33AC                          ; EB 03
;   [conditional branch target (if/else)] L_33A9
L_33A9:
        mov     ax, word ptr [0x290]            ; A1 90 02
;   [unconditional branch target] L_33AC
L_33AC:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        lea     ax, [bp - 0x10a]                ; 8D 86 F6 FE
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_33E7                          ; 74 2B
        mov     al, byte ptr [0x226]            ; A0 26 02
        inc     al                              ; FE C0
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        mov     al, byte ptr [0x228]            ; A0 28 02
        inc     al                              ; FE C0
        mov     byte ptr [bp - 7], al           ; 88 46 F9
        mov     ax, word ptr [0x22a]            ; A1 2A 02
        add     ax, 0x7bc                       ; 05 BC 07
        mov     word ptr [bp - 5], ax           ; 89 46 FB
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_33                   ; 9A D0 27 00 00 [FIXUP]
        jmp     L_33F1                          ; EB 0A
;   [conditional branch target (if/else)] L_33E7
L_33E7:
        push    word ptr [0x25e]                ; FF 36 5E 02
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    L_08DE                          ; E8 ED D4
;   [unconditional branch target] L_33F1
L_33F1:
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    L_31D5                          ; E8 D7 FD
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: INVALIDATERECT.

;-------------------------------------------------------------------------
; sub_33FF   offset=0x33FF  size=42 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;
; Near calls (internal): L_1237, L_12D6, L_3490, L_3695, L_36A4, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_33FF
L_33FF:
        call    L_57CD                          ; E8 CB 23
        pop     es                              ; 07
        add     byte ptr [bx + si + 0x226], bh  ; 00 B8 26 02
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12D6                          ; E8 C9 DE
        mov     si, ax                          ; 8B F0
        push    si                              ; 56
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ax                              ; 50
        call    L_3490                          ; E8 79 00
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp - 0xa]             ; F7 6E F6
        mov     di, ax                          ; 8B F8
        call    L_3695                          ; E8 73 02
        add     di, ax                          ; 03 F8
        cmp     word ptr [di + 2], 0            ; 83 7D 02 00
        jne     L_342F                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3431                          ; EB 02
;   [conditional branch target (if/else)] L_342F
L_342F:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_3431
L_3431:
        mov     word ptr [di + 2], ax           ; 89 45 02
        call    L_36A4                          ; E8 6D 02
        mov     bx, word ptr [0x228]            ; 8B 1E 28 02
        add     bx, word ptr [0x466]            ; 03 1E 66 04
        xor     byte ptr [bx + 0x394], 0x80     ; 80 B7 94 03 80
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        jne     L_3468                          ; 75 1D
        push    word ptr [0x228]                ; FF 36 28 02
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        call    L_1237                          ; E8 E1 DD
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ;   ^ arg hWnd
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A 45 1F 00 00 [FIXUP]
;   [error/early exit] L_3468
L_3468:
        mov     word ptr [0x380], 1             ; C7 06 80 03 01 00
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around LOCALREALLOC(hMem, wBytes, wFlags) -> HANDLE.

;-------------------------------------------------------------------------
; sub_346F   offset=0x346F  size=13 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_346F
L_346F:
        call    L_57CD                          ; E8 5B 23
        add     byte ptr [bx + si], al          ; 00 00
        push    word ptr [0x5f0]                ; FF 36 F0 05
        ;   ^ arg hMem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wBytes
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        ; --> LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.LOCALREALLOC         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x5f0], ax            ; A3 F0 05
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x2e6], ax            ; A3 E6 02
        mov     word ptr [0x26a], ax            ; A3 6A 02
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (55 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_3490   offset=0x3490  size=55 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_36A4, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_3490
L_3490:
        call    L_57CD                          ; E8 3A 23
        push    es                              ; 06
        add     ch, al                          ; 02 E8
        std                                     ; FD
        add     word ptr [bx + di - 0xbba], cx  ; 01 89 46 F4
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        sub     si, si                          ; 2B F6
        mov     word ptr [bx], si               ; 89 37
        mov     di, word ptr [0x26a]            ; 8B 3E 6A 02
        dec     di                              ; 4F
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_3503                          ; EB 52
;   [loop start] L_34B1
L_34B1:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_3507                          ; 75 50
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     ax, si                          ; 8B C6
        add     ax, di                          ; 03 C7
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx], ax               ; 89 07
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        imul    word ptr [bx]                   ; F7 2F
        mov     bx, ax                          ; 8B D8
        add     bx, word ptr [bp - 0xc]         ; 03 5E F4
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jne     L_34E8                          ; 75 07
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
        jmp     L_3503                          ; EB 1B
;   [conditional branch target (if/else)] L_34E8
L_34E8:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jbe     L_34FD                          ; 76 0D
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     si, word ptr [bx]               ; 8B 37
        inc     si                              ; 46
        jmp     L_3503                          ; EB 06
;   [conditional branch target (if/else)] L_34FD
L_34FD:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     di, word ptr [bx]               ; 8B 3F
        dec     di                              ; 4F
;   [unconditional branch target] L_3503
L_3503:
        cmp     si, di                          ; 3B F7
        jle     L_34B1                          ; 7E AA
;   [conditional branch target (if/else)] L_3507
L_3507:
        call    L_36A4                          ; E8 9A 01
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_3515                          ; 74 05
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        inc     word ptr [bx]                   ; FF 07
;   [error/early exit] L_3515
L_3515:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: LOCALREALLOC.

;-------------------------------------------------------------------------
; sub_3519   offset=0x3519  size=52 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
;
; Near calls (internal): L_31D5, L_35FF, L_3695, L_36A4, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_3519
L_3519:
        call    L_57CD                          ; E8 B1 22
        add     ax, word ptr [bp + si]          ; 03 02
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     ax, word ptr [0x26a]            ; A1 6A 02
        add     si, ax                          ; 03 F0
        cmp     si, 0x200                       ; 81 FE 00 02
        jle     L_353E                          ; 7E 12
        push    word ptr [0x2bc]                ; FF 36 BC 02
;   [loop start] L_3530
L_3530:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    L_31D5                          ; E8 9B FC
        sub     ax, ax                          ; 2B C0
        jmp     L_359E                          ; EB 60
;   [conditional branch target (if/else)] L_353E
L_353E:
        cmp     word ptr [0x2e6], si            ; 39 36 E6 02
        jge     L_356A                          ; 7D 26
        mov     di, si                          ; 8B FE
        add     di, 8                           ; 83 C7 08
        push    word ptr [0x5f0]                ; FF 36 F0 05
        ;   ^ arg hMem
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    di                              ; F7 EF
        push    ax                              ; 50
        ;   ^ arg wBytes
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        ; --> LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.LOCALREALLOC         ; 9A 80 34 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_3566                          ; 75 06
        push    word ptr [0x29c]                ; FF 36 9C 02
        jmp     L_3530                          ; EB CA
;   [conditional branch target (if/else)] L_3566
L_3566:
        mov     word ptr [0x2e6], di            ; 89 3E E6 02
;   [conditional branch target (if/else)] L_356A
L_356A:
        call    L_3695                          ; E8 28 01
        mov     cx, ax                          ; 8B C8
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        add     ax, cx                          ; 03 C1
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp + 4]               ; F7 6E 04
        add     ax, word ptr [bp - 2]           ; 03 46 FE
        push    ax                              ; 50
        mov     ax, word ptr [0x26a]            ; A1 6A 02
        sub     ax, word ptr [bp + 6]           ; 2B 46 06
        ; constant WM_SETTEXT
        mov     cx, 0xc                         ; B9 0C 00
        imul    cx                              ; F7 E9
        push    ax                              ; 50
        call    L_35FF                          ; E8 6B 00
        call    L_36A4                          ; E8 0D 01
        mov     word ptr [0x26a], si            ; 89 36 6A 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_359E
L_359E:
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: LOCALREALLOC.

;-------------------------------------------------------------------------
; sub_359F   offset=0x359F  size=37 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
;
; Near calls (internal): L_35FF, L_3695, L_36A4, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_359F
L_359F:
        call    L_57CD                          ; E8 2B 22
        add     al, byte ptr [bp + si]          ; 02 02
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        call    L_3695                          ; E8 E6 00
        add     si, ax                          ; 03 F0
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp + 4]               ; F7 6E 04
        add     ax, si                          ; 03 C6
        push    ax                              ; 50
        push    si                              ; 56
        mov     ax, word ptr [0x26a]            ; A1 6A 02
        sub     ax, word ptr [bp + 6]           ; 2B 46 06
        sub     ax, word ptr [bp + 4]           ; 2B 46 04
        ; constant WM_SETTEXT
        mov     cx, 0xc                         ; B9 0C 00
        imul    cx                              ; F7 E9
        push    ax                              ; 50
        call    L_35FF                          ; E8 32 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     word ptr [0x26a], ax            ; 29 06 6A 02
        call    L_36A4                          ; E8 CD 00
        mov     di, word ptr [0x26a]            ; 8B 3E 6A 02
        add     di, 8                           ; 83 C7 08
        mov     ax, word ptr [0x2e6]            ; A1 E6 02
        cmp     di, ax                          ; 3B F8
        jge     L_35FE                          ; 7D 19
        push    word ptr [0x5f0]                ; FF 36 F0 05
        ;   ^ arg hMem
        mov     word ptr [0x2e6], di            ; 89 3E E6 02
        mov     ax, di                          ; 8B C7
        ; constant WM_SETTEXT
        mov     cx, 0xc                         ; B9 0C 00
        imul    cx                              ; F7 E9
        push    ax                              ; 50
        ;   ^ arg wBytes
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        ; --> LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.LOCALREALLOC         ; 9A 58 35 00 00 [FIXUP]
;   [error/early exit] L_35FE
L_35FE:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (34 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_35FF   offset=0x35FF  size=34 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_35FF
L_35FF:
        call    L_57CD                          ; E8 CB 21
        add     word ptr [bp + di], ax          ; 01 03
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        add     si, word ptr [bp + 6]           ; 03 76 06
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jb      L_362E                          ; 72 1C
;   [loop start] L_3612
L_3612:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        dec     word ptr [bp + 4]               ; FF 4E 04
        or      ax, ax                          ; 0B C0
        je      L_3653                          ; 74 37
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr [di]               ; 8A 05
        mov     byte ptr [bx], al               ; 88 07
        jmp     L_3612                          ; EB E4
;   [conditional branch target (if/else)] L_362E
L_362E:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     word ptr [bp + 8], ax           ; 01 46 08
        mov     word ptr [bp + 6], si           ; 89 76 06
        jmp     L_3649                          ; EB 10
;   [loop start] L_3639
L_3639:
        dec     word ptr [bp + 6]               ; FF 4E 06
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        dec     word ptr [bp + 8]               ; FF 4E 08
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        mov     al, byte ptr [di]               ; 8A 05
        mov     byte ptr [bx], al               ; 88 07
;   [unconditional branch target] L_3649
L_3649:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        dec     word ptr [bp + 4]               ; FF 4E 04
        or      ax, ax                          ; 0B C0
        jne     L_3639                          ; 75 E6
;   [error/early exit] L_3653
L_3653:
        mov     ax, si                          ; 8B C6
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (25 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_3656   offset=0x3656  size=25 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_359F, L_3695, L_36A4, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_3656
L_3656:
        call    L_57CD                          ; E8 74 21
        add     al, byte ptr [bx + di]          ; 02 01
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp + 4]               ; F7 6E 04
        mov     si, ax                          ; 8B F0
        call    L_3695                          ; E8 2F 00
        add     si, ax                          ; 03 F0
        cmp     word ptr [si + 2], 0            ; 83 7C 02 00
        jne     L_367F                          ; 75 11
        cmp     word ptr [si + 6], -1           ; 83 7C 06 FF
        jne     L_367F                          ; 75 0B
        cmp     word ptr [si + 8], -1           ; 83 7C 08 FF
        jne     L_367F                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3681                          ; EB 02
;   [conditional branch target (if/else)] L_367F
L_367F:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_3681
L_3681:
        mov     di, ax                          ; 8B F8
        call    L_36A4                          ; E8 1E 00
        or      di, di                          ; 0B FF
        je      L_3694                          ; 74 0A
        push    word ptr [bp + 4]               ; FF 76 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_359F                          ; E8 0B FF
;   [error/early exit] L_3694
L_3694:
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around LOCALLOCK(hMem) -> PSTR.

;-------------------------------------------------------------------------
; sub_3695   offset=0x3695  size=5 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   LOCALLOCK(HANDLE hMem) -> PSTR
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_3695
L_3695:
        call    L_57CD                          ; E8 35 21
        add     byte ptr [bx + si], al          ; 00 00
        push    word ptr [0x5f0]                ; FF 36 F0 05
        ;   ^ arg hMem
        ; --> LOCALLOCK(HANDLE hMem) -> PSTR
        call    far KERNEL.LOCALLOCK            ; 9A 1F 25 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around LOCALUNLOCK(hMem) -> BOOL.

;-------------------------------------------------------------------------
; sub_36A4   offset=0x36A4  size=5 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   LOCALUNLOCK(HANDLE hMem) -> BOOL
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_36A4
L_36A4:
        call    L_57CD                          ; E8 26 21
        add     byte ptr [bx + si], al          ; 00 00
        push    word ptr [0x5f0]                ; FF 36 F0 05
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A 33 25 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (19 instructions).

;-------------------------------------------------------------------------
; sub_36B3   offset=0x36B3  size=19 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_31D5, L_36E1, L_36FB, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_36B3
L_36B3:
        call    L_57CD                          ; E8 17 21
        add     byte ptr [bx + si], al          ; 00 00
        call    L_36E1                          ; E8 26 00
        mov     word ptr [0x24c], 0             ; C7 06 4C 02 00 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_36FB                          ; E8 30 00
        mov     word ptr [0x52], ax             ; A3 52 00
        or      ax, ax                          ; 0B C0
        jne     L_36E0                          ; 75 0E
        push    word ptr [0x292]                ; FF 36 92 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    L_31D5                          ; E8 F5 FA
;   [error/early exit] L_36E0
L_36E0:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (9 instructions).

;-------------------------------------------------------------------------
; sub_36E1   offset=0x36E1  size=9 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_4091, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_36E1
L_36E1:
        call    L_57CD                          ; E8 E9 20
        add     byte ptr [bx + si], al          ; 00 00
        cmp     word ptr [0x52], 0              ; 83 3E 52 00 00
        je      L_36FA                          ; 74 0D
        mov     word ptr [0x52], 0              ; C7 06 52 00 00 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_4091                          ; E8 97 09
;   [error/early exit] L_36FA
L_36FA:
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x2]   HFILE     (2 uses)

; Description (heuristic):
;   File I/O routine (3 file APIs).

;-------------------------------------------------------------------------
; sub_36FB   offset=0x36FB  size=37 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   GETTEMPFILENAME
;   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
;   _LCLOSE(HFILE hFile) -> HFILE
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_36FB
L_36FB:
        call    L_57CD                          ; E8 CF 20
        inc     cx                              ; 41
        add     cl, byte ptr [bp + si + 0x446]  ; 02 8A 46 04
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     ax, 0x96                        ; B8 96 00
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.GETTEMPFILENAME      ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_374B                          ; 74 2E
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        ;   ^ arg lpszFileName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszFileName (low/offset)
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     cl, 7                           ; B1 07
        shl     ax, cl                          ; D3 E0
        add     ax, 0x46c                       ; 05 6C 04
        push    ds                              ; 1E
        ;   ^ arg lpReOpenBuff (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpReOpenBuff (low/offset)
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
        call    far KERNEL.OPENFILE             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        inc     ax                              ; 40
        je      L_374B                          ; 74 0D
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hFile
        ; --> _LCLOSE(HFILE hFile) -> HFILE
        call    far KERNEL._LCLOSE              ; 9A 31 2D 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_374D                          ; EB 02
;   [error/early exit] L_374B
L_374B:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_374D
L_374D:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (47 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_374E   offset=0x374E  size=47 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_31D5, L_37C6, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_374E
L_374E:
        call    L_57CD                          ; E8 7C 20
        add     word ptr [bp + si], ax          ; 01 02
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     word ptr [bx + 4], 0            ; 83 7F 04 00
        jne     L_3768                          ; 75 0C
;   [loop start] L_375C
L_375C:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx], 0xfffe           ; C7 07 FE FF
;   [loop start] L_3763
L_3763:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_37C5                          ; EB 5D
;   [conditional branch target (if/else)] L_3768
L_3768:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        add     ax, word ptr [bx + 8]           ; 03 47 08
        jne     L_377C                          ; 75 09
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx], 0xffff           ; C7 07 FF FF
        jmp     L_3763                          ; EB E7
;   [conditional branch target (if/else)] L_377C
L_377C:
        cmp     word ptr [0x52], 0              ; 83 3E 52 00 00
        jne     L_3793                          ; 75 10
        push    word ptr [0x294]                ; FF 36 94 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    L_31D5                          ; E8 44 FA
        jmp     L_375C                          ; EB C9
;   [conditional branch target (if/else)] L_3793
L_3793:
        mov     ax, word ptr [0x24c]            ; A1 4C 02
        or      ah, 0x80                        ; 80 CC 80
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_37C6                          ; E8 1F 00
        or      ax, ax                          ; 0B C0
        je      L_37B5                          ; 74 0A
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [bx], ax               ; 89 07
        jmp     L_3763                          ; EB AE
;   [conditional branch target (if/else)] L_37B5
L_37B5:
        push    word ptr [0x296]                ; FF 36 96 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    L_31D5                          ; E8 12 FA
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_37C5
L_37C5:
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  WORD      (1 use)

; Description (heuristic):
;   Mixed routine using: _LLSEEK.

;-------------------------------------------------------------------------
; sub_37C6   offset=0x37C6  size=70 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
;
; Near calls (internal): L_4061, L_40C6, L_414F, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_37C6
L_37C6:
        call    L_57CD                          ; E8 04 20
        add     ax, 0xc703                      ; 05 03 C7
        inc     si                              ; 46
        clc                                     ; F8
        push    4                               ; 6A 04
        cmp     word ptr [bp + 6], 1            ; 83 7E 06 01
        jne     L_37DB                          ; 75 05
        mov     word ptr [bp - 8], 0x24c        ; C7 46 F8 4C 02
;   [conditional branch target (if/else)] L_37DB
L_37DB:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_37F2                          ; 74 11
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xa802                      ; B8 02 A8
        push    ax                              ; 50
        call    L_40C6                          ; E8 DB 08
        or      ax, ax                          ; 0B C0
        jne     L_37F2                          ; 75 03
        jmp     L_3876                          ; E9 84 00
;   [conditional branch target (if/else)] L_37F2
L_37F2:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x382]       ; 8B 87 82 03
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        add     ax, word ptr [bx + 8]           ; 03 47 08
        add     ax, 0x49                        ; 05 49 00
        mov     cl, 6                           ; B1 06
        shr     ax, cl                          ; D3 E8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bx], 0                ; C7 07 00 00
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        shl     ax, cl                          ; D3 E0
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hFile
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bx]               ; 8B 07
        shl     ax, cl                          ; D3 E0
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg lOffset (high/segment)
        push    ax                              ; 50
        ;   ^ arg lOffset (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg iOrigin
        ; --> _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
        call    far KERNEL._LLSEEK              ; 9A FF FF 00 00 [FIXUP]
        cmp     dx, -1                          ; 83 FA FF
        jne     L_383C                          ; 75 05
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_3851                          ; 74 15
;   [conditional branch target (if/else)] L_383C
L_383C:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_4061                          ; E8 19 08
        or      ax, ax                          ; 0B C0
        je      L_3851                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3853                          ; EB 02
;   [conditional branch target (if/else)] L_3851
L_3851:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_3853
L_3853:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_414F                          ; E8 F0 08
        or      ax, ax                          ; 0B C0
        je      L_3876                          ; 74 13
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_3876                          ; 74 0D
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     word ptr [bx], ax               ; 01 07
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3878                          ; EB 02
;   [error/early exit] L_3876
L_3876:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_3878
L_3878:
        ret                                     ; C3
; Description (heuristic):
;   File I/O routine (2 file APIs).
;   Reads from file handle.

;-------------------------------------------------------------------------
; sub_3879   offset=0x3879  size=80 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
;   _LREAD(HFILE hFile, LPVOID lpBuffer, WORD wBytes) -> WORD
;
; Near calls (internal): L_40C6, L_414F, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_3879
L_3879:
        call    L_57CD                          ; E8 51 1F
        add     ax, 0xc703                      ; 05 03 C7
        inc     si                              ; 46
        clc                                     ; F8
        add     byte ptr [bx + si], al          ; 00 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        and     ah, 0x7f                        ; 80 E4 7F
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        test    word ptr [bp + 4], 0x8000       ; F7 46 04 00 80
        je      L_3898                          ; 74 05
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
;   [conditional branch target (if/else)] L_3898
L_3898:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_38AF                          ; 74 11
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 0xa802                      ; B8 02 A8
        push    ax                              ; 50
        call    L_40C6                          ; E8 1E 08
        or      ax, ax                          ; 0B C0
        jne     L_38AF                          ; 75 03
        jmp     L_3941                          ; E9 92 00
;   [conditional branch target (if/else)] L_38AF
L_38AF:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x382]       ; 8B 87 82 03
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        ;   ^ arg hFile
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     cl, 6                           ; B1 06
        shl     ax, cl                          ; D3 E0
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        ;   ^ arg lOffset (high/segment)
        push    ax                              ; 50
        ;   ^ arg lOffset (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg iOrigin
        ; --> _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
        call    far KERNEL._LLSEEK              ; 9A 2E 38 00 00 [FIXUP]
        cmp     dx, -1                          ; 83 FA FF
        jne     L_38D9                          ; 75 05
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_38EF                          ; 74 16
;   [conditional branch target (if/else)] L_38D9
L_38D9:
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hFile
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> _LREAD(HFILE hFile, LPVOID lpBuffer, WORD wBytes) -> WORD
        call    far KERNEL._LREAD               ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 0xa                         ; 3D 0A 00
        je      L_38FA                          ; 74 0B
;   [conditional branch target (if/else)] L_38EF
L_38EF:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_414F                          ; E8 57 08
        jmp     L_3941                          ; EB 47
;   [conditional branch target (if/else)] L_38FA
L_38FA:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        add     ax, word ptr [bx + 8]           ; 03 47 08
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hFile
        mov     ax, bx                          ; 8B C3
        mov     dx, ds                          ; 8C DA
        add     ax, 0xa                         ; 05 0A 00
        push    dx                              ; 52
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg wBytes
        ; --> _LREAD(HFILE hFile, LPVOID lpBuffer, WORD wBytes) -> WORD
        call    far KERNEL._LREAD               ; 9A E6 38 00 00 [FIXUP]
        cmp     ax, word ptr [bp - 4]           ; 3B 46 FC
        jne     L_3924                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3926                          ; EB 02
;   [conditional branch target (if/else)] L_3924
L_3924:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_3926
L_3926:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_414F                          ; E8 1D 08
        or      ax, ax                          ; 0B C0
        je      L_3941                          ; 74 0B
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_3941                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3943                          ; EB 02
;   [error/early exit] L_3941
L_3941:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_3943
L_3943:
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: GETFOCUS.

;-------------------------------------------------------------------------
; sub_3944   offset=0x3944  size=169 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   GETFOCUS
;
; Near calls (first 8 of 12): L_0598, L_2510, L_2524, L_3490, L_3519, L_3656, L_3695, L_36A4 ...
;-------------------------------------------------------------------------
;   [sub-routine] L_3944
L_3944:
        call    L_57CD                          ; E8 86 1E
        or      ax, word ptr [bx + di]          ; 0B 01
        call    far USER.GETFOCUS               ; 9A 47 33 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0598                          ; E8 3F CC
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        call    L_3490                          ; E8 2D FB
        or      ax, ax                          ; 0B C0
        jne     L_39BC                          ; 75 55
        push    word ptr [bp - 6]               ; FF 76 FA
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_3519                          ; E8 A8 FB
        or      ax, ax                          ; 0B C0
        jne     L_3982                          ; 75 0D
;   [loop start] L_3975
L_3975:
        push    word ptr [bp - 0x14]            ; FF 76 EC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0598                          ; E8 1B CC
        sub     ax, ax                          ; 2B C0
        jmp     L_3B1E                          ; E9 9C 01
;   [conditional branch target (if/else)] L_3982
L_3982:
        call    L_3695                          ; E8 10 FD
        mov     cx, ax                          ; 8B C8
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        add     ax, cx                          ; 03 C1
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     word ptr [bx + 2], 0            ; C7 47 02 00 00
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     word ptr [bx + 4], 0            ; C7 47 04 00 00
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     word ptr [bx + 6], 0xffff       ; C7 47 06 FF FF
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     word ptr [bx + 8], 0xffff       ; C7 47 08 FF FF
        call    L_36A4                          ; E8 E8 FC
;   [conditional branch target (if/else)] L_39BC
L_39BC:
        call    L_3695                          ; E8 D6 FC
        mov     cx, ax                          ; 8B C8
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     bx, ax                          ; 8B D8
        add     bx, cx                          ; 03 D9
        mov     word ptr [bp - 0xa], bx         ; 89 5E F6
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        call    L_36A4                          ; E8 C7 FC
        cmp     word ptr [bp - 0x16], -1        ; 83 7E EA FF
        je      L_39EF                          ; 74 0C
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
;   [loop start] L_39E6
L_39E6:
        mov     word ptr [0x282], ax            ; A3 82 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3B1E                          ; E9 2F 01
;   [conditional branch target (if/else)] L_39EF
L_39EF:
        call    L_47EB                          ; E8 F9 0D
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0xc], 3          ; C7 46 F4 03 00
;   [loop start] L_39FA
L_39FA:
        dec     word ptr [bp - 0xc]             ; FF 4E F4
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_2510                          ; E8 0D EB
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_2524                          ; E8 13 EB
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        je      L_39FA                          ; 74 E1
        mov     ax, word ptr [0x25c]            ; A1 5C 02
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        je      L_39FA                          ; 74 D9
        cmp     word ptr [bp - 2], -1           ; 83 7E FE FF
        je      L_3A59                          ; 74 32
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_2510                          ; E8 E3 EA
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        call    L_374E                          ; E8 16 FD
        or      ax, ax                          ; 0B C0
        jne     L_3A4B                          ; 75 0F
        push    word ptr [bp - 0xc]             ; FF 76 F4
;   [loop start] L_3A3F
L_3A3F:
        call    L_2524                          ; E8 E2 EA
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_3656                          ; E8 0E FC
        jmp     L_3975                          ; E9 2A FF
;   [conditional branch target (if/else)] L_3A4B
L_3A4B:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     word ptr [bx + 4], 0            ; C7 47 04 00 00
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_2524                          ; E8 CB EA
;   [conditional branch target (if/else)] L_3A59
L_3A59:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_2510                          ; E8 B1 EA
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     word ptr [bp - 0x12], -1        ; 83 7E EE FF
        je      L_3A6B                          ; 74 03
        jmp     L_3AFC                          ; E9 91 00
;   [conditional branch target (if/else)] L_3A6B
L_3A6B:
        mov     bx, ax                          ; 8B D8
        mov     si, ax                          ; 8B F0
        sub     ax, ax                          ; 2B C0
        mov     word ptr [si + 8], ax           ; 89 44 08
        mov     word ptr [bx + 6], ax           ; 89 47 06
;   [loop start] L_3A77
L_3A77:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     word ptr [bx + 4], 0            ; C7 47 04 00 00
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_2524                          ; E8 96 EA
        call    L_3695                          ; E8 04 FC
        mov     bx, ax                          ; 8B D8
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx + si + 8], ax      ; 89 40 08
        call    L_36A4                          ; E8 00 FC
        cmp     word ptr [bp - 2], -1           ; 83 7E FE FF
        je      L_3AF6                          ; 74 4C
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_2510                          ; E8 60 EA
        mov     bx, ax                          ; 8B D8
        mov     word ptr [bx + 2], 0xffff       ; C7 47 02 FF FF
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_2524                          ; E8 67 EA
        push    word ptr [bp - 2]               ; FF 76 FE
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        call    L_3490                          ; E8 C9 F9
        call    L_3695                          ; E8 CB FB
        mov     cx, ax                          ; 8B C8
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     bx, ax                          ; 8B D8
        add     bx, cx                          ; 03 D9
        mov     word ptr [bp - 0xa], bx         ; 89 5E F6
        mov     word ptr [bx + 8], 0xffff       ; C7 47 08 FF FF
        cmp     word ptr [bp - 8], -2           ; 83 7E F8 FE
        je      L_3AED                          ; 74 09
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bx + 6], ax           ; 89 47 06
;   [conditional branch target (if/else)] L_3AED
L_3AED:
        call    L_36A4                          ; E8 B4 FB
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_3656                          ; E8 60 FB
;   [conditional branch target (if/else)] L_3AF6
L_3AF6:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_39E6                          ; E9 EA FE
;   [unconditional branch target] L_3AFC
L_3AFC:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    L_3879                          ; E8 70 FD
        or      ax, ax                          ; 0B C0
        je      L_3B10                          ; 74 03
        jmp     L_3A77                          ; E9 67 FF
;   [conditional branch target (if/else)] L_3B10
L_3B10:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     word ptr [bx + 2], 0xffff       ; C7 47 02 FF FF
        push    word ptr [bp - 4]               ; FF 76 FC
        jmp     L_3A3F                          ; E9 21 FF
;   [fall-through exit] L_3B1E
L_3B1E:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (12 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_3B1F   offset=0x3B1F  size=12 instr  segment=seg3.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_3B1F
L_3B1F:
        call    L_57CD                          ; E8 AB 1C
        add     ax, word ptr [si]               ; 03 04
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_3B31                          ; 75 07
        cmp     word ptr [0x23a], 0             ; 83 3E 3A 02 00
        je      L_3B3E                          ; 74 0D
;   [conditional branch target (if/else)] L_3B31
L_3B31:
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        jne     L_3B44                          ; 75 0D
        cmp     word ptr [0x52], 0              ; 83 3E 52 00 00
        jne     L_3B44                          ; 75 06
;   [conditional branch target (if/else)] L_3B3E
L_3B3E:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3BFE                          ; E9 BA 00
; Description (heuristic):
;   Pure computation / dispatcher (74 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_3B44   offset=0x3B44  size=74 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Near calls (internal): L_37C6, L_3879, L_3F13, L_40C6
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_3B44
L_3B44:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xa802                      ; B8 02 A8
        push    ax                              ; 50
        call    L_40C6                          ; E8 78 05
        or      ax, ax                          ; 0B C0
        jne     L_3B64                          ; 75 12
;   [loop start] L_3B52
L_3B52:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_3F13                          ; E8 BB 03
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_3F13                          ; E8 B4 03
        sub     ax, ax                          ; 2B C0
        jmp     L_3BFE                          ; E9 9A 00
;   [conditional branch target (if/else)] L_3B64
L_3B64:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0x8002                      ; B8 02 80
        push    ax                              ; 50
        call    L_40C6                          ; E8 57 05
        or      ax, ax                          ; 0B C0
        jne     L_3B78                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3B7A                          ; EB 02
;   [conditional branch target (if/else)] L_3B78
L_3B78:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_3B7A
L_3B7A:
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_3B8D                          ; 74 0D
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_3F13                          ; E8 8D 03
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_3F13                          ; E8 86 03
;   [conditional branch target (if/else)] L_3B8D
L_3B8D:
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        jmp     L_3BEC                          ; EB 5A
;   [loop start] L_3B92
L_3B92:
        cmp     word ptr [di + 0xa], -2         ; 83 7D 0A FE
        jne     L_3BE9                          ; 75 51
        mov     ax, word ptr [di + 6]           ; 8B 45 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, 0xfffe                      ; 3D FE FF
        jae     L_3BE9                          ; 73 46
        test    word ptr [bp - 6], 0x8000       ; F7 46 FA 00 80
        je      L_3BB0                          ; 74 06
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        je      L_3BBD                          ; 74 0D
;   [conditional branch target (if/else)] L_3BB0
L_3BB0:
        test    word ptr [bp - 6], 0x8000       ; F7 46 FA 00 80
        jne     L_3BE9                          ; 75 32
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_3BE9                          ; 75 2C
;   [conditional branch target (if/else)] L_3BBD
L_3BBD:
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_3879                          ; E8 B2 FC
        or      ax, ax                          ; 0B C0
        je      L_3B52                          ; 74 87
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [di + 0xa], ax         ; 89 45 0A
        mov     ax, word ptr [0x46a]            ; A1 6A 04
        mov     word ptr [di + 6], ax           ; 89 45 06
        push    si                              ; 56
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_37C6                          ; E8 E4 FB
        or      ax, ax                          ; 0B C0
        jne     L_3BE9                          ; 75 03
        jmp     L_3B52                          ; E9 69 FF
;   [conditional branch target (if/else)] L_3BE9
L_3BE9:
        add     di, 0xc                         ; 83 C7 0C
;   [unconditional branch target] L_3BEC
L_3BEC:
        cmp     word ptr [bp + 4], di           ; 39 7E 04
        ja      L_3B92                          ; 77 A1
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_3F13                          ; E8 1C 03
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_3F13                          ; E8 15 03
;   [fall-through exit] L_3BFE
L_3BFE:
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0xa]   HFILE     (2 uses)

; Description (heuristic):
;   File I/O routine (4 file APIs).

;-------------------------------------------------------------------------
; sub_3BFF   offset=0x3BFF  size=196 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
;   _LCLOSE(HFILE hFile) -> HFILE
;   _LCREAT(LPSTR lpszPath, INT wAttribute) -> HFILE
;   _LOPEN(LPSTR lpszPath, INT wReadWrite) -> HFILE
;
; Near calls (first 8 of 23): L_2510, L_2524, L_2951, L_2971, L_31D5, L_3341, L_3695, L_36A4 ...
;-------------------------------------------------------------------------
;   [sub-routine] L_3BFF
L_3BFF:
        call    L_57CD                          ; E8 CB 1B
        or      word ptr [bp + si], ax          ; 09 02
        call    L_2951                          ; E8 4A ED
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        ;   ^ arg lpszPath (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszPath (low/offset)
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg wReadWrite
        ; --> _LOPEN(LPSTR lpszPath, INT wReadWrite) -> HFILE
        call    far KERNEL._LOPEN               ; 9A 19 2D 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        jge     L_3C2C                          ; 7D 10
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        ;   ^ arg lpszPath (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszPath (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wAttribute
        ; --> _LCREAT(LPSTR lpszPath, INT wAttribute) -> HFILE
        call    far KERNEL._LCREAT              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
;   [conditional branch target (if/else)] L_3C2C
L_3C2C:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jle     L_3C54                          ; 7E 22
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hFile
        ; --> _LCLOSE(HFILE hFile) -> HFILE
        call    far KERNEL._LCLOSE              ; 9A 42 37 00 00 [FIXUP]
        call    L_3341                          ; E8 04 F7
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_3E56                          ; E8 0F 02
        or      al, 0x80                        ; 0C 80
        push    ax                              ; 50
        call    L_36FB                          ; E8 AE FA
        or      ax, ax                          ; 0B C0
        jne     L_3C6A                          ; 75 19
        jmp     L_3DE6                          ; E9 92 01
;   [conditional branch target (if/else)] L_3C54
L_3C54:
        push    word ptr [0x2d8]                ; FF 36 D8 02
        push    word ptr [bp + 6]               ; FF 76 06
;   [loop start] L_3C5B
L_3C5B:
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    L_31D5                          ; E8 73 F5
        call    L_2971                          ; E8 0C ED
        sub     ax, ax                          ; 2B C0
        jmp     L_3DF0                          ; E9 86 01
;   [conditional branch target (if/else)] L_3C6A
L_3C6A:
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [0x26a]                ; F7 2E 6A 02
        add     ax, 0x3f                        ; 05 3F 00
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 6                           ; B9 06 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        inc     ax                              ; 40
        mov     word ptr [0x46a], ax            ; A3 6A 04
        call    L_3695                          ; E8 0C FA
        mov     si, ax                          ; 8B F0
        mov     cx, ax                          ; 8B C8
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [0x26a]                ; F7 2E 6A 02
        add     cx, ax                          ; 03 C8
        mov     word ptr [bp - 4], cx           ; 89 4E FC
        jmp     L_3CA3                          ; EB 08
;   [loop start] L_3C9B
L_3C9B:
        mov     word ptr [si + 0xa], 0xfffe     ; C7 44 0A FE FF
        add     si, 0xc                         ; 83 C6 0C
;   [unconditional branch target] L_3CA3
L_3CA3:
        cmp     word ptr [bp - 4], si           ; 39 76 FC
        ja      L_3C9B                          ; 77 F3
        call    L_36A4                          ; E8 F9 F9
        call    L_3E7A                          ; E8 CC 01
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        call    L_3695                          ; E8 E1 F9
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     cx, ax                          ; 8B C8
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [0x26a]                ; F7 2E 6A 02
        add     cx, ax                          ; 03 C8
        mov     word ptr [bp - 4], cx           ; 89 4E FC
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_3CE9                          ; 75 1E
;   [loop start] L_3CCB
L_3CCB:
        mov     si, word ptr [bp - 0x10]        ; 8B 76 F0
;   [loop start] L_3CCE
L_3CCE:
        cmp     word ptr [bp - 4], si           ; 39 76 FC
        ja      L_3CD6                          ; 77 03
        jmp     L_3DD6                          ; E9 00 01
;   [conditional branch target (if/else)] L_3CD6
L_3CD6:
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        cmp     ax, 0xfffe                      ; 3D FE FF
        je      L_3CE4                          ; 74 03
        mov     word ptr [si + 6], ax           ; 89 44 06
;   [conditional branch target (if/else)] L_3CE4
L_3CE4:
        add     si, 0xc                         ; 83 C6 0C
        jmp     L_3CCE                          ; EB E5
;   [conditional branch target (if/else)] L_3CE9
L_3CE9:
        call    L_47EB                          ; E8 FF 0A
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        call    L_2510                          ; E8 1D E8
        mov     di, ax                          ; 8B F8
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    di                              ; 57
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_3B1F                          ; E8 1C FE
        or      ax, ax                          ; 0B C0
        je      L_3D1D                          ; 74 16
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    di                              ; 57
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_3B1F                          ; E8 0B FE
        or      ax, ax                          ; 0B C0
        je      L_3D1D                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3D1F                          ; EB 02
;   [conditional branch target (if/else)] L_3D1D
L_3D1D:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_3D1F
L_3D1F:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [di + 2], 0xffff       ; C7 45 02 FF FF
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_2524                          ; E8 F7 E7
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_3CCB                          ; 74 98
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    L_3F3F                          ; E8 06 02
        or      ax, ax                          ; 0B C0
        je      L_3CCB                          ; 74 8E
        call    L_36A4                          ; E8 64 F9
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_3DF1                          ; E8 AA 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        ;   ^ arg lpszFileName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszFileName (low/offset)
        mov     ax, 0x46c                       ; B8 6C 04
        push    ds                              ; 1E
        ;   ^ arg lpReOpenBuff (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpReOpenBuff (low/offset)
        mov     ax, 0x2802                      ; B8 02 28
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
        call    far KERNEL.OPENFILE             ; 9A 34 37 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        inc     ax                              ; 40
        je      L_3D6F                          ; 74 0F
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hFile
        ; --> _LCLOSE(HFILE hFile) -> HFILE
        call    far KERNEL._LCLOSE              ; 9A 36 3C 00 00 [FIXUP]
        mov     ax, 0x474                       ; B8 74 04
        push    ax                              ; 50
        call    L_5785                          ; E8 16 1A
;   [conditional branch target (if/else)] L_3D6F
L_3D6F:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0xa802                      ; B8 02 A8
        push    ax                              ; 50
        call    L_40C6                          ; E8 4C 03
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_3F13                          ; E8 8F 01
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_3D98                          ; 74 0E
        mov     ax, 0x574                       ; B8 74 05
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_57A0                          ; E8 0C 1A
        or      ax, ax                          ; 0B C0
        jne     L_3DAC                          ; 75 14
;   [conditional branch target (if/else)] L_3D98
L_3D98:
        mov     word ptr [bp + 6], 0x574        ; C7 46 06 74 05
        push    word ptr [0x29e]                ; FF 36 9E 02
        mov     ax, 0x574                       ; B8 74 05
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    L_31D5                          ; E8 29 F4
;   [conditional branch target (if/else)] L_3DAC
L_3DAC:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        ;   ^ arg lpszFileName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszFileName (low/offset)
        mov     ax, 0x46c                       ; B8 6C 04
        push    ds                              ; 1E
        ;   ^ arg lpReOpenBuff (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpReOpenBuff (low/offset)
        mov     ax, 0x4000                      ; B8 00 40
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
        call    far KERNEL.OPENFILE             ; 9A 56 3D 00 00 [FIXUP]
        call    L_36B3                          ; E8 F1 F8
        mov     word ptr [0x380], 0             ; C7 06 80 03 00 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_40F9                          ; E8 2B 03
        call    L_2971                          ; E8 A0 EB
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3DF0                          ; EB 1A
;   [unconditional branch target] L_3DD6
L_3DD6:
        call    L_36A4                          ; E8 CB F8
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_4091                          ; E8 B1 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_3DF1                          ; E8 0B 00
;   [unconditional branch target] L_3DE6
L_3DE6:
        push    word ptr [0x2a0]                ; FF 36 A0 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        jmp     L_3C5B                          ; E9 6B FE
;   [fall-through exit] L_3DF0
L_3DF0:
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: GETFOCUS.

;-------------------------------------------------------------------------
; sub_3DF1   offset=0x3DF1  size=42 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   GETFOCUS
;
; Near calls (first 8 of 9): L_0598, L_12D6, L_2510, L_2524, L_3490, L_3695, L_36A4, L_3944 ...
;-------------------------------------------------------------------------
;   [sub-routine] L_3DF1
L_3DF1:
        call    L_57CD                          ; E8 D9 19
        add     al, 1                           ; 04 01
        sub     si, si                          ; 2B F6
;   [loop start] L_3DF8
L_3DF8:
        push    si                              ; 56
        call    L_2510                          ; E8 14 E7
        mov     di, ax                          ; 8B F8
        cmp     word ptr [di + 2], -1           ; 83 7D 02 FF
        je      L_3E2E                          ; 74 2A
        push    word ptr [di + 2]               ; FF 75 02
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        call    L_3490                          ; E8 82 F6
        call    L_3695                          ; E8 84 F8
        mov     cx, ax                          ; 8B C8
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        mov     bx, ax                          ; 8B D8
        add     bx, cx                          ; 03 D9
        mov     word ptr [bx + 8], si           ; 89 77 08
        call    L_36A4                          ; E8 81 F8
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_3E2E                          ; 74 05
        mov     word ptr [di + 4], 0            ; C7 45 04 00 00
;   [conditional branch target (if/else)] L_3E2E
L_3E2E:
        push    si                              ; 56
        call    L_2524                          ; E8 F2 E6
        inc     si                              ; 46
        cmp     si, 3                           ; 83 FE 03
        jl      L_3DF8                          ; 7C C0
        call    far USER.GETFOCUS               ; 9A 4A 39 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, 0x226                       ; B8 26 02
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12D6                          ; E8 8D D4
        push    ax                              ; 50
        call    L_3944                          ; E8 F7 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0598                          ; E8 43 C7
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (15 instructions).

;-------------------------------------------------------------------------
; sub_3E56   offset=0x3E56  size=15 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0AC8, L_57C0, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_3E56
L_3E56:
        call    L_57CD                          ; E8 74 19
        add     word ptr [bx + di], ax          ; 01 01
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        lea     ax, [bp - 2]                    ; 8D 46 FE
        push    ax                              ; 50
        call    L_0AC8                          ; E8 60 CC
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        cmp     byte ptr [bx + 1], 0x3a         ; 80 7F 01 3A
        jne     L_3E76                          ; 75 05
        mov     al, byte ptr [bx]               ; 8A 07
        cwde                                    ; 98
        jmp     L_3E79                          ; EB 03
;   [conditional branch target (if/else)] L_3E76
L_3E76:
        call    L_57C0                          ; E8 47 19
;   [fall-through exit] L_3E79
L_3E79:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (58 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_3E7A   offset=0x3E7A  size=58 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_2510, L_2524, L_3490, L_3656, L_3695, L_36A4, L_37C6, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_3E7A
L_3E7A:
        call    L_57CD                          ; E8 50 19
        add     ax, 0xc700                      ; 05 00 C7
        inc     si                              ; 46
        inc     byte ptr [bx + si]              ; FE 00
        add     bh, al                          ; 00 C7
        inc     si                              ; 46
        cld                                     ; FC
        add     word ptr [bx + si], ax          ; 01 00
        jmp     L_3F06                          ; EB 7B
;   [loop start] L_3E8B
L_3E8B:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_3F0F                          ; 74 7E
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_2510                          ; E8 79 E6
        mov     si, ax                          ; 8B F0
        cmp     word ptr [si + 2], -1           ; 83 7C 02 FF
        je      L_3EFD                          ; 74 5E
        push    word ptr [si + 2]               ; FF 74 02
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        call    L_3490                          ; E8 E7 F5
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     di, ax                          ; 8B F8
        call    L_3695                          ; E8 E1 F7
        add     di, ax                          ; 03 F8
        mov     word ptr [di + 8], 0xffff       ; C7 45 08 FF FF
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        add     ax, word ptr [si + 8]           ; 03 44 08
        jne     L_3ED9                          ; 75 16
        mov     word ptr [si + 2], 0xffff       ; C7 44 02 FF FF
        mov     ax, 0xffff                      ; B8 FF FF
        mov     word ptr [di + 6], ax           ; 89 45 06
        mov     word ptr [di + 0xa], ax         ; 89 45 0A
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_3656                          ; E8 7F F7
        jmp     L_3EFA                          ; EB 21
;   [conditional branch target (if/else)] L_3ED9
L_3ED9:
        cmp     word ptr [si + 4], 0            ; 83 7C 04 00
        je      L_3EFA                          ; 74 1B
        mov     ax, word ptr [di + 6]           ; 8B 45 06
        mov     word ptr [di + 0xa], ax         ; 89 45 0A
        mov     ax, word ptr [0x46a]            ; A1 6A 04
        mov     word ptr [di + 6], ax           ; 89 45 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    si                              ; 56
        call    L_37C6                          ; E8 CF F8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [branch target] L_3EFA
L_3EFA:
        call    L_36A4                          ; E8 A7 F7
;   [conditional branch target (if/else)] L_3EFD
L_3EFD:
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_2524                          ; E8 21 E6
        inc     word ptr [bp - 2]               ; FF 46 FE
;   [unconditional branch target] L_3F06
L_3F06:
        cmp     word ptr [bp - 2], 3            ; 83 7E FE 03
        jge     L_3F0F                          ; 7D 03
        jmp     L_3E8B                          ; E9 7C FF
;   [error/early exit] L_3F0F
L_3F0F:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around _LCLOSE(hFile) -> HFILE.

;-------------------------------------------------------------------------
; sub_3F13   offset=0x3F13  size=17 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   _LCLOSE(HFILE hFile) -> HFILE
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_3F13
L_3F13:
        call    L_57CD                          ; E8 B7 18
        add     word ptr [bx + di], ax          ; 01 01
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bx + 0x382]       ; 8B B7 82 03
        mov     ax, si                          ; 8B C6
        inc     ax                              ; 40
        jne     L_3F2B                          ; 75 05
;   [loop start] L_3F26
L_3F26:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3F3E                          ; EB 13
;   [conditional branch target (if/else)] L_3F2B
L_3F2B:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + 0x382], 0xffff   ; C7 87 82 03 FF FF
        push    si                              ; 56
        ;   ^ arg hFile
        ; --> _LCLOSE(HFILE hFile) -> HFILE
        call    far KERNEL._LCLOSE              ; 9A 64 3D 00 00 [FIXUP]
        jmp     L_3F26                          ; EB E8
;   [fall-through exit] L_3F3E
L_3F3E:
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: _LLSEEK.

;-------------------------------------------------------------------------
; sub_3F3F   offset=0x3F3F  size=135 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
;
; Near calls (internal): L_09EE, L_35FF, L_3F13, L_4061, L_40C6, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_3F3F
L_3F3F:
        call    L_57CD                          ; E8 8B 18
        and     ax, word ptr [bx + di]          ; 23 01
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0xa802                      ; B8 02 A8
        push    ax                              ; 50
        call    L_40C6                          ; E8 77 01
        or      ax, ax                          ; 0B C0
        je      L_3F8C                          ; 74 39
        mov     ax, word ptr [0x386]            ; A1 86 03
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        ;   ^ arg hFile
        mov     ax, 0x40                        ; B8 40 00
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg lOffset (high/segment)
        push    ax                              ; 50
        ;   ^ arg lOffset (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg iOrigin
        ; --> _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
        call    far KERNEL._LLSEEK              ; 9A CB 38 00 00 [FIXUP]
        cmp     dx, -1                          ; 83 FA FF
        jne     L_3F72                          ; 75 05
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_3F8C                          ; 74 1A
;   [conditional branch target (if/else)] L_3F72
L_3F72:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp + 4]               ; FF 76 04
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [0x26a]                ; F7 2E 6A 02
        push    ax                              ; 50
        call    L_4061                          ; E8 DE 00
        or      ax, ax                          ; 0B C0
        je      L_3F8C                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3F8E                          ; EB 02
;   [conditional branch target (if/else)] L_3F8C
L_3F8C:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_3F8E
L_3F8E:
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        jne     L_3F97                          ; 75 03
        jmp     L_404A                          ; E9 B3 00
;   [conditional branch target (if/else)] L_3F97
L_3F97:
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_09EE                          ; E8 49 CA
        mov     ax, 0x54                        ; B8 54 00
        push    ax                              ; 50
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    L_35FF                          ; E8 4B F6
        mov     si, ax                          ; 8B F0
        mov     ax, 0x26a                       ; B8 6A 02
        push    ax                              ; 50
        push    si                              ; 56
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_35FF                          ; E8 3D F6
        mov     si, ax                          ; 8B F0
        mov     ax, 0x2fa                       ; B8 FA 02
        push    ax                              ; 50
        push    si                              ; 56
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_35FF                          ; E8 2F F6
        mov     si, ax                          ; 8B F0
        mov     ax, 0x284                       ; B8 84 02
        push    ax                              ; 50
        push    si                              ; 56
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_35FF                          ; E8 21 F6
        mov     si, ax                          ; 8B F0
        mov     ax, 0x272                       ; B8 72 02
        push    ax                              ; 50
        push    si                              ; 56
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_35FF                          ; E8 13 F6
        mov     si, ax                          ; 8B F0
        mov     ax, 0x258                       ; B8 58 02
        push    ax                              ; 50
        push    si                              ; 56
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_35FF                          ; E8 05 F6
        mov     si, ax                          ; 8B F0
        mov     ax, 0x44a                       ; B8 4A 04
        push    ax                              ; 50
        push    si                              ; 56
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_35FF                          ; E8 F7 F5
        mov     si, ax                          ; 8B F0
        mov     ax, 0x230                       ; B8 30 02
        push    ax                              ; 50
        push    si                              ; 56
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_35FF                          ; E8 E9 F5
        mov     si, ax                          ; 8B F0
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hFile
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lOffset (high/segment)
        push    ax                              ; 50
        ;   ^ arg lOffset (low/offset)
        push    ax                              ; 50
        ;   ^ arg iOrigin
        ; --> _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
        call    far KERNEL._LLSEEK              ; 9A 64 3F 00 00 [FIXUP]
        cmp     dx, -1                          ; 83 FA FF
        jne     L_402F                          ; 75 05
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_4046                          ; 74 17
;   [conditional branch target (if/else)] L_402F
L_402F:
        push    word ptr [bp - 6]               ; FF 76 FA
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    L_4061                          ; E8 24 00
        or      ax, ax                          ; 0B C0
        je      L_4046                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_4048                          ; EB 02
;   [conditional branch target (if/else)] L_4046
L_4046:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_4048
L_4048:
        mov     di, ax                          ; 8B F8
;   [unconditional branch target] L_404A
L_404A:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_3F13                          ; E8 C2 FE
        or      ax, ax                          ; 0B C0
        je      L_405E                          ; 74 09
        or      di, di                          ; 0B FF
        je      L_405E                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_4060                          ; EB 02
;   [error/early exit] L_405E
L_405E:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_4060
L_4060:
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  WORD      (1 use)
;     [bp+0x8]  HFILE     (1 use)

; Description (heuristic):
;   Thin wrapper around _LWRITE(hFile, lpBuffer, wBytes) -> WORD.

;-------------------------------------------------------------------------
; sub_4061   offset=0x4061  size=20 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   _LWRITE(HFILE hFile, LPCVOID lpBuffer, WORD wBytes) -> WORD
;
; Near calls (internal): L_31D5, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_4061
L_4061:
        call    L_57CD                          ; E8 69 17
        add     byte ptr [bp + di], al          ; 00 03
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hFile
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg wBytes
        ; --> _LWRITE(HFILE hFile, LPCVOID lpBuffer, WORD wBytes) -> WORD
        call    far KERNEL._LWRITE              ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jne     L_4080                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_4090                          ; EB 10
;   [conditional branch target (if/else)] L_4080
L_4080:
        push    word ptr [0x2a2]                ; FF 36 A2 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x1030                      ; B8 30 10
        push    ax                              ; 50
        call    L_31D5                          ; E8 47 F1
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_4090
L_4090:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (23 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_4091   offset=0x4091  size=23 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_3F13, L_40C6, L_5785, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_4091
L_4091:
        call    L_57CD                          ; E8 39 17
        add     word ptr [bx + di], ax          ; 01 01
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xa802                      ; B8 02 A8
        push    ax                              ; 50
        call    L_40C6                          ; E8 26 00
        mov     si, ax                          ; 8B F0
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_3F13                          ; E8 6B FE
        or      si, si                          ; 0B F6
        je      L_40C3                          ; 74 17
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     cl, 7                           ; B1 07
        shl     ax, cl                          ; D3 E0
        add     ax, 0x474                       ; 05 74 04
        push    ax                              ; 50
        call    L_5785                          ; E8 CB 16
        or      ax, ax                          ; 0B C0
        je      L_40C3                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_40C5                          ; EB 02
;   [error/early exit] L_40C3
L_40C3:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_40C5
L_40C5:
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  WORD      (1 use)

; Description (heuristic):
;   Thin wrapper around OPENFILE(lpszFileName, lpReOpenBuff, wStyle) -> HFILE.

;-------------------------------------------------------------------------
; sub_40C6   offset=0x40C6  size=22 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_40C6
L_40C6:
        call    L_57CD                          ; E8 04 17
        add     byte ptr [bp + si], al          ; 00 02
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [si + 0x2c2]       ; 8B 84 C2 02
        push    ds                              ; 1E
        ;   ^ arg lpszFileName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszFileName (low/offset)
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     cl, 7                           ; B1 07
        shl     ax, cl                          ; D3 E0
        add     ax, 0x46c                       ; 05 6C 04
        push    ds                              ; 1E
        ;   ^ arg lpReOpenBuff (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpReOpenBuff (low/offset)
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg wStyle
        ; --> OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
        call    far KERNEL.OPENFILE             ; 9A BB 3D 00 00 [FIXUP]
        mov     word ptr [si + 0x382], ax       ; 89 84 82 03
        inc     ax                              ; 40
        je      L_40F6                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_40F8                          ; EB 02
;   [error/early exit] L_40F6
L_40F6:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_40F8
L_40F8:
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: ANSIUPPER, SETWINDOWTEXT.

;-------------------------------------------------------------------------
; sub_40F9   offset=0x40F9  size=34 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   ANSIUPPER(LPSTR lpsz) -> LPSTR
;   SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID
;
; Near calls (internal): L_0930, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_40F9
L_40F9:
        call    L_57CD                          ; E8 D1 16
        pop     ds                              ; 1F
        add     word ptr [bx + si + 0x3be], di  ; 01 B8 BE 03
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0930                          ; E8 28 C8
        mov     ax, word ptr [0x288]            ; A1 88 02
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        je      L_4115                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_4117                          ; EB 02
;   [conditional branch target (if/else)] L_4115
L_4115:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_4117
L_4117:
        mov     word ptr [0x23a], ax            ; A3 3A 02
        or      ax, ax                          ; 0B C0
        je      L_4128                          ; 74 0A
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A E2 2C 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_4128
L_4128:
        lea     ax, [bp - 0x3e]                 ; 8D 46 C2
        push    ax                              ; 50
        push    word ptr [0x2b8]                ; FF 36 B8 02
        call    L_0930                          ; E8 FD C7
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_38                   ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    L_0930                          ; E8 F0 C7
        push    word ptr [0x262]                ; FF 36 62 02
        ;   ^ arg hWnd
        lea     ax, [bp - 0x3e]                 ; 8D 46 C2
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID
        call    far USER.SETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (12 instructions).

;-------------------------------------------------------------------------
; sub_414F   offset=0x414F  size=12 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_3F13, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_414F
L_414F:
        call    L_57CD                          ; E8 7B 16
        add     byte ptr [bp + si], al          ; 00 02
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_4164                          ; 74 0A
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_3F13                          ; E8 B3 FD
        or      ax, ax                          ; 0B C0
        je      L_4169                          ; 74 05
;   [conditional branch target (if/else)] L_4164
L_4164:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_416B                          ; EB 02
;   [error/early exit] L_4169
L_4169:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_416B
L_416B:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (45 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_416C   offset=0x416C  size=45 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (first 8 of 10): L_0598, L_17E1, L_2510, L_2524, L_2951, L_2971, L_346F, L_36B3 ...
;-------------------------------------------------------------------------
;   [sub-routine] L_416C
L_416C:
        call    L_57CD                          ; E8 5E 16
        add     word ptr [bx + di], ax          ; 01 01
        call    L_2951                          ; E8 DD E7
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0598                          ; E8 1C C4
        mov     word ptr [0x380], 0             ; C7 06 80 03 00 00
        mov     ax, 0xffff                      ; B8 FF FF
        mov     word ptr [0x26c], ax            ; A3 6C 02
        mov     word ptr [0x37c], ax            ; A3 7C 03
        sub     si, si                          ; 2B F6
;   [loop start] L_418D
L_418D:
        push    si                              ; 56
        call    L_2510                          ; E8 7F E3
        mov     bx, ax                          ; 8B D8
        mov     word ptr [bx + 2], 0xffff       ; C7 47 02 FF FF
        push    si                              ; 56
        call    L_2524                          ; E8 88 E3
        inc     si                              ; 46
        cmp     si, 3                           ; 83 FE 03
        jl      L_418D                          ; 7C EB
        call    L_346F                          ; E8 CA F2
        mov     word ptr [0x2fa], 0             ; C7 06 FA 02 00 00
        mov     word ptr [0x284], 1             ; C7 06 84 02 01 00
        mov     word ptr [0x272], 2             ; C7 06 72 02 02 00
        mov     word ptr [0x258], 0x3c          ; C7 06 58 02 3C 00
        push    word ptr [0x460]                ; FF 36 60 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_28                   ; 9A 07 31 00 00 [FIXUP]
        mov     ax, word ptr [0x142]            ; A1 42 01
        mov     word ptr [0x44a], ax            ; A3 4A 04
        mov     word ptr [0x230], 0x1e0         ; C7 06 30 02 E0 01
        push    word ptr [0x288]                ; FF 36 88 02
        call    L_40F9                          ; E8 1D FF
        call    L_36B3                          ; E8 D4 F4
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_41F2                          ; 74 0D
        mov     word ptr [0x226], 0xc           ; C7 06 26 02 0C 00
        mov     ax, 0x250                       ; B8 50 02
        push    ax                              ; 50
        call    L_17E1                          ; E8 EF D5
;   [conditional branch target (if/else)] L_41F2
L_41F2:
        call    L_2971                          ; E8 7C E7
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (29 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_41F6   offset=0x41F6  size=29 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_4234, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_41F6
L_41F6:
        call    L_57CD                          ; E8 D4 15
        inc     ax                              ; 40
        add     bh, bh                          ; 00 FF
        pushaw                                  ; 36 60
        add     al, 0xff                        ; 04 FF
        bound   ax, dword ptr ss:[bp + si]      ; 36 62 02
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        mov     ax, 0x9a                        ; B8 9A 00
        push    ax                              ; 50
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        lea     ax, [bp - 0x80]                 ; 8D 46 80
        push    ax                              ; 50
        mov     ax, 0x46c                       ; B8 6C 04
        push    ax                              ; 50
        mov     ax, 0x382                       ; B8 82 03
        push    ax                              ; 50
        call    far _entry_39                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_4233                          ; 74 03
        call    L_4234                          ; E8 01 00
;   [error/early exit] L_4233
L_4233:
        ret                                     ; C3
; Description (heuristic):
;   File I/O routine (2 file APIs).
;   Reads from file handle.

;-------------------------------------------------------------------------
; sub_4234   offset=0x4234  size=171 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=3)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
;   _LREAD(HFILE hFile, LPVOID lpBuffer, WORD wBytes) -> WORD
;
; Near calls (first 8 of 13): L_17E1, L_2971, L_31D5, L_3519, L_35FF, L_3695, L_36A4, L_3944 ...
;-------------------------------------------------------------------------
;   [sub-routine] L_4234
L_4234:
        call    L_57CD                          ; E8 96 15
        and     ax, 0xe800                      ; 25 00 E8
        adc     ax, 0x2be7                      ; 15 E7 2B
        rcl     byte ptr [bx + si - 0x18], 0x2a ; C0 50 E8 2A
        dec     word ptr [bp + di - 0x7dc2]     ; FF 8B 3E 82
        add     cx, word ptr [bp + di + 0x40c7] ; 03 8B C7 40
        jne     L_425C                          ; 75 11
        push    word ptr [0x2a8]                ; FF 36 A8 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    L_31D5                          ; E8 7C EF
        jmp     L_43B9                          ; E9 5D 01
;   [conditional branch target (if/else)] L_425C
L_425C:
        push    di                              ; 57
        ;   ^ arg hFile
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lOffset (high/segment)
        push    ax                              ; 50
        ;   ^ arg lOffset (low/offset)
        push    ax                              ; 50
        ;   ^ arg iOrigin
        ; --> _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
        call    far KERNEL._LLSEEK              ; 9A 21 40 00 00 [FIXUP]
        cmp     dx, -1                          ; 83 FA FF
        jne     L_4271                          ; 75 05
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_428A                          ; 74 19
;   [conditional branch target (if/else)] L_4271
L_4271:
        push    di                              ; 57
        ;   ^ arg hFile
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> _LREAD(HFILE hFile, LPVOID lpBuffer, WORD wBytes) -> WORD
        call    far KERNEL._LREAD               ; 9A 16 39 00 00 [FIXUP]
        cmp     ax, 0x40                        ; 3D 40 00
        jne     L_428A                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_428C                          ; EB 02
;   [conditional branch target (if/else)] L_428A
L_428A:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_428C
L_428C:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_4296                          ; 75 03
        jmp     L_4386                          ; E9 F0 00
;   [conditional branch target (if/else)] L_4296
L_4296:
        sub     si, si                          ; 2B F6
;   [loop start] L_4298
L_4298:
        mov     al, byte ptr [si + 0x54]        ; 8A 84 54 00
        cmp     byte ptr [bp + si - 0x46], al   ; 38 42 BA
        je      L_42A8                          ; 74 07
        push    word ptr [0x2aa]                ; FF 36 AA 02
        jmp     L_438A                          ; E9 E2 00
;   [conditional branch target (if/else)] L_42A8
L_42A8:
        inc     si                              ; 46
        cmp     si, 8                           ; 83 FE 08
        jl      L_4298                          ; 7C EA
        lea     ax, [bp - 0x3e]                 ; 8D 46 C2
        push    ax                              ; 50
        lea     ax, [bp - 2]                    ; 8D 46 FE
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_35FF                          ; E8 42 F3
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_3519                          ; E8 53 F2
        or      ax, ax                          ; 0B C0
        jne     L_42CD                          ; 75 03
        jmp     L_4394                          ; E9 C7 00
;   [conditional branch target (if/else)] L_42CD
L_42CD:
        lea     ax, [bp - 0x3c]                 ; 8D 46 C4
        push    ax                              ; 50
        mov     ax, 0x2fa                       ; B8 FA 02
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_35FF                          ; E8 23 F3
        lea     ax, [bp - 0x3a]                 ; 8D 46 C6
        push    ax                              ; 50
        mov     ax, 0x284                       ; B8 84 02
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_35FF                          ; E8 14 F3
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ax                              ; 50
        mov     ax, 0x272                       ; B8 72 02
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_35FF                          ; E8 05 F3
        lea     ax, [bp - 0x36]                 ; 8D 46 CA
        push    ax                              ; 50
        mov     ax, 0x258                       ; B8 58 02
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_35FF                          ; E8 F6 F2
        lea     ax, [bp - 0x34]                 ; 8D 46 CC
        push    ax                              ; 50
        mov     ax, 0x44a                       ; B8 4A 04
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_35FF                          ; E8 E7 F2
        lea     ax, [bp - 0x32]                 ; 8D 46 CE
        push    ax                              ; 50
        mov     ax, 0x230                       ; B8 30 02
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_35FF                          ; E8 D8 F2
        push    word ptr [0x460]                ; FF 36 60 04
        cmp     word ptr [0x44a], 0             ; 83 3E 4A 04 00
        je      L_4337                          ; 74 05
        mov     ax, 0x20                        ; B8 20 00
        jmp     L_433A                          ; EB 03
;   [conditional branch target (if/else)] L_4337
L_4337:
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
;   [unconditional branch target] L_433A
L_433A:
        push    ax                              ; 50
        call    far _entry_28                   ; 9A C5 41 00 00 [FIXUP]
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp - 2]               ; F7 6E FE
        mov     word ptr [bp - 0x4a], ax        ; 89 46 B6
        push    di                              ; 57
        call    L_3695                          ; E8 48 F3
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x4a]            ; FF 76 B6
        ; --> _LREAD(HFILE hFile, LPVOID lpBuffer, WORD wBytes) -> WORD
        call    far KERNEL._LREAD               ; 9A 7C 42 00 00 [FIXUP]
        cmp     ax, word ptr [bp - 0x4a]        ; 3B 46 B6
        jne     L_4361                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_4363                          ; EB 02
;   [conditional branch target (if/else)] L_4361
L_4361:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_4363
L_4363:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        call    L_36A4                          ; E8 3B F3
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_3F13                          ; E8 A4 FB
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_4380                          ; 74 0B
        push    word ptr [0x25c]                ; FF 36 5C 02
        call    L_3944                          ; E8 C8 F5
        or      ax, ax                          ; 0B C0
        jne     L_439C                          ; 75 1C
;   [conditional branch target (if/else)] L_4380
L_4380:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_416C                          ; E8 E6 FD
;   [unconditional branch target] L_4386
L_4386:
        push    word ptr [0x2ac]                ; FF 36 AC 02
;   [unconditional branch target] L_438A
L_438A:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x1030                      ; B8 30 10
        push    ax                              ; 50
        call    L_31D5                          ; E8 41 EE
;   [unconditional branch target] L_4394
L_4394:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_3F13                          ; E8 79 FB
        jmp     L_43B9                          ; EB 1D
;   [conditional branch target (if/else)] L_439C
L_439C:
        mov     ax, 0x25c                       ; B8 5C 02
        push    ax                              ; 50
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_46A7                          ; E8 FA 02
        call    far _entry_35                   ; 9A 98 2B 00 00 [FIXUP]
        mov     ax, 0x474                       ; B8 74 04
        push    ax                              ; 50
        call    L_40F9                          ; E8 40 FD
;   [unconditional branch target] L_43B9
L_43B9:
        mov     word ptr [0x226], 0xc           ; C7 06 26 02 0C 00
        mov     ax, 0x250                       ; B8 50 02
        push    ax                              ; 50
        call    L_17E1                          ; E8 1B D4
        call    L_2971                          ; E8 A8 E5
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (21 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_43CA   offset=0x43CA  size=21 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_24E7, L_2503, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_43CA
L_43CA:
        call    L_57CD                          ; E8 00 14
        add     al, byte ptr [bx + di]          ; 02 01
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x312]       ; 8B 87 12 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_43FE                          ; 74 17
        call    L_24E7                          ; E8 FD E0
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     cl, 8                           ; B1 08
        shr     ax, cl                          ; D3 E8
        and     ax, 1                           ; 25 01 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        call    L_2503                          ; E8 05 E1
;   [error/early exit] L_43FE
L_43FE:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: INVALIDATERECT, UPDATEWINDOW.

;-------------------------------------------------------------------------
; sub_4402   offset=0x4402  size=175 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;   UPDATEWINDOW(HWND hWnd) -> BOOL
;
; Near calls (first 8 of 13): L_1F6D, L_220A, L_23FE, L_2426, L_246B, L_24E7, L_24F6, L_2503 ...
;-------------------------------------------------------------------------
;   [sub-routine] L_4402
L_4402:
        call    L_57CD                          ; E8 C8 13
        adc     ax, word ptr [bx + si]          ; 13 00
        mov     di, word ptr [0x24a]            ; 8B 3E 4A 02
        mov     ax, di                          ; 8B C7
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 0x312]       ; 8B 87 12 03
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_4470                          ; 75 4E
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        and     al, 0                           ; 24 00
        or      al, 5                           ; 0C 05
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        or      byte ptr [bp - 0x1f], 1         ; 80 4E E1 01
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
        and     byte ptr [bp - 0x1f], 0xfd      ; 80 66 E1 FD
        mov     ax, word ptr [bx + 0x310]       ; 8B 87 10 03
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     byte ptr [bp - 0x1c], 0         ; C6 46 E4 00
        push    ax                              ; 50
        call    L_220A                          ; E8 BF DD
        push    word ptr [0x468]                ; FF 36 68 04
        lea     ax, [bp - 0x20]                 ; 8D 46 E0
        push    ax                              ; 50
        call    L_246B                          ; E8 15 E0
        or      ax, ax                          ; 0B C0
        jne     L_445D                          ; 75 03
        jmp     L_45D1                          ; E9 74 01
;   [conditional branch target (if/else)] L_445D
L_445D:
        mov     bx, di                          ; 8B DF
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [0x468]            ; A1 68 04
        mov     word ptr [bx + 0x312], ax       ; 89 87 12 03
        push    di                              ; 57
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        jmp     L_44D6                          ; EB 66
;   [conditional branch target (if/else)] L_4470
L_4470:
        call    L_24E7                          ; E8 74 E0
        mov     si, ax                          ; 8B F0
        add     si, word ptr [bp - 0x10]        ; 03 76 F0
        test    word ptr [si], 0x100            ; F7 04 00 01
        jne     L_4483                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_4485                          ; EB 02
;   [conditional branch target (if/else)] L_4483
L_4483:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_4485
L_4485:
        and     ax, 1                           ; 25 01 00
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     cl, 8                           ; B1 08
        shl     ax, cl                          ; D3 E0
        mov     cx, word ptr [si]               ; 8B 0C
        and     ch, 0xfe                        ; 80 E5 FE
        or      ax, cx                          ; 0B C1
        mov     word ptr [si], ax               ; 89 04
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_44B2                          ; 75 10
        test    word ptr [si], 0x200            ; F7 04 00 02
        jne     L_44B2                          ; 75 0A
        cmp     byte ptr [si], 5                ; 80 3C 05
        jne     L_44B2                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_44B4                          ; EB 02
;   [conditional branch target (if/else)] L_44B2
L_44B2:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_44B4
L_44B4:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        call    L_2503                          ; E8 49 E0
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_44DA                          ; 74 1A
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    L_2426                          ; E8 60 DF
        mov     bx, di                          ; 8B DF
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + 0x312], 0xffff   ; C7 87 12 03 FF FF
        push    di                              ; 57
        mov     ax, 0xfffb                      ; B8 FB FF
;   [unconditional branch target] L_44D6
L_44D6:
        push    ax                              ; 50
        call    L_23FE                          ; E8 24 DF
;   [conditional branch target (if/else)] L_44DA
L_44DA:
        push    di                              ; 57
        call    L_1F6D                          ; E8 8F DA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        add     ax, word ptr [0x5ec]            ; 03 06 EC 05
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x30c]            ; A1 0C 03
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        add     ax, word ptr [0x30a]            ; 03 06 0A 03
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ;   ^ arg hWnd
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A 64 34 00 00 [FIXUP]
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A E3 1E 00 00 [FIXUP]
        call    L_24F6                          ; E8 E3 DF
        mov     bx, ax                          ; 8B D8
        mov     word ptr [bp - 0x14], bx        ; 89 5E EC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0x380], ax            ; A3 80 03
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        call    L_2503                          ; E8 D6 DF
        push    word ptr [bp - 0x16]            ; FF 76 EA
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ax                              ; 50
        call    L_3490                          ; E8 59 EF
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_4542                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_4545                          ; EB 03
;   [conditional branch target (if/else)] L_4542
L_4542:
        mov     ax, 0xffff                      ; B8 FF FF
;   [unconditional branch target] L_4545
L_4545:
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        call    L_3695                          ; E8 4A F1
        mov     cx, ax                          ; 8B C8
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp - 0xe]             ; F7 6E F2
        mov     bx, ax                          ; 8B D8
        add     bx, cx                          ; 03 D9
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        add     word ptr [bx + 4], ax           ; 01 47 04
        call    L_36A4                          ; E8 44 F1
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     bx, di                          ; 8B DF
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x310]       ; 8B 87 10 03
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_45AF                          ; 74 36
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ax                              ; 50
        mov     ax, 0x37c                       ; B8 7C 03
        push    ax                              ; 50
        call    far _entry_40                   ; 9A 92 45 00 00 [FIXUP]
        inc     ax                              ; 40
        jne     L_45D1                          ; 75 48
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ax                              ; 50
        mov     ax, 0x25c                       ; B8 5C 02
        push    ax                              ; 50
        call    far _entry_40                   ; 9A B8 45 00 00 [FIXUP]
        cmp     ax, 0xffff                      ; 3D FF FF
        jle     L_45D1                          ; 7E 36
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     dx, word ptr [bp - 0x18]        ; 8B 56 E8
        mov     word ptr [0x37c], ax            ; A3 7C 03
        mov     word ptr [0x37e], dx            ; 89 16 7E 03
        call    far _entry_35                   ; 9A AE 43 00 00 [FIXUP]
        jmp     L_45D1                          ; EB 22
;   [conditional branch target (if/else)] L_45AF
L_45AF:
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ax                              ; 50
        mov     ax, 0x37c                       ; B8 7C 03
        push    ax                              ; 50
        call    far _entry_40                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_45D1                          ; 75 11
        mov     ax, 0x25c                       ; B8 5C 02
        push    ax                              ; 50
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_46A7                          ; E8 D6 00
;   [error/early exit] L_45D1
L_45D1:
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: ENDDIALOG.

;-------------------------------------------------------------------------
; sub_45D2   offset=0x45D2  size=82 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;
; Near calls (internal): L_2C30, L_31D5, L_46A7, L_482D, L_57F5
;-------------------------------------------------------------------------
;   [sub-routine] L_45D2
L_45D2:
        call    L_57F5                          ; E8 20 12
        add     byte ptr [bx + si], al          ; 00 00
        cmp     word ptr [0xa2], 0              ; 83 3E A2 00 00
        jne     L_463B                          ; 75 5D
        mov     word ptr [0xa2], 1              ; C7 06 A2 00 01 00
        jmp     L_462E                          ; EB 48
;   [loop start] L_45E6
L_45E6:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_482D                          ; E8 3F 02
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        je      L_4627                          ; 74 32
        push    word ptr [0x2ce]                ; FF 36 CE 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    L_31D5                          ; E8 D2 EB
        mov     word ptr [0x4e], 0              ; C7 06 4E 00 00 00
        mov     ax, 0x25c                       ; B8 5C 02
        push    ax                              ; 50
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_46A7                          ; E8 8D 00
        mov     word ptr [0x26c], 0xffff        ; C7 06 6C 02 FF FF
        call    far _entry_35                   ; 9A A9 45 00 00 [FIXUP]
        jmp     L_462E                          ; EB 07
;   [conditional branch target (if/else)] L_4627
L_4627:
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        call    L_2C30                          ; E8 02 E6
;   [unconditional branch target] L_462E
L_462E:
        cmp     word ptr [0x26c], -1            ; 83 3E 6C 02 FF
        jne     L_45E6                          ; 75 B1
        mov     word ptr [0xa2], 0              ; C7 06 A2 00 00 00
;   [error/early exit] L_463B
L_463B:
        ret                                     ; C3
        call    L_57F5                          ; E8 B6 11
        add     ax, word ptr [di]               ; 03 05
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_4652                          ; 74 09
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_4692                          ; 74 44
;   [loop start] L_464E
L_464E:
        sub     ax, ax                          ; 2B C0
        jmp     L_46A6                          ; EB 54
;   [conditional branch target (if/else)] L_4652
L_4652:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x4c], ax             ; A3 4C 00
        mov     ax, word ptr [0x25c]            ; A1 5C 02
        mov     dx, word ptr [0x25e]            ; 8B 16 5E 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        mov     ax, word ptr [0x2fa]            ; A1 FA 02
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far _entry_41                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x26c                       ; B8 6C 02
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_46A7                          ; E8 20 00
        mov     word ptr [0x26c], 0xffff        ; C7 06 6C 02 FF FF
;   [loop start] L_468D
L_468D:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_46A6                          ; EB 14
;   [conditional branch target (if/else)] L_4692
L_4692:
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        jne     L_464E                          ; 75 B6
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A CC 31 00 00 [FIXUP]
        jmp     L_468D                          ; EB E7
;   [fall-through exit] L_46A6
L_46A6:
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: SENDDLGITEMMESSAGE.

;-------------------------------------------------------------------------
; sub_46A7   offset=0x46A7  size=125 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;
; Near calls (first 8 of 13): L_08DE, L_0930, L_2510, L_2524, L_2538, L_2951, L_2971, L_3490 ...
;-------------------------------------------------------------------------
;   [sub-routine] L_46A7
L_46A7:
        call    L_57F5                          ; E8 4B 11
        sub     al, byte ptr [si]               ; 2A 04
        call    L_2951                          ; E8 A2 E2
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        mov     word ptr [bp - 0x4a], dx        ; 89 56 B6
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     word ptr [bp - 0x3e], dx        ; 89 56 C2
        mov     word ptr [0x37c], 0xffff        ; C7 06 7C 03 FF FF
        call    L_47EB                          ; E8 17 01
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        push    word ptr [bp - 0x4c]            ; FF 76 B4
        lea     ax, [bp - 0x44]                 ; 8D 46 BC
        push    ax                              ; 50
        call    L_3490                          ; E8 AF ED
        jmp     L_47DC                          ; E9 F8 00
;   [loop start] L_46E4
L_46E4:
        call    L_3695                          ; E8 AE EF
        mov     cx, ax                          ; 8B C8
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp - 0x44]            ; F7 6E BC
        add     ax, cx                          ; 03 C1
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x50], ax        ; 89 46 B0
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        mov     si, word ptr [bx + 8]           ; 8B 77 08
        call    L_36A4                          ; E8 97 EF
        cmp     word ptr [bp - 0x42], 0         ; 83 7E BE 00
        jne     L_4716                          ; 75 03
        jmp     L_47D9                          ; E9 C3 00
;   [conditional branch target (if/else)] L_4716
L_4716:
        mov     ax, si                          ; 8B C6
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_4730                          ; 75 13
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_4726                          ; 75 03
        jmp     L_47E7                          ; E9 C1 00
;   [conditional branch target (if/else)] L_4726
L_4726:
        mov     si, word ptr [bp - 0x3c]        ; 8B 76 C4
        push    si                              ; 56
        push    word ptr [bp - 0x54]            ; FF 76 AC
        call    L_4809                          ; E8 D9 00
;   [conditional branch target (if/else)] L_4730
L_4730:
        push    si                              ; 56
        call    L_2510                          ; E8 DC DD
        push    ax                              ; 50
        call    L_2538                          ; E8 00 DE
        jmp     L_47CA                          ; E9 8F 00
;   [loop start] L_473B
L_473B:
        test    word ptr [di], 0x100            ; F7 05 00 01
        jne     L_4744                          ; 75 03
        jmp     L_47C4                          ; E9 80 00
;   [conditional branch target (if/else)] L_4744
L_4744:
        dec     word ptr [bp - 0x42]            ; FF 4E BE
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
        lea     ax, [bp - 0x50]                 ; 8D 46 B0
        push    ax                              ; 50
        lea     ax, [bp - 0x4c]                 ; 8D 46 B4
        push    ax                              ; 50
        call    far _entry_40                   ; 9A 66 47 00 00 [FIXUP]
        inc     ax                              ; 40
        je      L_47C4                          ; 74 67
        lea     ax, [bp - 0x50]                 ; 8D 46 B0
        push    ax                              ; 50
        lea     ax, [bp - 0x40]                 ; 8D 46 C0
        push    ax                              ; 50
        call    far _entry_40                   ; 9A 82 45 00 00 [FIXUP]
        inc     ax                              ; 40
        je      L_4780                          ; 74 13
        mov     ax, word ptr [bp - 0x50]        ; 8B 46 B0
        mov     dx, word ptr [bp - 0x4e]        ; 8B 56 B2
        mov     word ptr [0x37c], ax            ; A3 7C 03
        mov     word ptr [0x37e], dx            ; 89 16 7E 03
        push    si                              ; 56
        call    L_2524                          ; E8 A6 DD
        jmp     L_47E7                          ; EB 67
;   [conditional branch target (if/else)] L_4780
L_4780:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_47C4                          ; 74 3E
        push    word ptr [di + 2]               ; FF 75 02
        lea     ax, [bp - 0x3a]                 ; 8D 46 C6
        push    ax                              ; 50
        call    L_08DE                          ; E8 4E C1
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        mov     bx, ax                          ; 8B D8
        add     bx, bp                          ; 03 DD
        mov     byte ptr ss:[bx - 0x3a], 0x20   ; 36 C6 47 C6 20
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        add     ax, bp                          ; 03 C5
        sub     ax, 0x39                        ; 2D 39 00
        push    ax                              ; 50
        lea     ax, [di + 4]                    ; 8D 45 04
        push    ax                              ; 50
        call    L_0930                          ; E8 84 C1
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDlg
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        lea     ax, [bp - 0x3a]                 ; 8D 46 C6
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDDLGITEMMESSAGE     ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_47C4
L_47C4:
        mov     al, byte ptr [di]               ; 8A 05
        sub     ah, ah                          ; 2A E4
        add     ax, di                          ; 03 C7
;   [unconditional branch target] L_47CA
L_47CA:
        mov     di, ax                          ; 8B F8
        cmp     word ptr [bp - 0x42], 0         ; 83 7E BE 00
        je      L_47D5                          ; 74 03
        jmp     L_473B                          ; E9 66 FF
;   [conditional branch target (if/else)] L_47D5
L_47D5:
        push    si                              ; 56
        call    L_2524                          ; E8 4B DD
;   [unconditional branch target] L_47D9
L_47D9:
        inc     word ptr [bp - 0x44]            ; FF 46 BC
;   [unconditional branch target] L_47DC
L_47DC:
        mov     ax, word ptr [0x26a]            ; A1 6A 02
        cmp     word ptr [bp - 0x44], ax        ; 39 46 BC
        jge     L_47E7                          ; 7D 03
        jmp     L_46E4                          ; E9 FD FE
;   [branch target] L_47E7
L_47E7:
        call    L_2971                          ; E8 87 E1
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (14 instructions).

;-------------------------------------------------------------------------
; sub_47EB   offset=0x47EB  size=14 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_2510, L_2524, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_47EB
L_47EB:
        call    L_57CD                          ; E8 DF 0F
        add     al, byte ptr [bx + si]          ; 02 00
        ; constant WM_MOVE
        mov     si, 3                           ; BE 03 00
;   [loop start] L_47F3
L_47F3:
        dec     si                              ; 4E
        push    si                              ; 56
        call    L_2510                          ; E8 18 DD
        mov     bx, ax                          ; 8B D8
        mov     di, word ptr [bx + 2]           ; 8B 7F 02
        push    si                              ; 56
        call    L_2524                          ; E8 23 DD
        cmp     di, -1                          ; 83 FF FF
        jne     L_47F3                          ; 75 ED
        mov     ax, si                          ; 8B C6
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (14 instructions).

;-------------------------------------------------------------------------
; sub_4809   offset=0x4809  size=14 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_2510, L_2524, L_3879, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_4809
L_4809:
        call    L_57CD                          ; E8 C1 0F
        add     word ptr [bp + si], ax          ; 01 02
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_2510                          ; E8 FC DC
        mov     si, ax                          ; 8B F0
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    si                              ; 56
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_3879                          ; E8 58 F0
        mov     word ptr [si + 2], 0xffff       ; C7 44 02 FF FF
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_2524                          ; E8 F8 DC
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around FLASHWINDOW.

;-------------------------------------------------------------------------
; sub_482D   offset=0x482D  size=11 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   FLASHWINDOW
;
; Near calls (internal): L_57F5
;-------------------------------------------------------------------------
;   [sub-routine] L_482D
L_482D:
        call    L_57F5                          ; E8 C5 0F
        add     byte ptr [bx + di], al          ; 00 01
        mov     ax, word ptr [0x48]             ; A1 48 00
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        je      L_484A                          ; 74 10
        push    word ptr [0x262]                ; FF 36 62 02
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x48], ax             ; A3 48 00
        push    ax                              ; 50
        call    far USER.FLASHWINDOW            ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_484A
L_484A:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (27 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_484B   offset=0x484B  size=27 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0598, L_208B, L_246B, L_491C, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_484B
L_484B:
        call    L_57CD                          ; E8 7F 0F
        add     ax, word ptr [bx + si]          ; 03 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0598                          ; E8 40 BD
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        and     al, 0                           ; 24 00
        or      al, 5                           ; 0C 05
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        and     byte ptr [bp - 5], 0xfe         ; 80 66 FB FE
        or      byte ptr [bp - 5], 2            ; 80 4E FB 02
        mov     ax, word ptr [0x22c]            ; A1 2C 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     byte ptr [bp - 2], 0            ; C6 46 FE 00
        push    word ptr [0x468]                ; FF 36 68 04
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        call    L_246B                          ; E8 EC DB
        or      ax, ax                          ; 0B C0
        je      L_488D                          ; 74 0A
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_208B                          ; E8 01 D8
        call    L_491C                          ; E8 8F 00
;   [error/early exit] L_488D
L_488D:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (58 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_488E   offset=0x488E  size=58 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=3)
; Prologue: none     Epilogue: ret
;
; Near calls (first 8 of 12): L_0598, L_208B, L_2426, L_24F6, L_2503, L_2538, L_3490, L_3695 ...
;-------------------------------------------------------------------------
;   [sub-routine] L_488E
L_488E:
        call    L_57CD                          ; E8 3C 0F
        add     ax, 0x2b00                      ; 05 00 2B
        rcl     byte ptr [bx + si - 0x70], 0xe  ; C0 50 90 0E
        call    L_0598                          ; E8 FD BC
        call    L_24F6                          ; E8 58 DC
        mov     di, ax                          ; 8B F8
        push    di                              ; 57
        call    L_2538                          ; E8 94 DC
        mov     bx, ax                          ; 8B D8
        add     bx, word ptr [0x278]            ; 03 1E 78 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     cl, 8                           ; B1 08
        shr     ax, cl                          ; D3 E8
        mov     si, ax                          ; 8B F0
        and     si, 1                           ; 81 E6 01 00
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        call    L_2503                          ; E8 44 DC
        push    word ptr [0x278]                ; FF 36 78 02
        call    L_2426                          ; E8 60 DB
        or      si, si                          ; 0B F6
        je      L_4911                          ; 74 47
        push    word ptr [bp - 0xa]             ; FF 76 F6
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        call    L_3490                          ; E8 BC EB
        call    L_3695                          ; E8 BE ED
        mov     cx, ax                          ; 8B C8
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        mov     bx, ax                          ; 8B D8
        add     bx, cx                          ; 03 D9
        dec     word ptr [bx + 4]               ; FF 4F 04
        call    L_36A4                          ; E8 BB ED
        mov     ax, word ptr [0x22c]            ; A1 2C 02
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ax                              ; 50
        mov     ax, 0x37c                       ; B8 7C 03
        push    ax                              ; 50
        call    far _entry_40                   ; 9A 56 47 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_4911                          ; 75 11
        mov     ax, 0x25c                       ; B8 5C 02
        push    ax                              ; 50
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_46A7                          ; E8 96 FD
;   [conditional branch target (if/else)] L_4911
L_4911:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    L_208B                          ; E8 73 D7
        call    L_491C                          ; E8 01 00
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: ENDDIALOG, INVALIDATERECT, SETDLGITEMTEXT.

;-------------------------------------------------------------------------
; sub_491C   offset=0x491C  size=75 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
;
; Near calls (first 8 of 9): L_0A67, L_1A48, L_1FB8, L_20C2, L_24F6, L_2503, L_2811, L_57CD ...
;-------------------------------------------------------------------------
;   [sub-routine] L_491C
L_491C:
        call    L_57CD                          ; E8 AE 0E
        add     word ptr [bx + si], ax          ; 01 00
        call    L_24F6                          ; E8 D2 DB
        mov     bx, ax                          ; 8B D8
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0x380], ax            ; A3 80 03
        mov     word ptr [bx + 4], ax           ; 89 47 04
        call    L_2503                          ; E8 D1 DB
        push    word ptr [0x22c]                ; FF 36 2C 02
        call    L_1A48                          ; E8 0F D1
        sub     si, si                          ; 2B F6
        jmp     L_493E                          ; EB 01
;   [loop start] L_493D
L_493D:
        inc     si                              ; 46
;   [unconditional branch target] L_493E
L_493E:
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [0x22c]            ; A1 2C 02
        cmp     word ptr [bx + 0x310], ax       ; 39 87 10 03
        jl      L_493D                          ; 7C F0
        mov     ax, word ptr [0x27a]            ; A1 7A 02
        mov     word ptr [0x50], ax             ; A3 50 00
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1FB8                          ; E8 5F D6
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    L_20C2                          ; E8 62 D7
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ;   ^ arg hWnd
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A 03 45 00 00 [FIXUP]
        ret                                     ; C3
        call    L_57F5                          ; E8 80 0E
        pop     es                              ; 07
        add     ax, 0x468b                      ; 05 8B 46
        or      al, 0x3d                        ; 0C 3D
        adc     byte ptr [bx + di], al          ; 10 01
        je      L_4986                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_49A9                          ; 74 25
        jmp     L_49CD                          ; EB 47
;   [conditional branch target (if/else)] L_4986
L_4986:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x4c], ax             ; A3 4C 00
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ax                              ; 50
        call    L_0A67                          ; E8 D4 C0
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A 74 30 00 00 [FIXUP]
;   [loop start] L_49A4
L_49A4:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_49CF                          ; EB 26
;   [conditional branch target (if/else)] L_49A9
L_49A9:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_49B8                          ; 74 07
        cmp     ax, 2                           ; 3D 02 00
        je      L_49C0                          ; 74 0A
        jmp     L_49A4                          ; EB EC
;   [conditional branch target (if/else)] L_49B8
L_49B8:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_2811                          ; E8 53 DE
        jmp     L_49A4                          ; EB E4
;   [conditional branch target (if/else)] L_49C0
L_49C0:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A A0 46 00 00 [FIXUP]
        jmp     L_49A4                          ; EB D7
;   [fall-through exit] L_49CD
L_49CD:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_49CF
L_49CF:
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: GETDEVICECAPS, GETTEXTMETRICS.

;-------------------------------------------------------------------------
; sub_49D0   offset=0x49D0  size=94 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
;   GETTEXTMETRICS
;
; Near calls (first 8 of 9): L_3695, L_36A4, L_47EB, L_4809, L_4ACF, L_4D27, L_4E28, L_4F4D ...
;-------------------------------------------------------------------------
;   [sub-routine] L_49D0
L_49D0:
        call    L_57CD                          ; E8 FA 0D
        pop     ss                              ; 17
        add     al, ch                          ; 00 E8
        xchg    byte ptr [bp + di], al          ; 86 03
        or      ax, ax                          ; 0B C0
        jge     L_49E6                          ; 7D 0A
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    L_4F4D                          ; E8 6A 05
        jmp     L_4ACE                          ; E9 E8 00
;   [conditional branch target (if/else)] L_49E6
L_49E6:
        push    word ptr [0x2e2]                ; FF 36 E2 02
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        add     ax, word ptr [bp - 0x1c]        ; 03 46 E4
        mov     word ptr [0x2de], ax            ; A3 DE 02
        push    word ptr [0x2e2]                ; FF 36 E2 02
        ;   ^ arg hDC
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        ;   ^ arg iCap
        ; --> GETDEVICECAPS(HDC hDC, INT iCap) -> INT
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        cdq                                     ; 99
        mov     cx, word ptr [0x2de]            ; 8B 0E DE 02
        idiv    cx                              ; F7 F9
        mov     word ptr [0x27e], ax            ; A3 7E 02
        call    L_47EB                          ; E8 D4 FD
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [0x276], 0             ; C7 06 76 02 00 00
        mov     ax, word ptr [0x2f8]            ; A1 F8 02
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
;   [loop start] L_4A26
L_4A26:
        cmp     word ptr [0x23e], 0             ; 83 3E 3E 02 00
        je      L_4A30                          ; 74 03
        jmp     L_4AC4                          ; E9 94 00
;   [conditional branch target (if/else)] L_4A30
L_4A30:
        mov     ax, word ptr [0x38c]            ; A1 8C 03
        cmp     word ptr [bp - 0x26], ax        ; 39 46 DA
        jl      L_4A3B                          ; 7C 03
        jmp     L_4AC4                          ; E9 89 00
;   [conditional branch target (if/else)] L_4A3B
L_4A3B:
        call    L_3695                          ; E8 57 EC
        mov     cx, ax                          ; 8B C8
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp - 0x26]            ; F7 6E DA
        add     ax, cx                          ; 03 C1
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        call    L_36A4                          ; E8 43 EC
        cmp     word ptr [bp - 2], -1           ; 83 7E FE FF
        jne     L_4A7A                          ; 75 13
        cmp     word ptr [bp - 0x2e], -1        ; 83 7E D2 FF
        je      L_4A91                          ; 74 24
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        call    L_4809                          ; E8 8F FD
;   [conditional branch target (if/else)] L_4A7A
L_4A7A:
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_4ACF                          ; E8 49 00
        or      ax, ax                          ; 0B C0
        je      L_4ACE                          ; 74 44
        cmp     word ptr [0x390], 0             ; 83 3E 90 03 00
        jne     L_4A96                          ; 75 05
;   [loop start (also forward branch)] L_4A91
L_4A91:
        inc     word ptr [bp - 0x26]            ; FF 46 DA
        jmp     L_4A26                          ; EB 90
;   [conditional branch target (if/else)] L_4A96
L_4A96:
        cmp     word ptr [0x276], 0             ; 83 3E 76 02 00
        je      L_4AB1                          ; 74 14
        mov     ax, word ptr [0x276]            ; A1 76 02
        add     ax, word ptr [0x390]            ; 03 06 90 03
        cmp     ax, word ptr [0x27e]            ; 3B 06 7E 02
        jle     L_4AB1                          ; 7E 07
        call    L_4D27                          ; E8 7A 02
        or      ax, ax                          ; 0B C0
        je      L_4ACE                          ; 74 1D
;   [conditional branch target (if/else)] L_4AB1
L_4AB1:
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_4ACF                          ; E8 11 00
        or      ax, ax                          ; 0B C0
        jne     L_4A91                          ; 75 CF
        jmp     L_4ACE                          ; EB 0A
;   [unconditional branch target] L_4AC4
L_4AC4:
        call    L_4D27                          ; E8 60 02
        or      ax, ax                          ; 0B C0
        je      L_4ACE                          ; 74 03
        call    L_4E28                          ; E8 5A 03
;   [error/early exit] L_4ACE
L_4ACE:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (152 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_4ACF   offset=0x4ACF  size=152 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (first 8 of 10): L_08DE, L_0930, L_09EE, L_2510, L_2524, L_2538, L_4C66, L_4CB3 ...
;-------------------------------------------------------------------------
;   [sub-routine] L_4ACF
L_4ACF:
        call    L_57CD                          ; E8 FB 0C
        inc     si                              ; 46
        add     cx, word ptr [bp + di + 0x446]  ; 03 8B 46 04
        mov     word ptr [0x442], ax            ; A3 42 04
        lea     ax, [bp - 0x8c]                 ; 8D 86 74 FF
        mov     word ptr [0x234], ax            ; A3 34 02
        mov     word ptr [0x390], 0             ; C7 06 90 03 00 00
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_2510                          ; E8 23 DA
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        mov     word ptr [bp - 0x12], 1         ; C7 46 EE 01 00
        push    ax                              ; 50
        call    L_2538                          ; E8 3A DA
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        add     ax, word ptr [bx + 8]           ; 03 47 08
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
;   [loop start] L_4B09
L_4B09:
        cmp     word ptr [bp - 0xc], si         ; 39 76 F4
        ja      L_4B11                          ; 77 03
        jmp     L_4BD6                          ; E9 C5 00
;   [conditional branch target (if/else)] L_4B11
L_4B11:
        test    word ptr [si], 0x100            ; F7 04 00 01
        jne     L_4B1F                          ; 75 08
        cmp     byte ptr [si], 4                ; 80 3C 04
        jne     L_4B1F                          ; 75 03
        jmp     L_4BCB                          ; E9 AC 00
;   [conditional branch target (if/else)] L_4B1F
L_4B1F:
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_4C66                          ; E8 41 01
        or      ax, ax                          ; 0B C0
        jne     L_4B2C                          ; 75 03
        jmp     L_4BAF                          ; E9 83 00
;   [conditional branch target (if/else)] L_4B2C
L_4B2C:
        push    word ptr [0x234]                ; FF 36 34 02
        mov     ax, 0x77                        ; B8 77 00
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    L_09EE                          ; E8 B3 BE
        test    word ptr [si], 0x100            ; F7 04 00 01
        je      L_4B48                          ; 74 07
        mov     bx, word ptr [0x234]            ; 8B 1E 34 02
        mov     byte ptr [bx], 0x2a             ; C6 07 2A
;   [conditional branch target (if/else)] L_4B48
L_4B48:
        push    word ptr [si + 2]               ; FF 74 02
        mov     ax, word ptr [0x234]            ; A1 34 02
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        call    L_08DE                          ; E8 8A BD
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_4B7F                          ; 75 22
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        je      L_4B6A                          ; 74 07
        cmp     word ptr [si + 2], 0x2d0        ; 81 7C 02 D0 02
        jge     L_4B7F                          ; 7D 15
;   [conditional branch target (if/else)] L_4B6A
L_4B6A:
        mov     ax, word ptr [0x234]            ; A1 34 02
        add     ax, 7                           ; 05 07 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        sub     ax, 5                           ; 2D 05 00
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    L_09EE                          ; E8 6F BE
;   [conditional branch target (if/else)] L_4B7F
L_4B7F:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        add     ax, word ptr [0x234]            ; 03 06 34 02
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, ax                          ; 8B D8
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     byte ptr [bx], 0x20             ; C6 07 20
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     byte ptr [bx], 0                ; C6 07 00
        cmp     byte ptr [si], 4                ; 80 3C 04
        jbe     L_4BA8                          ; 76 0A
        push    word ptr [bp - 0xa]             ; FF 76 F6
        lea     ax, [si + 4]                    ; 8D 44 04
        push    ax                              ; 50
        call    L_0930                          ; E8 88 BD
;   [conditional branch target (if/else)] L_4BA8
L_4BA8:
        call    L_4CDA                          ; E8 2F 01
        or      ax, ax                          ; 0B C0
        jne     L_4BBA                          ; 75 0B
;   [loop start (also forward branch)] L_4BAF
L_4BAF:
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_2524                          ; E8 6F D9
        sub     ax, ax                          ; 2B C0
        jmp     L_4C65                          ; E9 AB 00
;   [conditional branch target (if/else)] L_4BBA
L_4BBA:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        cmp     word ptr [si + 2], 0x2d0        ; 81 7C 02 D0 02
        jl      L_4BCB                          ; 7C 05
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
;   [branch target] L_4BCB
L_4BCB:
        mov     al, byte ptr [si]               ; 8A 04
        sub     ah, ah                          ; 2A E4
        add     ax, si                          ; 03 C6
        mov     si, ax                          ; 8B F0
        jmp     L_4B09                          ; E9 33 FF
;   [unconditional branch target] L_4BD6
L_4BD6:
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        cmp     word ptr [bx + 6], 0            ; 83 7F 06 00
        je      L_4C5C                          ; 74 7D
        cmp     word ptr [0x390], 0             ; 83 3E 90 03 00
        je      L_4BF3                          ; 74 0D
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_4CB3                          ; E8 C6 00
        or      ax, ax                          ; 0B C0
        jne     L_4BFD                          ; 75 0C
        jmp     L_4BAF                          ; EB BC
;   [conditional branch target (if/else)] L_4BF3
L_4BF3:
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_4C66                          ; E8 6D 00
        or      ax, ax                          ; 0B C0
        je      L_4BAF                          ; 74 B2
;   [conditional branch target (if/else)] L_4BFD
L_4BFD:
        mov     di, word ptr [bp - 0xe]         ; 8B 7E F2
        add     di, 0xa                         ; 83 C7 0A
        jmp     L_4C57                          ; EB 52
;   [loop start] L_4C05
L_4C05:
        lea     ax, [bp - 0x8c]                 ; 8D 86 74 FF
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
;   [loop start] L_4C11
L_4C11:
        mov     al, byte ptr [di]               ; 8A 05
        inc     di                              ; 47
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        mov     byte ptr [bx], al               ; 88 07
        cwde                                    ; 98
        or      ax, ax                          ; 0B C0
        je      L_4C41                          ; 74 20
        cmp     ax, 0xd                         ; 3D 0D 00
        je      L_4C29                          ; 74 03
        jmp     L_4C47                          ; EB 1F
;   [loop start] L_4C28
L_4C28:
        inc     di                              ; 47
;   [conditional branch target (if/else)] L_4C29
L_4C29:
        cmp     byte ptr [di], 0xd              ; 80 3D 0D
        je      L_4C28                          ; 74 FA
        jmp     L_4C33                          ; EB 03
;   [loop start] L_4C30
L_4C30:
        mov     ax, di                          ; 8B C7
        inc     di                              ; 47
;   [unconditional branch target] L_4C33
L_4C33:
        cmp     byte ptr [di], 0xa              ; 80 3D 0A
        je      L_4C30                          ; 74 F8
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     byte ptr [bx - 1], 0            ; C6 47 FF 00
        jmp     L_4C42                          ; EB 01
;   [conditional branch target (if/else)] L_4C41
L_4C41:
        dec     di                              ; 4F
;   [unconditional branch target] L_4C42
L_4C42:
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
;   [unconditional branch target] L_4C47
L_4C47:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_4C11                          ; 75 C4
        call    L_4CDA                          ; E8 8A 00
        or      ax, ax                          ; 0B C0
        jne     L_4C57                          ; 75 03
        jmp     L_4BAF                          ; E9 58 FF
;   [branch target] L_4C57
L_4C57:
        cmp     byte ptr [di], 0                ; 80 3D 00
        jne     L_4C05                          ; 75 A9
;   [conditional branch target (if/else)] L_4C5C
L_4C5C:
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_2524                          ; E8 C2 D8
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_4C65
L_4C65:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (31 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_4C66   offset=0x4C66  size=31 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_09B9, L_0B1E, L_4CB3, L_4CDA, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_4C66
L_4C66:
        call    L_57CD                          ; E8 64 0B
        add     ax, word ptr [bx + di]          ; 03 01
        cmp     word ptr [0x390], 0             ; 83 3E 90 03 00
        jne     L_4CAF                          ; 75 3D
        cmp     word ptr [0x276], 0             ; 83 3E 76 02 00
        je      L_4C88                          ; 74 0F
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_4CB3                          ; E8 33 00
        or      ax, ax                          ; 0B C0
        jne     L_4C88                          ; 75 04
;   [loop start] L_4C84
L_4C84:
        sub     ax, ax                          ; 2B C0
        jmp     L_4CB2                          ; EB 2A
;   [conditional branch target (if/else)] L_4C88
L_4C88:
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        call    L_0B1E                          ; E8 8C BE
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        push    word ptr [0x234]                ; FF 36 34 02
        call    L_09B9                          ; E8 1C BD
        call    L_4CDA                          ; E8 3A 00
        or      ax, ax                          ; 0B C0
        je      L_4C84                          ; 74 E0
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_4CB3                          ; E8 08 00
        or      ax, ax                          ; 0B C0
        je      L_4C84                          ; 74 D5
;   [error/early exit] L_4CAF
L_4CAF:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_4CB2
L_4CB2:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (16 instructions).

;-------------------------------------------------------------------------
; sub_4CB3   offset=0x4CB3  size=16 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_4CDA, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_4CB3
L_4CB3:
        call    L_57CD                          ; E8 17 0B
        add     byte ptr [bx + di], al          ; 00 01
        mov     bx, word ptr [0x234]            ; 8B 1E 34 02
        mov     byte ptr [bx], 0                ; C6 07 00
        jmp     L_4CCC                          ; EB 0B
;   [loop start] L_4CC1
L_4CC1:
        call    L_4CDA                          ; E8 16 00
        or      ax, ax                          ; 0B C0
        jne     L_4CCC                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_4CD9                          ; EB 0D
;   [branch target] L_4CCC
L_4CCC:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        dec     word ptr [bp + 4]               ; FF 4E 04
        or      ax, ax                          ; 0B C0
        jne     L_4CC1                          ; 75 EB
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_4CD9
L_4CD9:
        ret                                     ; C3
; Description (heuristic):
;   Small helper using 2 API(s): LSTRLEN, TEXTOUT.

;-------------------------------------------------------------------------
; sub_4CDA   offset=0x4CDA  size=30 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
;   LSTRLEN(LPSTR lpsz) -> INT
;
; Near calls (internal): L_4D27, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_4CDA
L_4CDA:
        call    L_57CD                          ; E8 F0 0A
        add     byte ptr [bx + si], al          ; 00 00
        cmp     word ptr [0x442], 0             ; 83 3E 42 04 00
        je      L_4D1F                          ; 74 39
        mov     ax, word ptr [0x27e]            ; A1 7E 02
        cmp     word ptr [0x276], ax            ; 39 06 76 02
        jl      L_4CFA                          ; 7C 0B
        call    L_4D27                          ; E8 35 00
        or      ax, ax                          ; 0B C0
        jne     L_4CFA                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_4D26                          ; EB 2C
;   [conditional branch target (if/else)] L_4CFA
L_4CFA:
        push    word ptr [0x2e2]                ; FF 36 E2 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [0x276]            ; A1 76 02
        imul    word ptr [0x2de]                ; F7 2E DE 02
        push    ax                              ; 50
        mov     ax, word ptr [0x234]            ; A1 34 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A 63 32 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A 9D 1E 00 00 [FIXUP]
        inc     word ptr [0x276]                ; FF 06 76 02
;   [conditional branch target (if/else)] L_4D1F
L_4D1F:
        inc     word ptr [0x390]                ; FF 06 90 03
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_4D26
L_4D26:
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: DELETEDC, ESCAPE, LSTRLEN (+4 more).

;-------------------------------------------------------------------------
; sub_4D27   offset=0x4D27  size=103 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   DELETEDC(HDC hDC) -> BOOL
;   ESCAPE
;   LSTRLEN(LPSTR lpsz) -> INT
;   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
;   CREATEDIALOG
;   ENABLEWINDOW
;   GETWINDOWTEXT(HWND hWnd, LPSTR lpszText, INT cbMax) -> INT
;
; Near calls (internal): L_2951, L_2971, L_4E28, L_4F4D, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_4D27
L_4D27:
        call    L_57CD                          ; E8 A3 0A
        add     word ptr [bx + si], ax          ; 01 00
        push    word ptr [0x2e2]                ; FF 36 E2 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jge     L_4D54                          ; 7D 0D
        call    L_4E28                          ; E8 DE 00
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_4F4D                          ; E8 FD 01
        sub     ax, ax                          ; 2B C0
        jmp     L_4D5D                          ; EB 09
;   [error/early exit] L_4D54
L_4D54:
        mov     word ptr [0x276], 0             ; C7 06 76 02 00 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_4D5D
L_4D5D:
        ret                                     ; C3
        call    L_57CD                          ; E8 6C 0A
        aaa                                     ; 37
        add     byte ptr [bp + si + OFFSET _entry_29], bl ; 00 9A F2 06 [FIXUP]
        add     byte ptr [bx + si], al          ; 00 00
        mov     word ptr [0x2e2], ax            ; A3 E2 02
        or      ax, ax                          ; 0B C0
        jge     L_4D75                          ; 7D 06
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_4E27                          ; E9 B2 00
;   [conditional branch target (if/else)] L_4D75
L_4D75:
        call    L_2951                          ; E8 D9 DB
        mov     word ptr [0x23e], 0             ; C7 06 3E 02 00 00
        push    word ptr [0x2e2]                ; FF 36 E2 02
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, OFFSET _entry_13            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_13            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpProc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpProc (low/offset)
        push    word ptr [0x460]                ; FF 36 60 04
        ;   ^ arg hInstance
        ; --> MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 0B 4E 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A D4 4D 00 00 [FIXUP]
        push    word ptr [0x262]                ; FF 36 62 02
        ;   ^ arg hWnd
        lea     ax, [bp - 0x6e]                 ; 8D 46 92
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0x3e                        ; B8 3E 00
        push    ax                              ; 50
        ;   ^ arg cbMax
        ; --> GETWINDOWTEXT(HWND hWnd, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x2e2]                ; FF 36 E2 02
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        lea     ax, [bp - 0x6e]                 ; 8D 46 92
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A 11 4D 00 00 [FIXUP]
        push    ax                              ; 50
        lea     ax, [bp - 0x6e]                 ; 8D 46 92
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A 3C 4D 00 00 [FIXUP]
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        or      ax, ax                          ; 0B C0
        jge     L_4DF0                          ; 7D 11
        push    word ptr [0x2e2]                ; FF 36 E2 02
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 0D 07 00 00 [FIXUP]
        call    L_2971                          ; E8 86 DB
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        jmp     L_4E27                          ; EB 37
;   [conditional branch target (if/else)] L_4DF0
L_4DF0:
        push    word ptr [0x460]                ; FF 36 60 04
        mov     ax, 0xa                         ; B8 0A 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x262]                ; FF 36 62 02
        mov     ax, OFFSET _entry_12            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_12            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpProc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpProc (low/offset)
        push    word ptr [0x460]                ; FF 36 60 04
        ;   ^ arg hInstance
        ; --> MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.CREATEDIALOG           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x2e0], ax            ; A3 E0 02
        push    word ptr [0x262]                ; FF 36 62 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A E3 32 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_4E27
L_4E27:
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: DELETEDC, ESCAPE, DISPATCHMESSAGE (+6 more).

;-------------------------------------------------------------------------
; sub_4E28   offset=0x4E28  size=102 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   DELETEDC(HDC hDC) -> BOOL
;   ESCAPE
;   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
;   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
;   GETSYSTEMMENU
;   ISDIALOGMESSAGE
;   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
;   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
;   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
;
; Near calls (internal): L_0598, L_2971, L_4F2B, L_57CD, L_57F5
;-------------------------------------------------------------------------
;   [sub-routine] L_4E28
L_4E28:
        call    L_57CD                          ; E8 A2 09
        add     byte ptr [bx + si], al          ; 00 00
        cmp     word ptr [0x23e], 0             ; 83 3E 3E 02 00
        jne     L_4E4B                          ; 75 17
        push    word ptr [0x2e2]                ; FF 36 E2 02
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A A1 4D 00 00 [FIXUP]
        call    L_4F2B                          ; E8 E0 00
;   [conditional branch target (if/else)] L_4E4B
L_4E4B:
        push    word ptr [0x2e2]                ; FF 36 E2 02
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A E4 4D 00 00 [FIXUP]
        call    L_2971                          ; E8 1A DB
        ret                                     ; C3
        call    L_57F5                          ; E8 9A 09
        or      al, byte ptr [bp + si]          ; 0A 02
        jmp     L_4EA3                          ; EB 44
;   [loop start] L_4E5F
L_4E5F:
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
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
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wRemoveMsg
        ; --> PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
        call    far USER.PEEKMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_4EAA                          ; 74 34
        cmp     word ptr [0x2e0], 0             ; 83 3E E0 02 00
        je      L_4E8F                          ; 74 12
        push    word ptr [0x2e0]                ; FF 36 E0 02
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.ISDIALOGMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_4EA3                          ; 75 14
;   [conditional branch target (if/else)] L_4E8F
L_4E8F:
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        ; --> TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        ; --> DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_4EA3
L_4EA3:
        cmp     word ptr [0x23e], 0             ; 83 3E 3E 02 00
        je      L_4E5F                          ; 74 B5
;   [conditional branch target (if/else)] L_4EAA
L_4EAA:
        cmp     word ptr [0x23e], 0             ; 83 3E 3E 02 00
        jne     L_4EB6                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_4EB8                          ; EB 02
;   [error/early exit] L_4EB6
L_4EB6:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_4EB8
L_4EB8:
        ret                                     ; C3
        call    L_57F5                          ; E8 39 09
        add     byte ptr [di], al               ; 00 05
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_4EE6                          ; 74 20
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_4ED2                          ; 74 07
        cmp     ax, 0x116                       ; 3D 16 01
        je      L_4F15                          ; 74 45
        jmp     L_4F28                          ; EB 56
;   [conditional branch target (if/else)] L_4ED2
L_4ED2:
        mov     word ptr [0x23e], 1             ; C7 06 3E 02 01 00
        call    L_4F2B                          ; E8 50 00
        mov     word ptr [0x2e0], 0             ; C7 06 E0 02 00 00
;   [loop start] L_4EE1
L_4EE1:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_4F2A                          ; EB 44
;   [conditional branch target (if/else)] L_4EE6
L_4EE6:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSYSTEMMENU          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x218], ax            ; A3 18 02
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        mov     ax, 0x3be                       ; B8 BE 03
        push    ax                              ; 50
        call    far _entry_38                   ; 9A 38 41 00 00 [FIXUP]
        push    ds                              ; 1E
        push    ax                              ; 50
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A A0 49 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0598                          ; E8 85 B6
        jmp     L_4EE1                          ; EB CC
;   [conditional branch target (if/else)] L_4F15
L_4F15:
        push    word ptr [0x218]                ; FF 36 18 02
        ;   ^ arg hMenu
        mov     ax, 0xf060                      ; B8 60 F0
        push    ax                              ; 50
        ;   ^ arg wIDItem
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 1C 07 00 00 [FIXUP]
        jmp     L_4EE1                          ; EB B9
;   [fall-through exit] L_4F28
L_4F28:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_4F2A
L_4F2A:
        ret                                     ; C3
; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_4F2B   offset=0x4F2B  size=10 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   DESTROYWINDOW(HWND hWnd) -> BOOL
;   ENABLEWINDOW
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_4F2B
L_4F2B:
        call    L_57CD                          ; E8 9F 08
        add     byte ptr [bx + si], al          ; 00 00
        push    word ptr [0x262]                ; FF 36 62 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 21 4E 00 00 [FIXUP]
        push    word ptr [0x2e0]                ; FF 36 E0 02
        ;   ^ arg hWnd
        ; --> DESTROYWINDOW(HWND hWnd) -> BOOL
        call    far USER.DESTROYWINDOW          ; 9A 7D 01 00 00 [FIXUP]
        mov     word ptr [0x2e0], 0             ; C7 06 E0 02 00 00
        ret                                     ; C3
; Description (heuristic):
;   Drawing routine (3 GDI APIs).
;   Acquires a device context, draws, releases.

;-------------------------------------------------------------------------
; sub_4F4D   offset=0x4F4D  size=723 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   CREATECOMPATIBLEDC(HDC hDC) -> HDC
;   GETOBJECT
;   GETTEXTMETRICS
;   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
;   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
;   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
;   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
;   CHANGEMENU
;   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
;   DESTROYWINDOW(HWND hWnd) -> BOOL
;   GETDC(HWND hWnd) -> HDC
;   GETSYSTEMMENU
;   GETSYSTEMMETRICS
;   LOADACCELERATORS
;   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
;   LOADICON(HANDLE hInstance, LPSTR lpszIcon) -> HICON
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;   REGISTERCLASS
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SETTIMER
;   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
;   UPDATEWINDOW(HWND hWnd) -> BOOL
;
; Near calls (first 8 of 14): L_0501, L_054F, L_06E0, L_09EE, L_0BC2, L_12D6, L_31D5, L_416C ...
;-------------------------------------------------------------------------
;   [sub-routine] L_4F4D
L_4F4D:
        call    L_57CD                          ; E8 7D 08
        add     word ptr [bx + di], ax          ; 01 01
        cmp     word ptr [bp + 4], -4           ; 83 7E 04 FC
        jne     L_4F5F                          ; 75 07
        mov     word ptr [bp - 2], 0x21         ; C7 46 FE 21 00
        jmp     L_4F71                          ; EB 12
;   [conditional branch target (if/else)] L_4F5F
L_4F5F:
        cmp     word ptr [bp + 4], -5           ; 83 7E 04 FB
        jne     L_4F6C                          ; 75 07
        mov     word ptr [bp - 2], 0x22         ; C7 46 FE 22 00
        jmp     L_4F71                          ; EB 05
;   [conditional branch target (if/else)] L_4F6C
L_4F6C:
        mov     word ptr [bp - 2], 0x17         ; C7 46 FE 17 00
;   [unconditional branch target] L_4F71
L_4F71:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x288]           ; FF B7 88 02
        mov     ax, 0x3be                       ; B8 BE 03
        push    ax                              ; 50
        call    far _entry_38                   ; 9A 00 4F 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    L_31D5                          ; E8 4A E2
        ret                                     ; C3
        call    L_57F5                          ; E8 66 08
        aaa                                     ; 37
        add     ax, 0x468b                      ; 05 8B 46
        push    cs                              ; 0E
        mov     word ptr [0x460], ax            ; A3 60 04
        mov     word ptr [0x44a], 0             ; C7 06 4A 04 00 00
        push    ax                              ; 50
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far _entry_28                   ; 9A 3C 43 00 00 [FIXUP]
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far _entry_42                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, 0x800                       ; B8 00 08
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        or      ax, ax                          ; 0B C0
        jne     L_4FCF                          ; 75 05
;   [loop start] L_4FCA
L_4FCA:
        sub     ax, ax                          ; 2B C0
        jmp     L_56A6                          ; E9 D7 06
;   [conditional branch target (if/else)] L_4FCF
L_4FCF:
        sub     si, si                          ; 2B F6
;   [loop start] L_4FD1
L_4FD1:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        push    si                              ; 56
        ;   ^ arg wID
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        push    word ptr [bp - 0x28]            ; FF 76 D8
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A AD 0F 00 00 [FIXUP]
        inc     ax                              ; 40
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        cmp     ax, 2                           ; 3D 02 00
        jl      L_4FCA                          ; 7C DF
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        mov     word ptr [bx + 0x288], ax       ; 89 87 88 02
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        add     word ptr [bp - 0x38], ax        ; 01 46 C8
        sub     word ptr [bp - 0x28], ax        ; 29 46 D8
        cmp     word ptr [bp - 0x28], 0         ; 83 7E D8 00
        jle     L_4FCA                          ; 7E C5
        inc     si                              ; 46
        cmp     si, 0x2a                        ; 83 FE 2A
        jl      L_4FD1                          ; 7C C6
        push    word ptr [bp - 0x26]            ; FF 76 DA
        ;   ^ arg hMem
        mov     ax, 0x800                       ; B8 00 08
        sub     ax, word ptr [bp - 0x28]        ; 2B 46 D8
        push    ax                              ; 50
        ;   ^ arg wBytes
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        ; --> LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.LOCALREALLOC         ; 9A FA 35 00 00 [FIXUP]
        mov     bx, word ptr [0x2da]            ; 8B 1E DA 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [0x43e], ax            ; A3 3E 04
        call    L_56A7                          ; E8 7D 06
        or      ax, ax                          ; 0B C0
        je      L_4FCA                          ; 74 9C
        call    L_0BC2                          ; E8 91 BB
        or      ax, ax                          ; 0B C0
        jne     L_503E                          ; 75 09
;   [loop start] L_5035
L_5035:
        sub     ax, ax                          ; 2B C0
;   [loop start] L_5037
L_5037:
        push    ax                              ; 50
        call    L_575D                          ; E8 22 07
        jmp     L_56A6                          ; E9 68 06
;   [conditional branch target (if/else)] L_503E
L_503E:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hInstance
        mov     ax, 0x7f00                      ; B8 00 7F
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg lpszCursor (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszCursor (low/offset)
        ; --> LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
        call    far USER.LOADCURSOR             ; 9A 5D 50 00 00 [FIXUP]
        mov     word ptr [0x268], ax            ; A3 68 02
        or      ax, ax                          ; 0B C0
        je      L_5035                          ; 74 E2
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hInstance
        mov     ax, 0x7f01                      ; B8 01 7F
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg lpszCursor (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszCursor (low/offset)
        ; --> LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
        call    far USER.LOADCURSOR             ; 9A 72 50 00 00 [FIXUP]
        mov     word ptr [0x38a], ax            ; A3 8A 03
        or      ax, ax                          ; 0B C0
        je      L_5035                          ; 74 CD
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hInstance
        mov     ax, 0x7f02                      ; B8 02 7F
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg lpszCursor (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszCursor (low/offset)
        ; --> LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
        call    far USER.LOADCURSOR             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x25a], ax            ; A3 5A 02
        or      ax, ax                          ; 0B C0
        je      L_5035                          ; 74 B8
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jne     L_5101                          ; 75 7E
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_09EE                          ; E8 5D B9
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg lpszIcon (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszIcon (low/offset)
        ; --> LOADICON(HANDLE hInstance, LPSTR lpszIcon) -> HICON
        call    far USER.LOADICON               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
        or      ax, ax                          ; 0B C0
        je      L_5035                          ; 74 8F
        mov     word ptr [bp - 0x40], 1         ; C7 46 C0 01 00
        mov     word ptr [bp - 0x3e], 0         ; C7 46 C2 00 00
        mov     ax, 0xa4                        ; B8 A4 00
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        mov     word ptr [bp - 0x3a], ds        ; 8C 5E C6
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        mov     word ptr [bp - 0x52], 0xb       ; C7 46 AE 0B 00
        mov     word ptr [bp - OFFSET _entry_1], 0xffff ; C7 46 B0 FF FF [FIXUP]
        mov     word ptr [bp - OFFSET _entry_1], 0xffff ; C7 46 B2 FF FF [FIXUP]
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A F6 50 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_50DF                          ; 75 03
        jmp     L_5035                          ; E9 56 FF
;   [conditional branch target (if/else)] L_50DF
L_50DF:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     ax, 0xaf                        ; B8 AF 00
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        mov     word ptr [bp - 0x3a], ds        ; 8C 5E C6
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_5101                          ; 75 03
        jmp     L_5035                          ; E9 34 FF
;   [conditional branch target (if/else)] L_5101
L_5101:
        sub     si, si                          ; 2B F6
;   [loop start] L_5103
L_5103:
        mov     ax, si                          ; 8B C6
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, 0x24                        ; 05 24 00
        mov     word ptr [bp - 0x64], ax        ; 89 46 9C
        mov     bx, ax                          ; 8B D8
        push    word ptr [bx + 2]               ; FF 77 02
        ;   ^ arg lpProc (high/segment)
        push    word ptr [bx]                   ; FF 37
        ;   ^ arg lpProc (low/offset)
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        ; --> MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 96 4D 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x64]        ; 8B 5E 9C
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [bx + 2], dx           ; 89 57 02
        or      ax, dx                          ; 0B C2
        jne     L_512D                          ; 75 03
        jmp     L_5035                          ; E9 08 FF
;   [conditional branch target (if/else)] L_512D
L_512D:
        inc     si                              ; 46
        cmp     si, 9                           ; 83 FE 09
        jl      L_5103                          ; 7C D0
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADACCELERATORS       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x450], ax            ; A3 50 04
        or      ax, ax                          ; 0B C0
        jne     L_514B                          ; 75 03
        jmp     L_5035                          ; E9 EA FE
;   [conditional branch target (if/else)] L_514B
L_514B:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_56D5                          ; E8 84 05
        or      ax, ax                          ; 0B C0
        jne     L_515B                          ; 75 06
;   [loop start] L_5155
L_5155:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_5037                          ; E9 DC FE
;   [conditional branch target (if/else)] L_515B
L_515B:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 81 0C 00 00 [FIXUP]
        mov     word ptr [bp - 0x62], ax        ; 89 46 9E
        push    ax                              ; 50
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A F0 49 00 00 [FIXUP]
        push    word ptr [bp - 0x62]            ; FF 76 9E
        ;   ^ arg hDC
        ; --> CREATECOMPATIBLEDC(HDC hDC) -> HDC
        call    far GDI.CREATECOMPATIBLEDC      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x5c], ax             ; A3 5C 00
        or      ax, ax                          ; 0B C0
        je      L_5155                          ; 74 D5
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hWnd
        push    word ptr [bp - 0x62]            ; FF 76 9E
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A EF 2B 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        mov     word ptr [0x464], ax            ; A3 64 04
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     word ptr [0x462], ax            ; A3 62 04
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        mov     word ptr [0x2f4], ax            ; A3 F4 02
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        mov     word ptr [0x376], ax            ; A3 76 03
        or      ax, ax                          ; 0B C0
        jne     L_51CB                          ; 75 24
        mov     ax, word ptr [0x464]            ; A1 64 04
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        ; constant WM_MOVE
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 0x64], ax        ; 89 46 9C
        cmp     ax, 1                           ; 3D 01 00
        jge     L_51C5                          ; 7D 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_51C8                          ; EB 03
;   [conditional branch target (if/else)] L_51C5
L_51C5:
        mov     ax, word ptr [bp - 0x64]        ; 8B 46 9C
;   [unconditional branch target] L_51C8
L_51C8:
        mov     word ptr [0x376], ax            ; A3 76 03
;   [conditional branch target (if/else)] L_51CB
L_51CB:
        mov     ax, word ptr [0x376]            ; A1 76 03
        add     ax, word ptr [0x464]            ; 03 06 64 04
        mov     word ptr [0x5ec], ax            ; A3 EC 05
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A E6 51 00 00 [FIXUP]
        mov     word ptr [0x44e], ax            ; A3 4E 04
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A F2 51 00 00 [FIXUP]
        mov     word ptr [0x456], ax            ; A3 56 04
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A FE 51 00 00 [FIXUP]
        mov     word ptr [0x22e], ax            ; A3 2E 02
        mov     ax, 0x15                        ; B8 15 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x5f2], ax            ; A3 F2 05
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A DA 51 00 00 [FIXUP]
        mov     word ptr [0x222], ax            ; A3 22 02
        push    word ptr [0x62]                 ; FF 36 62 00
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        lea     ax, [bp - 0x60]                 ; 8D 46 A0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETOBJECT               ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x5e]        ; 8B 46 A2
        mov     word ptr [0x30a], ax            ; A3 0A 03
        mov     ax, word ptr [bp - 0x5c]        ; 8B 46 A4
        mov     word ptr [0x30e], ax            ; A3 0E 03
        mov     ax, word ptr [0x456]            ; A1 56 04
        shl     ax, 1                           ; D1 E0
        mov     word ptr [bp - 0x64], ax        ; 89 46 9C
        mov     ax, word ptr [0x376]            ; A1 76 03
        add     ax, word ptr [0x5ec]            ; 03 06 EC 05
        mov     word ptr [bp - 0x66], ax        ; 89 46 9A
        mov     ax, word ptr [bp - 0x64]        ; 8B 46 9C
        add     ax, word ptr [0x222]            ; 03 06 22 02
        mov     word ptr [bp - 0x68], ax        ; 89 46 98
        mov     ax, word ptr [bp - 0x66]        ; 8B 46 9A
        cmp     word ptr [bp - 0x68], ax        ; 39 46 98
        jl      L_5256                          ; 7C 03
        mov     ax, word ptr [bp - 0x68]        ; 8B 46 98
;   [conditional branch target (if/else)] L_5256
L_5256:
        mov     word ptr [0x240], ax            ; A3 40 02
        mov     ax, word ptr [0x5ec]            ; A1 EC 05
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0x456]            ; 03 06 56 04
        add     ax, word ptr [0x376]            ; 03 06 76 03
        mov     word ptr [0x264], ax            ; A3 64 02
        mov     ax, word ptr [0x456]            ; A1 56 04
        sub     ax, word ptr [0x2f4]            ; 2B 06 F4 02
        mov     word ptr [bp - 0x6a], ax        ; 89 46 96
        or      ax, ax                          ; 0B C0
        jg      L_5279                          ; 7F 02
        sub     ax, ax                          ; 2B C0
;   [conditional branch target (if/else)] L_5279
L_5279:
        mov     cx, ax                          ; 8B C8
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [0x456]                ; F7 2E 56 04
        mov     dx, ax                          ; 8B D0
        mov     ax, cx                          ; 8B C1
        add     ax, dx                          ; 03 C2
        add     ax, word ptr [0x464]            ; 03 06 64 04
        mov     cx, 6                           ; B9 06 00
        imul    cx                              ; F7 E9
        add     ax, word ptr [0x456]            ; 03 06 56 04
        mov     word ptr [0x260], ax            ; A3 60 02
        inc     word ptr [0x260]                ; FF 06 60 02
        mov     ax, word ptr [0x264]            ; A1 64 02
        add     ax, word ptr [0x260]            ; 03 06 60 02
        mov     word ptr [0x242], ax            ; A3 42 02
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [0x5ec]                ; F7 2E EC 05
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        mov     ax, word ptr [0x240]            ; A1 40 02
        add     ax, word ptr [0x242]            ; 03 06 42 02
        mov     word ptr [0x2e4], ax            ; A3 E4 02
        add     ax, word ptr [bp - 0x36]        ; 03 46 CA
        add     ax, word ptr [bp - 0x64]        ; 03 46 9C
        add     ax, word ptr [0x376]            ; 03 06 76 03
        add     ax, word ptr [0x456]            ; 03 06 56 04
        mov     word ptr [0x44c], ax            ; A3 4C 04
        mov     ax, word ptr [0x45e]            ; A1 5E 04
        add     ax, 0x2c                        ; 05 2C 00
        imul    word ptr [0x462]                ; F7 2E 62 04
        add     ax, word ptr [0x44e]            ; 03 06 4E 04
        add     ax, word ptr [0x30a]            ; 03 06 0A 03
        add     ax, word ptr [0x22e]            ; 03 06 2E 02
        mov     word ptr [bp - 0x6c], ax        ; 89 46 94
        mov     ax, word ptr [0x224]            ; A1 24 02
        add     ax, word ptr [0x45e]            ; 03 06 5E 04
        add     ax, 4                           ; 05 04 00
        imul    word ptr [0x462]                ; F7 2E 62 04
        mov     cx, ax                          ; 8B C8
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [0x44e]                ; F7 2E 4E 04
        add     cx, ax                          ; 03 C8
        mov     ax, word ptr [0x5f2]            ; A1 F2 05
        shl     ax, 1                           ; D1 E0
        add     cx, ax                          ; 03 C8
        mov     word ptr [bp - 0x6e], cx        ; 89 4E 92
        mov     ax, word ptr [bp - 0x6c]        ; 8B 46 94
        cmp     cx, ax                          ; 3B C8
        jle     L_5312                          ; 7E 04
        mov     ax, cx                          ; 8B C1
        jmp     L_5315                          ; EB 03
;   [conditional branch target (if/else)] L_5312
L_5312:
        mov     ax, word ptr [bp - 0x6c]        ; 8B 46 94
;   [unconditional branch target] L_5315
L_5315:
        mov     word ptr [0x444], ax            ; A3 44 04
        mov     cx, word ptr [0x44e]            ; 8B 0E 4E 04
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        mov     word ptr [0x236], ax            ; A3 36 02
        sub     ax, word ptr [0x22e]            ; 2B 06 2E 02
        add     ax, word ptr [0x44e]            ; 03 06 4E 04
        mov     word ptr [0x238], ax            ; A3 38 02
        mov     ax, word ptr [0x45e]            ; A1 5E 04
        add     ax, 0x2d                        ; 05 2D 00
        imul    word ptr [0x462]                ; F7 2E 62 04
        add     ax, word ptr [0x44e]            ; 03 06 4E 04
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        mov     ax, word ptr [0x45e]            ; A1 5E 04
        inc     ax                              ; 40
        inc     ax                              ; 40
        imul    word ptr [0x462]                ; F7 2E 62 04
        mov     word ptr [0x5ee], ax            ; A3 EE 05
        add     ax, word ptr [0x5f2]            ; 03 06 F2 05
        mov     word ptr [0x244], ax            ; A3 44 02
        add     ax, word ptr [0x44e]            ; 03 06 4E 04
        mov     word ptr [0x392], ax            ; A3 92 03
        add     ax, word ptr [0x5f2]            ; 03 06 F2 05
        mov     word ptr [0x2f6], ax            ; A3 F6 02
        add     ax, word ptr [0x462]            ; 03 06 62 04
        mov     word ptr [0x446], ax            ; A3 46 04
        mov     ax, word ptr [0x462]            ; A1 62 04
        mov     word ptr [0x30c], ax            ; A3 0C 03
        add     ax, word ptr [0x30a]            ; 03 06 0A 03
        add     ax, word ptr [0x462]            ; 03 06 62 04
        mov     word ptr [0x24e], ax            ; A3 4E 02
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [0x462]                ; F7 2E 62 04
        add     ax, word ptr [0x24e]            ; 03 06 4E 02
        mov     word ptr [0x45a], ax            ; A3 5A 04
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [0x462]                ; F7 2E 62 04
        add     ax, word ptr [0x45a]            ; 03 06 5A 04
        mov     word ptr [0x452], ax            ; A3 52 04
        mov     cx, ax                          ; 8B C8
        mov     ax, 0x28                        ; B8 28 00
        imul    word ptr [0x462]                ; F7 2E 62 04
        add     cx, ax                          ; 03 C8
        add     cx, word ptr [0x44e]            ; 03 0E 4E 04
        mov     word ptr [0x378], cx            ; 89 0E 78 03
        mov     di, word ptr [0x242]            ; 8B 3E 42 02
        mov     ax, word ptr [0x456]            ; A1 56 04
        shl     ax, 1                           ; D1 E0
        sub     di, ax                          ; 2B F8
        sub     di, word ptr [0x376]            ; 2B 3E 76 03
        mov     ax, di                          ; 8B C7
        cdq                                     ; 99
        mov     cx, word ptr [0x5ec]            ; 8B 0E EC 05
        idiv    cx                              ; F7 F9
        mov     word ptr [0x274], ax            ; A3 74 02
        dec     ax                              ; 48
        mov     word ptr [0x448], ax            ; A3 48 04
        mov     ax, di                          ; 8B C7
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     ax, dx                          ; 8B C2
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        inc     ax                              ; 40
        mov     word ptr [0x458], ax            ; A3 58 04
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0x274]            ; A1 74 02
        imul    word ptr [0x5ec]                ; F7 2E EC 05
        add     cx, ax                          ; 03 C8
        mov     word ptr [0x37a], cx            ; 89 0E 7A 03
        mov     ax, 0xb9                        ; B8 B9 00
        push    ds                              ; 1E
        ;   ^ arg lpszClassName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszClassName (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpszWindowName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszWindowName (low/offset)
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwStyle (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwStyle (low/offset)
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, word ptr [0x456]            ; A1 56 04
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0x44c]            ; 03 06 4C 04
        push    ax                              ; 50
        ;   ^ arg nHeight
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hWndParent
        push    ax                              ; 50
        ;   ^ arg hMenu
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        push    ax                              ; 50
        ;   ^ arg lpParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpParam (low/offset)
        ; --> CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
        call    far USER.CREATEWINDOW           ; 9A 46 54 00 00 [FIXUP]
        mov     word ptr [0x262], ax            ; A3 62 02
        or      ax, ax                          ; 0B C0
        jne     L_541B                          ; 75 06
        mov     ax, 2                           ; B8 02 00
        jmp     L_5037                          ; E9 1C FC
;   [conditional branch target (if/else)] L_541B
L_541B:
        mov     ax, 0xc4                        ; B8 C4 00
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     dx, 0x4080                      ; BA 80 40
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0501                          ; E8 D5 B0
        push    ax                              ; 50
        call    L_054F                          ; E8 1F B1
        push    ax                              ; 50
        push    word ptr [0x444]                ; FF 36 44 04
        push    word ptr [0x44c]                ; FF 36 4C 04
        push    word ptr [0x262]                ; FF 36 62 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    ax                              ; 50
        push    ax                              ; 50
        ; --> CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
        call    far USER.CREATEWINDOW           ; 9A 80 54 00 00 [FIXUP]
        mov     word ptr [0x266], ax            ; A3 66 02
        or      ax, ax                          ; 0B C0
        jne     L_545D                          ; 75 0C
;   [loop start] L_5451
L_5451:
        push    word ptr [0x262]                ; FF 36 62 02
        ;   ^ arg hWnd
        ; --> DESTROYWINDOW(HWND hWnd) -> BOOL
        call    far USER.DESTROYWINDOW          ; 9A 42 4F 00 00 [FIXUP]
        jmp     L_4FCA                          ; E9 6D FB
;   [conditional branch target (if/else)] L_545D
L_545D:
        mov     ax, 0xce                        ; B8 CE 00
        push    ds                              ; 1E
        ;   ^ arg lpszClassName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszClassName (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpszWindowName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszWindowName (low/offset)
        mov     dx, 0x4000                      ; BA 00 40
        push    dx                              ; 52
        ;   ^ arg dwStyle (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwStyle (low/offset)
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0x236]                ; FF 36 36 02
        ;   ^ arg nWidth
        push    word ptr [0x240]                ; FF 36 40 02
        ;   ^ arg nHeight
        push    word ptr [0x266]                ; FF 36 66 02
        ;   ^ arg hWndParent
        push    ax                              ; 50
        ;   ^ arg hMenu
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        push    ax                              ; 50
        ;   ^ arg lpParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpParam (low/offset)
        ; --> CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x280], ax            ; A3 80 02
        or      ax, ax                          ; 0B C0
        je      L_5451                          ; 74 C6
        mov     ax, 0xd8                        ; B8 D8 00
        push    ds                              ; 1E
        ;   ^ arg lpszClassName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszClassName (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpszWindowName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszWindowName (low/offset)
        mov     dx, 0x4020                      ; BA 20 40
        push    dx                              ; 52
        ;   ^ arg dwStyle (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwStyle (low/offset)
        push    ax                              ; 50
        ;   ^ arg x
        push    word ptr [0x240]                ; FF 36 40 02
        ;   ^ arg y
        mov     ax, word ptr [0x444]            ; A1 44 04
        sub     ax, word ptr [0x44e]            ; 2B 06 4E 04
        push    ax                              ; 50
        ;   ^ arg nWidth
        push    word ptr [0x242]                ; FF 36 42 02
        ;   ^ arg nHeight
        push    word ptr [0x266]                ; FF 36 66 02
        ;   ^ arg hWndParent
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hMenu
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        push    ax                              ; 50
        ;   ^ arg lpParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpParam (low/offset)
        ; --> CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
        call    far USER.CREATEWINDOW           ; 9A 0A 55 00 00 [FIXUP]
        mov     word ptr [0x2dc], ax            ; A3 DC 02
        or      ax, ax                          ; 0B C0
        je      L_5451                          ; 74 8F
        mov     ax, 0xe2                        ; B8 E2 00
        push    ds                              ; 1E
        ;   ^ arg lpszClassName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszClassName (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpszWindowName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszWindowName (low/offset)
        mov     ax, 4                           ; B8 04 00
        mov     dx, 0x5000                      ; BA 00 50
        push    dx                              ; 52
        ;   ^ arg dwStyle (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwStyle (low/offset)
        mov     ax, word ptr [0x236]            ; A1 36 02
        sub     ax, word ptr [bp - 0x30]        ; 2B 46 D0
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [0x23c], ax            ; A3 3C 02
        push    ax                              ; 50
        ;   ^ arg x
        mov     ax, word ptr [0x44c]            ; A1 4C 04
        sub     ax, word ptr [bp - 0x36]        ; 2B 46 CA
        mov     cx, word ptr [0x456]            ; 8B 0E 56 04
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        mov     word ptr [0x246], ax            ; A3 46 02
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [bp - 0x30]            ; FF 76 D0
        ;   ^ arg nWidth
        push    word ptr [bp - 0x36]            ; FF 76 CA
        ;   ^ arg nHeight
        push    word ptr [0x266]                ; FF 36 66 02
        ;   ^ arg hWndParent
        mov     ax, 0x65                        ; B8 65 00
        push    ax                              ; 50
        ;   ^ arg hMenu
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpParam (low/offset)
        ; --> CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
        call    far USER.CREATEWINDOW           ; 9A 3A 55 00 00 [FIXUP]
        mov     word ptr [0x2e8], ax            ; A3 E8 02
        or      ax, ax                          ; 0B C0
        jne     L_5518                          ; 75 03
        jmp     L_5451                          ; E9 39 FF
;   [conditional branch target (if/else)] L_5518
L_5518:
        mov     ax, 0xe7                        ; B8 E7 00
        push    ds                              ; 1E
        ;   ^ arg lpszClassName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszClassName (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpszWindowName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszWindowName (low/offset)
        mov     dx, 0x4000                      ; BA 00 40
        push    dx                              ; 52
        ;   ^ arg dwStyle (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwStyle (low/offset)
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    ax                              ; 50
        ;   ^ arg nWidth
        push    ax                              ; 50
        ;   ^ arg nHeight
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ;   ^ arg hWndParent
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        ;   ^ arg hMenu
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpParam (low/offset)
        ; --> CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
        call    far USER.CREATEWINDOW           ; 9A 0A 54 00 00 [FIXUP]
        mov     word ptr [0x27a], ax            ; A3 7A 02
        or      ax, ax                          ; 0B C0
        jne     L_5548                          ; 75 03
        jmp     L_5451                          ; E9 09 FF
;   [conditional branch target (if/else)] L_5548
L_5548:
        sub     si, si                          ; 2B F6
;   [loop start] L_554A
L_554A:
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + 0x382], 0xffff   ; C7 87 82 03 FF FF
        inc     si                              ; 46
        cmp     si, 3                           ; 83 FE 03
        jl      L_554A                          ; 7C F0
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A BC 4F 00 00 [FIXUP]
        mov     word ptr [0x5f0], ax            ; A3 F0 05
        mov     ax, 0x250                       ; B8 50 02
        push    ax                              ; 50
        mov     ax, 0x25e                       ; B8 5E 02
        push    ax                              ; 50
        call    far _entry_43                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x250                       ; B8 50 02
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12D6                          ; E8 57 BD
        mov     word ptr [0x25c], ax            ; A3 5C 02
        push    word ptr [0x262]                ; FF 36 62 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SETTIMER               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_55AB                          ; 75 11
        push    word ptr [0x2d0]                ; FF 36 D0 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x1010                      ; B8 10 10
        push    ax                              ; 50
        call    L_31D5                          ; E8 2D DC
        jmp     L_5451                          ; E9 A6 FE
;   [conditional branch target (if/else)] L_55AB
L_55AB:
        push    word ptr [0x262]                ; FF 36 62 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSYSTEMMENU          ; 9A ED 4E 00 00 [FIXUP]
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x900                       ; B8 00 09
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [0x2ba]            ; A1 BA 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A C9 55 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 2            ; 83 7E 06 02
        jne     L_55F0                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_55F2                          ; EB 02
;   [conditional branch target (if/else)] L_55F0
L_55F0:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_55F2
L_55F2:
        mov     word ptr [0x2ec], ax            ; A3 EC 02
        call    L_06E0                          ; E8 E8 B0
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_560A                          ; 75 09
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_416C                          ; E8 64 EB
        jmp     L_5623                          ; EB 19
;   [conditional branch target (if/else)] L_560A
L_560A:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg lpszFileName (high/segment)
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lpszFileName (low/offset)
        mov     ax, 0x46c                       ; B8 6C 04
        push    ds                              ; 1E
        ;   ^ arg lpReOpenBuff (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpReOpenBuff (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
        call    far KERNEL.OPENFILE             ; 9A E6 40 00 00 [FIXUP]
        mov     word ptr [0x382], ax            ; A3 82 03
        call    L_4234                          ; E8 11 EC
;   [unconditional branch target] L_5623
L_5623:
        cmp     word ptr [0x2ec], 0             ; 83 3E EC 02 00
        je      L_5636                          ; 74 0C
        mov     ax, word ptr [0x27a]            ; A1 7A 02
        mov     word ptr [0x50], ax             ; A3 50 00
        mov     word ptr [0x2ec], 0             ; C7 06 EC 02 00 00
;   [conditional branch target (if/else)] L_5636
L_5636:
        push    word ptr [0x262]                ; FF 36 62 02
        ;   ^ arg hWnd
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg nCmdShow
        ; --> SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
        call    far USER.SHOWWINDOW             ; 9A 54 56 00 00 [FIXUP]
        push    word ptr [0x262]                ; FF 36 62 02
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A 5D 56 00 00 [FIXUP]
        push    word ptr [0x266]                ; FF 36 66 02
        ;   ^ arg hWnd
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nCmdShow
        ; --> SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
        call    far USER.SHOWWINDOW             ; 9A 6A 56 00 00 [FIXUP]
        push    word ptr [0x266]                ; FF 36 66 02
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A 73 56 00 00 [FIXUP]
        push    word ptr [0x280]                ; FF 36 80 02
        ;   ^ arg hWnd
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nCmdShow
        ; --> SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
        call    far USER.SHOWWINDOW             ; 9A 80 56 00 00 [FIXUP]
        push    word ptr [0x280]                ; FF 36 80 02
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A 89 56 00 00 [FIXUP]
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ;   ^ arg hWnd
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nCmdShow
        ; --> SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
        call    far USER.SHOWWINDOW             ; 9A 59 18 00 00 [FIXUP]
        push    word ptr [0x2dc]                ; FF 36 DC 02
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A 0C 45 00 00 [FIXUP]
        push    word ptr [0x2e8]                ; FF 36 E8 02
        ;   ^ arg hWnd
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nCmdShow
        ; --> SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
        call    far USER.SHOWWINDOW             ; 9A 3E 56 00 00 [FIXUP]
        push    word ptr [0x2e8]                ; FF 36 E8 02
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A 47 56 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_56A6
L_56A6:
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around LOCALALLOC(wFlags, wBytes) -> HANDLE.

;-------------------------------------------------------------------------
; sub_56A7   offset=0x56A7  size=20 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_56A7
L_56A7:
        call    L_57CD                          ; E8 23 01
        add     word ptr [bx + si], ax          ; 01 00
        sub     si, si                          ; 2B F6
;   [loop start] L_56AE
L_56AE:
        ; constant BLACKNESS
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, 0x800                       ; B8 00 08
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A 62 55 00 00 [FIXUP]
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + 0x304], ax       ; 89 87 04 03
        or      ax, ax                          ; 0B C0
        jne     L_56CB                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_56D4                          ; EB 09
;   [conditional branch target (if/else)] L_56CB
L_56CB:
        inc     si                              ; 46
        cmp     si, 3                           ; 83 FE 03
        jl      L_56AE                          ; 7C DD
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_56D4
L_56D4:
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HANDLE    (1 use)

; Description (heuristic):
;   Mixed routine using: LOADBITMAP.

;-------------------------------------------------------------------------
; sub_56D5   offset=0x56D5  size=35 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   LOADBITMAP(HANDLE hInstance, LPSTR lpszBitmap) -> HBITMAP
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_56D5
L_56D5:
        call    L_57CD                          ; E8 F5 00
        add     byte ptr [bx + di], al          ; 00 01
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg lpszBitmap (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszBitmap (low/offset)
        ; --> LOADBITMAP(HANDLE hInstance, LPSTR lpszBitmap) -> HBITMAP
        call    far USER.LOADBITMAP             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x62], ax             ; A3 62 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hInstance
        mov     ax, 0x7ffa                      ; B8 FA 7F
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg lpszBitmap (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszBitmap (low/offset)
        ; --> LOADBITMAP(HANDLE hInstance, LPSTR lpszBitmap) -> HBITMAP
        call    far USER.LOADBITMAP             ; 9A 06 57 00 00 [FIXUP]
        mov     word ptr [0x5e], ax             ; A3 5E 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hInstance
        mov     ax, 0x7ffb                      ; B8 FB 7F
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg lpszBitmap (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszBitmap (low/offset)
        ; --> LOADBITMAP(HANDLE hInstance, LPSTR lpszBitmap) -> HBITMAP
        call    far USER.LOADBITMAP             ; 9A E4 56 00 00 [FIXUP]
        mov     word ptr [0x60], ax             ; A3 60 00
        cmp     word ptr [0x62], 0              ; 83 3E 62 00 00
        je      L_5724                          ; 74 10
        cmp     word ptr [0x5e], 0              ; 83 3E 5E 00 00
        je      L_5724                          ; 74 09
        or      ax, ax                          ; 0B C0
        je      L_5724                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_5726                          ; EB 02
;   [error/early exit] L_5724
L_5724:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_5726
L_5726:
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around DELETEOBJECT(hObj) -> BOOL.

;-------------------------------------------------------------------------
; sub_5727   offset=0x5727  size=15 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   DELETEOBJECT(HANDLE hObj) -> BOOL
;
; Near calls (internal): L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_5727
L_5727:
        call    L_57CD                          ; E8 A3 00
        add     byte ptr [bx + si], al          ; 00 00
        cmp     word ptr [0x62], 0              ; 83 3E 62 00 00
        je      L_573C                          ; 74 09
        push    word ptr [0x62]                 ; FF 36 62 00
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A 48 57 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_573C
L_573C:
        cmp     word ptr [0x5e], 0              ; 83 3E 5E 00 00
        je      L_574C                          ; 74 09
        push    word ptr [0x5e]                 ; FF 36 5E 00
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A 58 57 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_574C
L_574C:
        cmp     word ptr [0x60], 0              ; 83 3E 60 00 00
        je      L_575C                          ; 74 09
        push    word ptr [0x60]                 ; FF 36 60 00
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A 22 0C 00 00 [FIXUP]
;   [error/early exit] L_575C
L_575C:
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around DELETEDC(hDC) -> BOOL.

;-------------------------------------------------------------------------
; sub_575D   offset=0x575D  size=15 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   DELETEDC(HDC hDC) -> BOOL
;
; Near calls (internal): L_0C11, L_5727, L_57CD
;-------------------------------------------------------------------------
;   [sub-routine] L_575D
L_575D:
        call    L_57CD                          ; E8 6D 00
        add     byte ptr [bx + di], al          ; 00 01
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, ax                          ; 0B C0
        je      L_577F                          ; 74 16
        cmp     ax, 1                           ; 3D 01 00
        je      L_577C                          ; 74 0E
        cmp     ax, 2                           ; 3D 02 00
        jne     L_5782                          ; 75 0F
        push    word ptr [0x5c]                 ; FF 36 5C 00
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 50 4E 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_577C
L_577C:
        call    L_5727                          ; E8 A8 FF
;   [conditional branch target (if/else)] L_577F
L_577F:
        call    L_0C11                          ; E8 8F B4
;   [error/early exit] L_5782
L_5782:
        sub     ax, ax                          ; 2B C0
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (15 instructions).

;-------------------------------------------------------------------------
; sub_5785   offset=0x5785  size=15 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=3)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_5785
L_5785:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        mov     ah, 0x41                        ; B4 41
        int     0x21                            ; CD 21
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jae     L_5798                          ; 73 02
        xor     ax, ax                          ; 33 C0
;   [error/early exit] L_5798
L_5798:
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Internal helper (18 instructions).

;-------------------------------------------------------------------------
; sub_57A0   offset=0x57A0  size=18 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=3)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_57A0
L_57A0:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     ah, 0x56                        ; B4 56
        int     0x21                            ; CD 21
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jae     L_57B8                          ; 73 02
        xor     ax, ax                          ; 33 C0
;   [error/early exit] L_57B8
L_57B8:
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Internal helper (9 instructions).

;-------------------------------------------------------------------------
; sub_57C0   offset=0x57C0  size=9 instr  segment=seg3.asm
;
; Classification (pass8): asm_medium  (score C=3, ASM=6)
; Prologue: saves_regs     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_57C0
L_57C0:
        push    si                              ; 56
        push    di                              ; 57
        mov     ah, 0x19                        ; B4 19
        int     0x21                            ; CD 21
        add     al, 0x41                        ; 04 41
        mov     ah, 0                           ; B4 00
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (97 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_57CD   offset=0x57CD  size=97 instr  segment=seg3.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_57CD
L_57CD:
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
;   [loop start] L_57F4
L_57F4:
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
        mov     bx, 0x142                       ; BB 42 01
        push    bx                              ; 53
        jmp     L_57F4                          ; EB C4
        mov     bx, 0x2c63                      ; BB 63 2C
        push    bx                              ; 53
        jmp     L_57F4                          ; EB BE
        mov     bx, 0x4975                      ; BB 75 49
        push    bx                              ; 53
        jmp     L_57F4                          ; EB B8
        mov     bx, 0x279f                      ; BB 9F 27
        push    bx                              ; 53
        jmp     L_57F4                          ; EB B2
        mov     bx, 0x2d87                      ; BB 87 2D
        push    bx                              ; 53
        jmp     L_57F4                          ; EB AC
        mov     bx, 0x2e0f                      ; BB 0F 2E
        push    bx                              ; 53
        jmp     L_57F4                          ; EB A6
        mov     bx, 0x2ef6                      ; BB F6 2E
        push    bx                              ; 53
        jmp     L_57F4                          ; EB A0
        mov     bx, 0x302d                      ; BB 2D 30
        push    bx                              ; 53
        jmp     L_57F4                          ; EB 9A
        mov     bx, 0x31a2                      ; BB A2 31
        push    bx                              ; 53
        jmp     L_57F4                          ; EB 94
        mov     bx, 0x463f                      ; BB 3F 46
        push    bx                              ; 53
        jmp     L_57F4                          ; EB 8E
        mov     bx, 0x4ebc                      ; BB BC 4E
        push    bx                              ; 53
        jmp     L_57F4                          ; EB 88
        mov     bx, 0x4e5b                      ; BB 5B 4E
        push    bx                              ; 53
        jmp     L_57F4                          ; EB 82

CALENDAR_TEXT ENDS

        END
