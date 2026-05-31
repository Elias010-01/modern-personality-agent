; ======================================================================
; CARDFILE / seg1.asm   (segment 1 of CARDFILE)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         8
; Total instructions:                  381
; 
; Classification (pass8):
;   C-origin (high+medium):              1
;   ASM-origin (high+medium):            2
;   Unclear:                             5
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     21 (21 unique)
;   Top:
;        1  FATALEXIT
;        1  INITTASK
;        1  WAITEVENT
;        1  DISPATCHMESSAGE
;        1  GETDC
;        1  GETMESSAGE
;        1  INITAPP
;        1  ISWINDOW
; ======================================================================
; AUTO-GENERATED from original CARDFILE segment 1
; segment_size=885 bytes, flags=0x0140
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

CARDFILE_TEXT SEGMENT BYTE PUBLIC 'CODE'

; Description (heuristic):
;   Mixed routine using: FATALEXIT, INITTASK, WAITEVENT (+10 more).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0000   offset=0x0000  size=137 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=6, ASM=5)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   FATALEXIT
;   INITTASK
;   WAITEVENT
;   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
;   GETDC(HWND hWnd) -> HDC
;   GETMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax) -> BOOL
;   INITAPP
;   ISWINDOW
;   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
;   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   TRANSLATEACCELERATOR
;   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
;
; Near calls (internal): L_026E, L_0300
;-------------------------------------------------------------------------
L_0000:
        ;   = cProc <20> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x14                        ; 83 EC 14
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [0x16e], ax            ; A3 6E 01
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_001E                          ; 75 0C
        call    far _entry_35                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0029                          ; 75 0E
        jmp     L_00DF                          ; E9 C1 00
;   [conditional branch target (if/else)] L_001E
L_001E:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_34                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
;   [conditional branch target (if/else)] L_0029
L_0029:
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _entry_33                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 8                           ; 83 C4 08
        or      ax, ax                          ; 0B C0
        jne     L_0044                          ; 75 03
        jmp     L_00DF                          ; E9 9B 00
;   [loop start (also forward branch)] L_0044
L_0044:
        push    word ptr [0x29a]                ; FF 36 9A 02
        call    far USER.ISWINDOW               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_009C                          ; 74 4B
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        push    word ptr [0x29a]                ; FF 36 9A 02
        ;   ^ arg hWnd
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        ;   ^ arg wMsgFilterMin
        mov     ax, 0x107                       ; B8 07 01
        push    ax                              ; 50
        ;   ^ arg wMsgFilterMax
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wRemoveMsg
        ; --> PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
        call    far USER.PEEKMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_009C                          ; 75 2E
        cmp     word ptr [0x84], 0              ; 83 3E 84 00 00
        je      L_009C                          ; 74 27
        push    word ptr [0x29a]                ; FF 36 9A 02
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        push    word ptr [0x29a]                ; FF 36 9A 02
        ;   ^ arg hWnd
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x84], 0              ; C7 06 84 00 00 00
;   [conditional branch target (if/else)] L_009C
L_009C:
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
        ; --> GETMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax) -> BOOL
        call    far USER.GETMESSAGE             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_00F4                          ; 74 45
        push    word ptr [0x286]                ; FF 36 86 02
        push    word ptr [0x454]                ; FF 36 54 04
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.TRANSLATEACCELERATOR   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_00C8                          ; 74 03
        jmp     L_0044                          ; E9 7C FF
;   [conditional branch target (if/else)] L_00C8
L_00C8:
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
        jmp     L_0044                          ; E9 65 FF
;   [unconditional branch target] L_00DF
L_00DF:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hWndOwner
        mov     ax, 0x1c0                       ; B8 C0 01
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpszTitle (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTitle (low/offset)
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_00F4
L_00F4:
        sub     ax, ax                          ; 2B C0
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        pop     bx                              ; 5B
        sub     ax, sp                          ; 2B C4
        jae     L_011D                          ; 73 18
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_011D                          ; 77 0F
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_0119                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
;   [conditional branch target (if/else)] L_0119
L_0119:
        mov     sp, ax                          ; 8B E0
        jmp     bx                              ; FF E3
;   [conditional branch target (if/else)] L_011D
L_011D:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
        call    far KERNEL.INITTASK             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0160                          ; 74 2B
        mov     word ptr [0xfe], 0              ; C7 06 FE 00 00 00
        mov     word ptr [0xf0], cx             ; 89 0E F0 00
        push    di                              ; 57
        push    si                              ; 56
        push    es                              ; 06
        push    bx                              ; 53
        push    dx                              ; 52
        call    L_026E                          ; E8 27 01
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far KERNEL.WAITEVENT            ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        call    far USER.INITAPP                ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0160                          ; 74 07
        call    0                               ; E8 A4 FE
        push    ax                              ; 50
        call    L_0300                          ; E8 A0 01
;   [conditional branch target (if/else)] L_0160
L_0160:
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
; sub_0165   offset=0x0165  size=130 instr  segment=seg1.asm
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
; Near calls (internal): L_0310
;-------------------------------------------------------------------------
;   [sub-routine] L_0165
L_0165:
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
        call    far KERNEL.LOCALALLOC           ; 9A 97 01 00 00 [FIXUP]
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
        call    far KERNEL.LOCALALLOC           ; 9A CE 01 00 00 [FIXUP]
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
        call    far KERNEL.LOCALFREE            ; 9A DD 01 00 00 [FIXUP]
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
        call    far KERNEL.LOCALSIZE            ; 9A 46 02 00 00 [FIXUP]
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
        je      L_0253                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0255                          ; EB 02
;   [error/early exit] L_0253
L_0253:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_0255
L_0255:
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
        call    L_0310                          ; E8 A6 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (59 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_026E   offset=0x026E  size=59 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=1, ASM=7)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_026E
L_026E:
        mov     bx, 0x14e                       ; BB 4E 01
;   [loop start] L_0271
L_0271:
        cmp     bx, 0x154                       ; 81 FB 54 01
        jae     L_027F                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_0271                          ; EB F2
;   [error/early exit] L_027F
L_027F:
        ret                                     ; C3
        mov     bx, 4                           ; BB 04 00
;   [loop start] L_0283
L_0283:
        mov     ax, 0x4400                      ; B8 00 44
        int     0x21                            ; CD 21
        jb      L_0294                          ; 72 0A
        test    dl, 0x80                        ; F6 C2 80
        je      L_0294                          ; 74 05
        or      byte ptr [bx + 0x122], 0x40     ; 80 8F 22 01 40
;   [conditional branch target (if/else)] L_0294
L_0294:
        dec     bx                              ; 4B
        jns     L_0283                          ; 79 EC
        ret                                     ; C3
        mov     ah, 0x30                        ; B4 30
        int     0x21                            ; CD 21
        mov     word ptr [0x104], ax            ; A3 04 01
        ret                                     ; C3
        mov     es, word ptr [0xfe]             ; 8E 06 FE 00
        mov     si, word ptr es:[0x2c]          ; 26 8B 36 2C 00
        mov     ax, 0x3500                      ; B8 00 35
        int     0x21                            ; CD 21
        mov     word ptr [0xf2], bx             ; 89 1E F2 00
        mov     word ptr [0xf4], es             ; 8C 06 F4 00
        push    cs                              ; 0E
        pop     ds                              ; 1F
        mov     ax, 0x2500                      ; B8 00 25
        mov     dx, 0x120                       ; BA 20 01
        int     0x21                            ; CD 21
        mov     cx, word ptr ss:[0x144]         ; 36 8B 0E 44 01
        jcxz    L_02E9                          ; E3 22
        lds     ax, ptr ss:[0x146]              ; 36 C5 06 46 01
        mov     dx, ds                          ; 8C DA
        xor     bx, bx                          ; 33 DB
        lcall   ss:[0x142]                      ; 36 FF 1E 42 01
        jae     L_02DA                          ; 73 03
        jmp     L_0123                          ; E9 49 FE
;   [conditional branch target (if/else)] L_02DA
L_02DA:
        lds     ax, ptr ss:[0x14a]              ; 36 C5 06 4A 01
        mov     dx, ds                          ; 8C DA
        ; constant WM_MOVE
        mov     bx, 3                           ; BB 03 00
        lcall   ss:[0x142]                      ; 36 FF 1E 42 01
;   [conditional branch target (if/else)] L_02E9
L_02E9:
        push    ss                              ; 16
        pop     ds                              ; 1F
        ret                                     ; C3
        mov     cx, 0x14                        ; B9 14 00
        xor     bx, bx                          ; 33 DB
;   [loop iteration target] L_02F1
L_02F1:
        test    byte ptr [bx + 0x122], 1        ; F6 87 22 01 01
        je      L_02FC                          ; 74 04
        mov     ah, 0x3e                        ; B4 3E
        int     0x21                            ; CD 21
;   [conditional branch target (if/else)] L_02FC
L_02FC:
        inc     bx                              ; 43
        loop    L_02F1                          ; E2 F2
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (8 instructions).

;-------------------------------------------------------------------------
; sub_0300   offset=0x0300  size=8 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Near calls (internal): L_031B, L_0351
;-------------------------------------------------------------------------
;   [sub-routine] L_0300
L_0300:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_0351                          ; E8 4B 00
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_031B                          ; E8 0F 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (6 instructions).

;-------------------------------------------------------------------------
; sub_0310   offset=0x0310  size=6 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0310
L_0310:
        xor     ch, ch                          ; 32 ED
        jcxz    L_031A                          ; E3 06
;   [loop iteration target] L_0314
L_0314:
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        loop    L_0314                          ; E2 FA
;   [error/early exit] L_031A
L_031A:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (21 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_031B   offset=0x031B  size=21 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=4, ASM=5)
; Prologue: standard_bp     Epilogue: unknown
;
; Near calls (internal): L_0165, L_0363
;-------------------------------------------------------------------------
;   [sub-routine] L_031B
L_031B:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_0363                          ; E8 42 00
        call    L_0165                          ; E8 41 FE
        or      ah, ah                          ; 0A E4
        je      L_0332                          ; 74 0A
        cmp     byte ptr [bp + 4], 0            ; 80 7E 04 00
        jne     L_0332                          ; 75 04
        mov     byte ptr [bp + 4], 0xfe         ; C6 46 04 FE
;   [conditional branch target (if/else)] L_0332
L_0332:
        push    ds                              ; 1E
        lds     dx, ptr [0xf2]                  ; C5 16 F2 00
        mov     ax, 0x2500                      ; B8 00 25
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     cx, word ptr [0x144]            ; 8B 0E 44 01
        jcxz    L_034A                          ; E3 07
        mov     bx, 2                           ; BB 02 00
        lcall   [0x142]                         ; FF 1E 42 01
;   [conditional branch target (if/else)] L_034A
L_034A:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     ah, 0x4c                        ; B4 4C
        int     0x21                            ; CD 21
; Description (heuristic):
;   Internal helper (10 instructions).

;-------------------------------------------------------------------------
; sub_0351   offset=0x0351  size=10 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0351
L_0351:
        mov     bx, 0x154                       ; BB 54 01
;   [loop start] L_0354
L_0354:
        cmp     bx, 0x154                       ; 81 FB 54 01
        jae     L_0362                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_0354                          ; EB F2
;   [error/early exit] L_0362
L_0362:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (10 instructions).

;-------------------------------------------------------------------------
; sub_0363   offset=0x0363  size=10 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0363
L_0363:
        mov     bx, 0x154                       ; BB 54 01
;   [loop start] L_0366
L_0366:
        cmp     bx, 0x156                       ; 81 FB 56 01
        jae     L_0374                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_0366                          ; EB F2
;   [error/early exit] L_0374
L_0374:
        ret                                     ; C3

CARDFILE_TEXT ENDS

        END
