; ======================================================================
; XER4020 / seg2.asm   (segment 2 of XER4020)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        15
; Total instructions:                 1870
; 
; Classification (pass8):
;   C-origin (high+medium):             15
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     22 (16 unique)
;   Top:
;        3  GLOBALUNLOCK
;        2  LSTRCPY
;        2  GLOBALFREE
;        2  GLOBALLOCK
;        2  GLOBALALLOC
;        1  GETENVIRONMENT
;        1  LSTRCMP
;        1  FINDRESOURCE
; ======================================================================
; AUTO-GENERATED from original XER4020 segment 2
; segment_size=5620 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

XER4020_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [0x202], 0             ; 83 3E 02 02 00
        je      L_0019                          ; 74 05
;   [loop start] L_0014
L_0014:
        sub     ax, ax                          ; 2B C0
        jmp     L_00ED                          ; E9 D4 00
;   [conditional branch target (if/else)] L_0019
L_0019:
        mov     word ptr [0x202], 1             ; C7 06 02 02 01 00
        mov     ax, 0x1d6                       ; B8 D6 01
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg lpszSrc (high/segment)
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 90 00 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x1d6                       ; B8 D6 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2c                        ; B8 2C 00
        push    ax                              ; 50
        call    far GDI.GETENVIRONMENT          ; 9A E7 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_004C                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_004E                          ; EB 02
;   [conditional branch target (if/else)] L_004C
L_004C:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_004E
L_004E:
        or      ax, ax                          ; 0B C0
        jne     L_0066                          ; 75 14
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg lpsz1 (high/segment)
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, 0x1d6                       ; B8 D6 01
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0094                          ; 74 2E
;   [conditional branch target (if/else)] L_0066
L_0066:
        mov     word ptr [0x1f6], 0xa           ; C7 06 F6 01 0A 00
        mov     word ptr [0x1fc], 0x10          ; C7 06 FC 01 10 00
        mov     word ptr [0x1fa], 0x14          ; C7 06 FA 01 14 00
        mov     word ptr [0x200], 0x1e          ; C7 06 00 02 1E 00
        mov     word ptr [0x1fe], 0x28          ; C7 06 FE 01 28 00
        mov     ax, 0x1d6                       ; B8 D6 01
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg lpszSrc (high/segment)
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0094
L_0094:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        mov     ax, 0x1ce                       ; B8 CE 01
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
        jne     L_00BA                          ; 75 09
        mov     word ptr [0x202], 0             ; C7 06 02 02 00 00
        jmp     L_0014                          ; E9 5A FF
;   [conditional branch target (if/else)] L_00BA
L_00BA:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x1d6                       ; B8 D6 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2c                        ; B8 2C 00
        push    ax                              ; 50
        call    far GDI.SETENVIRONMENT          ; 9A FF FF 00 00 [FIXUP]
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
        mov     word ptr [0x202], 0             ; C7 06 02 02 00 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_00ED
L_00ED:
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
        sub     sp, 0x3c                        ; 83 EC 3C
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0119                          ; 74 0B
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_0116                          ; 75 03
        jmp     L_01C9                          ; E9 B3 00
;   [conditional branch target (if/else)] L_0116
L_0116:
        jmp     L_01C4                          ; E9 AB 00
;   [conditional branch target (if/else)] L_0119
L_0119:
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     ax, 0x1d6                       ; B8 D6 01
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ds           ; 8C 5E FC
        jmp     L_012C                          ; EB 03
;   [loop start] L_0129
L_0129:
        inc     word ptr [bp - 8]               ; FF 46 F8
;   [unconditional branch target] L_012C
L_012C:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        mov     byte ptr [bp + si - 0x3c], al   ; 88 42 C4
        or      al, al                          ; 0A C0
        jne     L_0129                          ; 75 EA
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        lea     ax, [bp + si - 0x3c]            ; 8D 42 C4
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0x32                        ; B8 32 00
        sub     ax, si                          ; 2B C6
        push    ax                              ; 50
        ;   ^ arg cbMax
        ; --> GETWINDOWTEXT(HWND hWnd, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        lea     ax, [bp - 0x3c]                 ; 8D 46 C4
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID
        call    far USER.SETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x1f6]                ; FF 36 F6 01
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 7E 01 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x1fa]                ; FF 36 FA 01
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 8E 01 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x1fc]                ; FF 36 FC 01
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 9E 01 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x200]                ; FF 36 00 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A AE 01 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x1fe]                ; FF 36 FE 01
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        push    word ptr [0x1f6]                ; FF 36 F6 01
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
;   [loop start (also forward branch)] L_01C4
L_01C4:
        sub     ax, ax                          ; 2B C0
        jmp     L_02B4                          ; E9 EB 00
;   [unconditional branch target] L_01C9
L_01C9:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0x2f                        ; 3D 2F 00
        ja      L_01C4                          ; 77 F0
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x251]        ; 2E FF A7 51 02
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x1f6], ax            ; A3 F6 01
        jmp     L_0239                          ; EB 4A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x1fa], ax            ; A3 FA 01
        jmp     L_0239                          ; EB 37
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x1fc], ax            ; A3 FC 01
        jmp     L_0239                          ; EB 24
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        mov     ax, 0x26                        ; B8 26 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x200], ax            ; A3 00 02
        jmp     L_0239                          ; EB 11
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x1fe], ax            ; A3 FE 01
;   [unconditional branch target] L_0239
L_0239:
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01C4                          ; EB 83
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_02B4                          ; EB 63
        inc     cx                              ; 41
        add     al, byte ptr [bx + di + 2]      ; 02 41 02
        les     ax, ptr [bx + di]               ; C4 01
        les     ax, ptr [bx + di]               ; C4 01
        les     ax, ptr [bx + di]               ; C4 01
        les     ax, ptr [bx + di]               ; C4 01
        les     ax, ptr [bx + di]               ; C4 01
        les     ax, ptr [bx + di]               ; C4 01
        les     ax, ptr [bx + di]               ; C4 01
        fadd    qword ptr [bx + di]             ; DC 01
        fadd    qword ptr [bx + di]             ; DC 01
        les     ax, ptr [bx + di]               ; C4 01
        les     ax, ptr [bx + di]               ; C4 01
        les     ax, ptr [bx + di]               ; C4 01
        les     ax, ptr [bx + di]               ; C4 01
        add     al, byte ptr [bp + si]          ; 02 02
        add     al, byte ptr [bp + si]          ; 02 02
        les     ax, ptr [bx + di]               ; C4 01
        les     ax, ptr [bx + di]               ; C4 01
        out     dx, ax                          ; EF
        add     di, bp                          ; 01 EF
        add     di, bp                          ; 01 EF
        add     di, bp                          ; 01 EF
        add     di, bp                          ; 01 EF
        add     sp, ax                          ; 01 C4
        add     sp, ax                          ; 01 C4
        add     sp, ax                          ; 01 C4
        add     sp, ax                          ; 01 C4
        add     sp, ax                          ; 01 C4
        add     word ptr [di], dx               ; 01 15
        add     dl, byte ptr [di]               ; 02 15
        add     dl, byte ptr [di]               ; 02 15
        add     dl, byte ptr [di]               ; 02 15
        add     dl, byte ptr [di]               ; 02 15
        add     dl, byte ptr [di]               ; 02 15
        add     dl, byte ptr [di]               ; 02 15
        add     dl, byte ptr [di]               ; 02 15
        add     dl, byte ptr [di]               ; 02 15
        add     al, ah                          ; 02 C4
        add     word ptr [bx + si], bp          ; 01 28
        add     ch, byte ptr [bx + si]          ; 02 28
        add     ch, byte ptr [bx + si]          ; 02 28
        add     ch, byte ptr [bx + si]          ; 02 28
        add     ch, byte ptr [bx + si]          ; 02 28
        add     ch, byte ptr [bx + si]          ; 02 28
        add     ch, byte ptr [bx + si]          ; 02 28
        add     ch, byte ptr [bx + si]          ; 02 28
        add     ch, byte ptr [bx + si]          ; 02 28
        add     ch, cl                          ; 02 E9
        adc     bh, bh                          ; 10 FF
;   [unconditional branch target] L_02B4
L_02B4:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x30]   WORD      (1 use)

; Description (heuristic):
;   String manipulation routine (2 string APIs).

;-------------------------------------------------------------------------
; sub_02C0   offset=0x02C0  size=386 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GETENVIRONMENT
;   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;
; Near calls (internal): L_02C0
;-------------------------------------------------------------------------
;   [sub-routine] L_02C0
L_02C0:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x30                        ; 83 EC 30
        mov     word ptr [bp - 0x30], 0         ; C7 46 D0 00 00
        cmp     word ptr [bp - 0x30], 1         ; 83 7E D0 01
        jge     L_0324                          ; 7D 4C
        ; constant WM_RBUTTONDOWN
        mov     ax, 0x204                       ; B8 04 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x2c                        ; B8 2C 00
        push    ax                              ; 50
        call    far GDI.GETENVIRONMENT          ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        ;   ^ arg lpsz1 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, 0x20a                       ; B8 0A 02
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A 1C 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0324                          ; 74 26
        mov     ax, 0x215                       ; B8 15 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x2c                        ; B8 2C 00
        push    ax                              ; 50
        call    far GDI.GETENVIRONMENT          ; 9A 75 03 00 00 [FIXUP]
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        ;   ^ arg lpsz1 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, 0x21b                       ; B8 1B 02
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A 84 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0366                          ; 75 42
;   [loop start (also forward branch)] L_0324
L_0324:
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lpszDest (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 2B 00 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr es:[bx + 0x20], ax     ; 26 89 47 20
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr es:[bx + 0x22], ax     ; 26 89 47 22
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr es:[bx + 0x24], ax     ; 26 89 47 24
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr es:[bx + 0x26], ax     ; 26 89 47 26
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 0x28], ax     ; 26 89 47 28
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr es:[bx + 0x2a], ax     ; 26 89 47 2A
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_03E0                          ; EB 7A
;   [conditional branch target (if/else)] L_0366
L_0366:
        mov     ax, 0x226                       ; B8 26 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x2c                        ; B8 2C 00
        push    ax                              ; 50
        call    far GDI.GETENVIRONMENT          ; 9A 9B 03 00 00 [FIXUP]
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        ;   ^ arg lpsz1 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, 0x22c                       ; B8 2C 02
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A AA 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0324                          ; 74 98
        mov     ax, 0x237                       ; B8 37 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x2c                        ; B8 2C 00
        push    ax                              ; 50
        call    far GDI.GETENVIRONMENT          ; 9A C4 03 00 00 [FIXUP]
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        ;   ^ arg lpsz1 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, 0x23d                       ; B8 3D 02
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A D3 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_03B5                          ; 75 03
        jmp     L_0324                          ; E9 6F FF
;   [conditional branch target (if/else)] L_03B5
L_03B5:
        mov     ax, 0x248                       ; B8 48 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x2c                        ; B8 2C 00
        push    ax                              ; 50
        call    far GDI.GETENVIRONMENT          ; 9A 3F 00 00 00 [FIXUP]
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        ;   ^ arg lpsz1 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, 0x24e                       ; B8 4E 02
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A 5E 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_03DE                          ; 75 03
        jmp     L_0324                          ; E9 46 FF
;   [conditional branch target (if/else)] L_03DE
L_03DE:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_03E0
L_03E0:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x2e                        ; 83 EC 2E
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02C0                          ; E8 BE FE
        or      ax, ax                          ; 0B C0
        jne     L_0409                          ; 75 03
        jmp     L_0541                          ; E9 38 01
;   [conditional branch target (if/else)] L_0409
L_0409:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx], 2             ; 26 C7 07 02 00
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, 0x1e                        ; 2D 1E 00
        cmp     ax, 8                           ; 3D 08 00
        ja      L_0486                          ; 77 6A
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x49f]        ; 2E FF A7 9F 04
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        sub     ax, ax                          ; 2B C0
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        jmp     L_04B1                          ; EB 7E
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 2], 8         ; 26 C7 47 02 08 00
;   [loop start] L_043C
L_043C:
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        jmp     L_04B1                          ; EB 6D
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 2], 2         ; 26 C7 47 02 02 00
        jmp     L_043C                          ; EB ED
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 2], 3         ; 26 C7 47 02 03 00
        jmp     L_043C                          ; EB E2
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 2], 1         ; 26 C7 47 02 01 00
        jmp     L_043C                          ; EB D7
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 2], 5         ; 26 C7 47 02 05 00
        jmp     L_043C                          ; EB CC
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 2], 4         ; 26 C7 47 02 04 00
        jmp     L_043C                          ; EB C1
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 2], 6         ; 26 C7 47 02 06 00
        jmp     L_043C                          ; EB B6
;   [conditional branch target (if/else)] L_0486
L_0486:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx + 4], dx        ; 26 89 57 04
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr es:[bx], ax            ; 26 89 07
        jmp     L_04B1                          ; EB 12
        xchg    byte ptr [si], al               ; 86 04
        and     al, 4                           ; 24 04
        xor     ax, word ptr [si]               ; 33 04
        inc     sp                              ; 44
        add     al, 0x4f                        ; 04 4F
        add     al, 0x5a                        ; 04 5A
        add     al, 0x65                        ; 04 65
        add     al, 0x70                        ; 04 70
        add     al, 0x7b                        ; 04 7B
        add     al, 0x8b                        ; 04 8B
        inc     si                              ; 46
        cli                                     ; FA
        sub     ax, 0x28                        ; 2D 28 00
        cmp     ax, 8                           ; 3D 08 00
        jbe     L_04BF                          ; 76 03
        jmp     L_0558                          ; E9 99 00
;   [conditional branch target (if/else)] L_04BF
L_04BF:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x52d]        ; 2E FF A7 2D 05
        jmp     L_0558                          ; E9 8E 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        sub     ax, ax                          ; 2B C0
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        jmp     L_0569                          ; E9 8F 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 6], 8         ; 26 C7 47 06 08 00
        jmp     L_0525                          ; EB 40
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 6], 2         ; 26 C7 47 06 02 00
        jmp     L_0525                          ; EB 35
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 6], 3         ; 26 C7 47 06 03 00
        jmp     L_0525                          ; EB 2A
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 6], 1         ; 26 C7 47 06 01 00
        jmp     L_0525                          ; EB 1F
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 6], 5         ; 26 C7 47 06 05 00
        jmp     L_0525                          ; EB 14
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 6], 4         ; 26 C7 47 06 04 00
        jmp     L_0525                          ; EB 09
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 6], 6         ; 26 C7 47 06 06 00
;   [unconditional branch target] L_0525
L_0525:
        mov     word ptr es:[bx + 8], 0         ; 26 C7 47 08 00 00
        jmp     L_0569                          ; EB 3C
        pop     ax                              ; 58
        add     ax, 0x4ca                       ; 05 CA 04
        fiadd   dword ptr [si]                  ; DA 04
        in      ax, 4                           ; E5 04
        db      0f0h                            ; F0
        add     al, 0xfb                        ; 04 FB
        add     al, 6                           ; 04 06
        add     ax, 0x511                       ; 05 11 05
        sbb     al, 5                           ; 1C 05
        jmp     L_0569                          ; EB 28
;   [unconditional branch target] L_0541
L_0541:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx + 4], dx        ; 26 89 57 04
;   [unconditional branch target] L_0558
L_0558:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     word ptr es:[bx + 8], dx        ; 26 89 57 08
;   [unconditional branch target] L_0569
L_0569:
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
        sub     sp, 0x2e                        ; 83 EC 2E
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02C0                          ; E8 35 FD
        or      ax, ax                          ; 0B C0
        je      L_05CB                          ; 74 3C
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, 0x1e                        ; 2D 1E 00
        cmp     ax, 8                           ; 3D 08 00
        ja      L_05CB                          ; 77 31
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x5d3]        ; 2E FF A7 D3 05
        sub     ax, ax                          ; 2B C0
;   [loop start] L_05A4
L_05A4:
        sub     dx, dx                          ; 2B D2
        jmp     L_05E5                          ; EB 3D
        mov     ax, 8                           ; B8 08 00
        jmp     L_05A4                          ; EB F7
        mov     ax, 2                           ; B8 02 00
        jmp     L_05A4                          ; EB F2
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        jmp     L_05A4                          ; EB ED
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_05A4                          ; EB E8
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        jmp     L_05A4                          ; EB E3
        mov     ax, 4                           ; B8 04 00
        jmp     L_05A4                          ; EB DE
        mov     ax, 6                           ; B8 06 00
        jmp     L_05A4                          ; EB D9
;   [conditional branch target (if/else)] L_05CB
L_05CB:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        jmp     L_05E5                          ; EB 12
        retf                                    ; CB
        add     ax, 0x5a2                       ; 05 A2 05
        test    al, 5                           ; A8 05
        lodsw   ax, word ptr [si]               ; AD
        add     ax, 0x5b2                       ; 05 B2 05
        ; constant WM_SIZE
        mov     bh, 5                           ; B7 05
        mov     sp, 0xc105                      ; BC 05 C1
        add     ax, 0x5c6                       ; 05 C6 05
;   [unconditional branch target] L_05E5
L_05E5:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x2e                        ; 83 EC 2E
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02C0                          ; E8 B9 FC
        or      ax, ax                          ; 0B C0
        je      L_0647                          ; 74 3C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, 0x28                        ; 2D 28 00
        cmp     ax, 8                           ; 3D 08 00
        ja      L_0647                          ; 77 31
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x64f]        ; 2E FF A7 4F 06
        sub     ax, ax                          ; 2B C0
;   [loop start] L_0620
L_0620:
        sub     dx, dx                          ; 2B D2
        jmp     L_0661                          ; EB 3D
        mov     ax, 8                           ; B8 08 00
        jmp     L_0620                          ; EB F7
        mov     ax, 2                           ; B8 02 00
        jmp     L_0620                          ; EB F2
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        jmp     L_0620                          ; EB ED
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0620                          ; EB E8
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        jmp     L_0620                          ; EB E3
        mov     ax, 4                           ; B8 04 00
        jmp     L_0620                          ; EB DE
        mov     ax, 6                           ; B8 06 00
        jmp     L_0620                          ; EB D9
;   [conditional branch target (if/else)] L_0647
L_0647:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        jmp     L_0661                          ; EB 12
        inc     di                              ; 47
        push    es                              ; 06
        push    ds                              ; 1E
        push    es                              ; 06
        and     al, 6                           ; 24 06
        sub     word ptr [0x62e], ax            ; 29 06 2E 06
        xor     ax, word ptr [0x638]            ; 33 06 38 06
        cmp     ax, 0x4206                      ; 3D 06 42
        push    es                              ; 06
;   [unconditional branch target] L_0661
L_0661:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Pure computation / dispatcher (29 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_066C   offset=0x066C  size=29 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_066C
L_066C:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        cmp     byte ptr [bp + 8], 0xa0         ; 80 7E 08 A0
        jb      L_0699                          ; 72 1C
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        shl     al, 1                           ; D0 E0
        sub     al, 0x40                        ; 2C 40
        mov     byte ptr [bp + 8], al           ; 88 46 08
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        and     si, 0xff                        ; 81 E6 FF 00
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx + si + 0x336]  ; 8A 80 36 03
        sub     ah, ah                          ; 2A E4
        jmp     L_069B                          ; EB 02
;   [conditional branch target (if/else)] L_0699
L_0699:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_069B
L_069B:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Pure computation / dispatcher (27 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_06A7   offset=0x06A7  size=27 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_06A7
L_06A7:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 8], 0x258     ; 26 81 7F 08 58 02
        jl      L_06C9                          ; 7C 14
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x450                       ; B8 50 04
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _entry_106                  ; 9A E3 06 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_06C9
L_06C9:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0xb], 0       ; 26 80 7F 0B 00
        je      L_06E7                          ; 74 14
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x454                       ; B8 54 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 0B 07 00 00 [FIXUP]
;   [error/early exit] L_06E7
L_06E7:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Mixed routine using: FINDRESOURCE, FREERESOURCE, GETMODULEHANDLE (+4 more).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_06ED   offset=0x06ED  size=221 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   FINDRESOURCE
;   FREERESOURCE
;   GETMODULEHANDLE(LPSTR lpszModule) -> HANDLE
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;   LOADRESOURCE
;   LOCKRESOURCE
;   SIZEOFRESOURCE
;
; Near calls (internal): L_0984, L_0B2C
;-------------------------------------------------------------------------
;   [sub-routine] L_06ED
L_06ED:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 8], 0x258     ; 26 81 7F 08 58 02
        jle     L_070F                          ; 7E 14
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x457                       ; B8 57 04
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 29 07 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_070F
L_070F:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0xb], 0       ; 26 80 7F 0B 00
        je      L_072D                          ; 74 14
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x45b                       ; B8 5B 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_106                  ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_072D
L_072D:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
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
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0B2C                          ; E8 D9 03
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        mov     word ptr [bp - 8], 0xffff       ; C7 46 F8 FF FF
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        mov     si, 0x318                       ; BE 18 03
        jmp     L_0811                          ; E9 A9 00
;   [loop start] L_0768
L_0768:
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     al, byte ptr [si + 1]           ; 8A 44 01
        cmp     byte ptr [bp - 0x19], al        ; 38 46 E7
        je      L_0779                          ; 74 04
        add     byte ptr [bp - 5], 8            ; 80 46 FB 08
;   [conditional branch target (if/else)] L_0779
L_0779:
        mov     al, byte ptr [si + 3]           ; 8A 44 03
        cmp     byte ptr [bp - 0x17], al        ; 38 46 E9
        je      L_0785                          ; 74 04
        add     byte ptr [bp - 5], 0x10         ; 80 46 FB 10
;   [conditional branch target (if/else)] L_0785
L_0785:
        mov     al, byte ptr [si + 2]           ; 8A 44 02
        cmp     byte ptr [bp - 0x18], al        ; 38 46 E8
        je      L_0791                          ; 74 04
        add     byte ptr [bp - 5], 0x20         ; 80 46 FB 20
;   [conditional branch target (if/else)] L_0791
L_0791:
        cmp     byte ptr [bp - 0x16], 0         ; 80 7E EA 00
        je      L_07BE                          ; 74 27
        mov     al, byte ptr [si + 4]           ; 8A 44 04
        cwde                                    ; 98
        mov     cx, ax                          ; 8B C8
        mov     al, byte ptr [bp - 0x16]        ; 8A 46 EA
        cwde                                    ; 98
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        or      ax, ax                          ; 0B C0
        je      L_07BE                          ; 74 14
        or      ax, ax                          ; 0B C0
        jle     L_07B2                          ; 7E 04
        mov     cl, 6                           ; B1 06
        jmp     L_07B9                          ; EB 07
;   [conditional branch target (if/else)] L_07B2
L_07B2:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        neg     ax                              ; F7 D8
        mov     cl, 7                           ; B1 07
;   [unconditional branch target] L_07B9
L_07B9:
        shl     ax, cl                          ; D3 E0
        add     word ptr [bp - 6], ax           ; 01 46 FA
;   [conditional branch target (if/else)] L_07BE
L_07BE:
        cmp     byte ptr [bp - 0x15], 0         ; 80 7E EB 00
        je      L_07E4                          ; 74 20
        mov     al, byte ptr [si + 5]           ; 8A 44 05
        cwde                                    ; 98
        mov     cx, ax                          ; 8B C8
        mov     al, byte ptr [bp - 0x15]        ; 8A 46 EB
        cwde                                    ; 98
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        or      ax, ax                          ; 0B C0
        je      L_07E4                          ; 74 0D
        or      ax, ax                          ; 0B C0
        jg      L_07DD                          ; 7F 02
        neg     ax                              ; F7 D8
;   [conditional branch target (if/else)] L_07DD
L_07DD:
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     word ptr [bp - 6], ax           ; 01 46 FA
;   [conditional branch target (if/else)] L_07E4
L_07E4:
        mov     al, byte ptr [si + 6]           ; 8A 44 06
        cwde                                    ; 98
        mov     cx, ax                          ; 8B C8
        mov     al, byte ptr [bp - 0x14]        ; 8A 46 EC
        cwde                                    ; 98
        xor     ax, cx                          ; 33 C1
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     word ptr [bp - 6], ax           ; 01 46 FA
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jae     L_080B                          ; 73 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_080B
L_080B:
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        add     si, 8                           ; 83 C6 08
;   [unconditional branch target] L_0811
L_0811:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jge     L_081C                          ; 7D 03
        jmp     L_0768                          ; E9 4C FF
;   [conditional branch target (if/else)] L_081C
L_081C:
        mov     ax, 0x45e                       ; B8 5E 04
        push    ds                              ; 1E
        ;   ^ arg lpszModule (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszModule (low/offset)
        ; --> GETMODULEHANDLE(LPSTR lpszModule) -> HANDLE
        call    far KERNEL.GETMODULEHANDLE      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     dx, dx                          ; 2B D2
        inc     ax                              ; 40
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x101                       ; B8 01 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    ax                              ; 50
        call    far KERNEL.SIZEOFRESOURCE       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        jne     L_0857                          ; 75 03
        jmp     L_0902                          ; E9 AB 00
;   [conditional branch target (if/else)] L_0857
L_0857:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far KERNEL.LOADRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        or      ax, ax                          ; 0B C0
        jne     L_086E                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_0905                          ; E9 97 00
;   [conditional branch target (if/else)] L_086E
L_086E:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far KERNEL.LOCKRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far _entry_105                  ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx], 0x84          ; 26 C7 07 84 00
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, 0x318                       ; 05 18 03
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0984                          ; E8 DE 00
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xb]      ; 26 8A 47 0B
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx + 0xb], al      ; 26 88 47 0B
        or      al, al                          ; 0A C0
        je      L_08CA                          ; 74 12
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     byte ptr es:[bx + 0xf], 0       ; 26 80 7F 0F 00
        je      L_08CA                          ; 74 08
        les     bx, ptr [bp + 6]                ; C4 5E 06
        or      byte ptr es:[bx + 0x10], 8      ; 26 80 4F 10 08
;   [conditional branch target (if/else)] L_08CA
L_08CA:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xc]      ; 26 8A 47 0C
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx + 0xc], al      ; 26 88 47 0C
        or      al, al                          ; 0A C0
        je      L_08E1                          ; 74 05
        or      byte ptr es:[bx + 0x10], 0x10   ; 26 80 4F 10 10
;   [conditional branch target (if/else)] L_08E1
L_08E1:
        mov     al, 0x64                        ; B0 64
        imul    byte ptr [bp - 0x13]            ; F6 6E ED
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     word ptr [bp - 0x10], 1         ; C7 46 F0 01 00
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far KERNEL.FREERESOURCE         ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0902
L_0902:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
;   [unconditional branch target] L_0905
L_0905:
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
        sub     sp, 0x5e                        ; 83 EC 5E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0979                          ; EB 56
; Description (heuristic):
;   Pure computation / dispatcher (43 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0923   offset=0x0923  size=43 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_0984
;-------------------------------------------------------------------------
;   [loop start] L_0923
L_0923:
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0984                          ; E8 52 00
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0984                          ; E8 43 00
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bp + 0xa]                      ; FF 5E 0A
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        or      ax, ax                          ; 0B C0
        je      L_0976                          ; 74 17
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        or      ax, word ptr [bp + 0x10]        ; 0B 46 10
        jne     L_0976                          ; 75 0F
        inc     word ptr [bp - 0x3c]            ; FF 46 C4
        add     word ptr [bp - 0x3e], 8         ; 83 46 C2 08
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0x3c], ax        ; 39 46 C4
        jl      L_0923                          ; 7C AD
;   [conditional branch target (if/else)] L_0976
L_0976:
        mov     ax, word ptr [bp - 0x3a]        ; 8B 46 C6
;   [unconditional branch target] L_0979
L_0979:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
; Description (heuristic):
;   Mixed routine using: LSTRCPY.

;-------------------------------------------------------------------------
; sub_0984   offset=0x0984  size=132 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;-------------------------------------------------------------------------
;   [sub-routine] L_0984
L_0984:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 1]           ; 8A 47 01
        cwde                                    ; 98
        mov     si, ax                          ; 8B F0
        mov     al, byte ptr [bx + 3]           ; 8A 47 03
        cwde                                    ; 98
        mov     di, ax                          ; 8B F8
        mov     cl, 4                           ; B1 04
        shl     di, cl                          ; D3 E7
        mov     ax, di                          ; 8B C7
        or      ax, si                          ; 0B C6
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [si + 1]                    ; 8D 44 01
        or      ax, di                          ; 0B C7
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     al, 0x64                        ; B0 64
        imul    byte ptr [bx + 7]               ; F6 6F 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 1                           ; 3D 01 00
        je      L_09D1                          ; 74 13
        cmp     ax, 2                           ; 3D 02 00
        jne     L_09C6                          ; 75 03
        jmp     L_0AA0                          ; E9 DA 00
;   [conditional branch target (if/else)] L_09C6
L_09C6:
        cmp     ax, 5                           ; 3D 05 00
        jne     L_09CE                          ; 75 03
        jmp     L_0A4F                          ; E9 81 00
;   [conditional branch target (if/else)] L_09CE
L_09CE:
        jmp     L_0B24                          ; E9 53 01
;   [conditional branch target (if/else)] L_09D1
L_09D1:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 4]           ; 8A 47 04
        cwde                                    ; 98
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        cwde                                    ; 98
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     al, byte ptr [si + 6]           ; 8A 44 06
        mov     byte ptr es:[bx + 0xa], al      ; 26 88 47 0A
        mov     byte ptr es:[bx + 0xb], 0       ; 26 C6 47 0B 00
        mov     byte ptr es:[bx + 0xc], 0       ; 26 C6 47 0C 00
        mov     byte ptr es:[bx + 0xd], 0       ; 26 C6 47 0D 00
        mov     byte ptr es:[bx + 0xe], 2       ; 26 C6 47 0E 02
        mov     byte ptr es:[bx + 0xf], 1       ; 26 C6 47 0F 01
        mov     byte ptr es:[bx + 0x10], 0      ; 26 C6 47 10 00
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        mov     byte ptr es:[bx + 0x11], al     ; 26 88 47 11
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     bx, si                          ; 8B DE
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        cwde                                    ; 98
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x330]       ; 8B 87 30 03
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 30 03 00 00 [FIXUP]
        jmp     L_0B24                          ; E9 D5 00
;   [unconditional branch target] L_0A4F
L_0A4F:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 4]           ; 8A 47 04
        cwde                                    ; 98
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        cwde                                    ; 98
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     al, byte ptr [si + 6]           ; 8A 44 06
        mov     byte ptr es:[bx + 0xa], al      ; 26 88 47 0A
        mov     byte ptr es:[bx + 0xd], 2       ; 26 C6 47 0D 02
        mov     byte ptr es:[bx + 0xe], 1       ; 26 C6 47 0E 01
        mov     word ptr es:[bx + 0xf], 1       ; 26 C7 47 0F 01 00
        mov     word ptr es:[bx + 0x11], 0      ; 26 C7 47 11 00 00
        jmp     L_0B24                          ; E9 84 00
;   [unconditional branch target] L_0AA0
L_0AA0:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 4]           ; 8A 47 04
        cwde                                    ; 98
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], 0xc       ; 26 C7 47 02 0C 00
        mov     word ptr es:[bx + 4], 2         ; 26 C7 47 04 02 00
        mov     word ptr es:[bx + 8], 4         ; 26 C7 47 08 04 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        cwde                                    ; 98
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 0xe], ax      ; 26 89 47 0E
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     al, byte ptr [si + 6]           ; 8A 44 06
        mov     byte ptr es:[bx + 0x10], al     ; 26 88 47 10
        mov     byte ptr es:[bx + 0x11], 0      ; 26 C6 47 11 00
        mov     byte ptr es:[bx + 0x12], 0      ; 26 C6 47 12 00
        mov     byte ptr es:[bx + 0x13], 0x20   ; 26 C6 47 13 20
        mov     byte ptr es:[bx + 0x14], 0x7e   ; 26 C6 47 14 7E
        mov     byte ptr es:[bx + 0x15], 0x2e   ; 26 C6 47 15 2E
        mov     byte ptr es:[bx + 0x16], 0x20   ; 26 C6 47 16 20
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        mov     byte ptr es:[bx + 0x17], al     ; 26 88 47 17
        mov     byte ptr es:[bx + 0x18], 0      ; 26 C6 47 18 00
        mov     word ptr es:[bx + 0x19], 0      ; 26 C7 47 19 00 00
        mov     word ptr es:[bx + 0x1b], 0x78   ; 26 C7 47 1B 78 00
        mov     word ptr es:[bx + 0x1d], 0x78   ; 26 C7 47 1D 78 00
;   [fall-through exit] L_0B24
L_0B24:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Pure computation / dispatcher (69 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0B2C   offset=0x0B2C  size=69 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0BE8
;-------------------------------------------------------------------------
;   [sub-routine] L_0B2C
L_0B2C:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0x11]     ; 26 8A 47 11
        and     al, 0xf                         ; 24 0F
        cmp     al, 2                           ; 3C 02
        jne     L_0B41                          ; 75 04
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        jmp     L_0B43                          ; EB 02
;   [conditional branch target (if/else)] L_0B41
L_0B41:
        sub     al, al                          ; 2A C0
;   [unconditional branch target] L_0B43
L_0B43:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 1], al        ; 26 88 47 01
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0x11]     ; 26 8A 47 11
        sub     ah, ah                          ; 2A E4
        and     ax, 0xf0                        ; 25 F0 00
        mov     cl, 4                           ; B1 04
        shr     ax, cl                          ; D3 E8
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 3], al        ; 26 88 47 03
        or      al, al                          ; 0A C0
        jne     L_0B6A                          ; 75 05
        mov     byte ptr es:[bx + 3], 3         ; 26 C6 47 03 03
;   [conditional branch target (if/else)] L_0B6A
L_0B6A:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     si, word ptr es:[bx]            ; 26 8B 37
        or      si, si                          ; 0B F6
        jle     L_0B7B                          ; 7E 07
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, si                          ; 8B C6
        jmp     L_0B86                          ; EB 0B
;   [conditional branch target (if/else)] L_0B7B
L_0B7B:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        neg     ax                              ; F7 D8
        les     bx, ptr [bp + 4]                ; C4 5E 04
;   [unconditional branch target] L_0B86
L_0B86:
        mov     byte ptr es:[bx + 4], al        ; 26 88 47 04
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 2]        ; 26 8A 47 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 5], al        ; 26 88 47 05
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 7], al        ; 26 88 47 07
        or      al, al                          ; 0A C0
        jne     L_0BB5                          ; 75 05
        mov     byte ptr es:[bx + 7], 4         ; 26 C6 47 07 04
;   [conditional branch target (if/else)] L_0BB5
L_0BB5:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0xa]      ; 26 8A 47 0A
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 6], al        ; 26 88 47 06
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0BE8                          ; E8 17 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 2], al        ; 26 88 47 02
        inc     al                              ; FE C0
        jne     L_0BE1                          ; 75 05
        mov     byte ptr es:[bx + 2], 0         ; 26 C6 47 02 00
;   [error/early exit] L_0BE1
L_0BE1:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_0BE8   offset=0x0BE8  size=210 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;
; Near calls (internal): L_066C, L_0E11, L_0EE7, L_10B4
;-------------------------------------------------------------------------
;   [sub-routine] L_0BE8
L_0BE8:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        mov     ax, 0xffff                      ; B8 FF FF
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
        sub     sp, 0x1a                        ; 83 EC 1A
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jle     L_0C1B                          ; 7E 05
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        jmp     L_0C20                          ; EB 05
;   [conditional branch target (if/else)] L_0C1B
L_0C1B:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        neg     ax                              ; F7 D8
;   [unconditional branch target] L_0C20
L_0C20:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_0EE7                          ; E8 B4 02
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        cmp     dx, 0x8000                      ; 81 FA 00 80
        jne     L_0C4B                          ; 75 0C
        or      ax, ax                          ; 0B C0
        jne     L_0C4B                          ; 75 08
        sub     ax, ax                          ; 2B C0
        mov     dx, 0x8000                      ; BA 00 80
        jmp     L_0E04                          ; E9 B9 01
;   [conditional branch target (if/else)] L_0C4B
L_0C4B:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        mov     dx, word ptr [bp + 0x1a]        ; 8B 56 1A
        cmp     word ptr [bp - 0xe], dx         ; 39 56 F2
        jne     L_0C5B                          ; 75 05
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        je      L_0C9F                          ; 74 44
;   [conditional branch target (if/else)] L_0C5B
L_0C5B:
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        jmp     L_0C9F                          ; EB 3D
;   [loop start] L_0C62
L_0C62:
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jle     L_0CA5                          ; 7E 3D
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_10B4                          ; E8 27 04
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        inc     word ptr [bp + 0x18]            ; FF 46 18
        dec     word ptr [bp + 0x16]            ; FF 4E 16
        add     word ptr [bp + 0x1e], ax        ; 01 46 1E
;   [branch target] L_0C9F
L_0C9F:
        cmp     word ptr [bp + 0x1e], 0         ; 83 7E 1E 00
        jl      L_0C62                          ; 7C BD
;   [conditional branch target (if/else)] L_0CA5
L_0CA5:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jle     L_0CBE                          ; 7E 09
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x30], 0      ; 26 C7 47 30 00 00
;   [conditional branch target (if/else)] L_0CBE
L_0CBE:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_10B4                          ; E8 CC 03
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        cdq                                     ; 99
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        adc     dx, word ptr [bp - 6]           ; 13 56 FA
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jne     L_0D06                          ; 75 08
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
;   [conditional branch target (if/else)] L_0D06
L_0D06:
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jg      L_0D18                          ; 7F 0C
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_0D15                          ; 75 03
        jmp     L_0DFE                          ; E9 E9 00
;   [conditional branch target (if/else)] L_0D15
L_0D15:
        jmp     L_0DF6                          ; E9 DE 00
;   [conditional branch target (if/else)] L_0D18
L_0D18:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        or      byte ptr es:[bx + 0x26], 0x10   ; 26 80 4F 26 10
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_0E11                          ; E8 E3 00
        cdq                                     ; 99
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_0D3E                          ; 75 03
        jmp     L_0DFE                          ; E9 C0 00
;   [conditional branch target (if/else)] L_0D3E
L_0D3E:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     di, word ptr es:[bx + 0x10]     ; 26 8B 7F 10
        sub     si, si                          ; 2B F6
;   [loop start] L_0D47
L_0D47:
        cmp     word ptr [bp + 0x16], si        ; 39 76 16
        jg      L_0D4F                          ; 7F 03
        jmp     L_0DEF                          ; E9 A0 00
;   [conditional branch target (if/else)] L_0D4F
L_0D4F:
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        cmp     byte ptr es:[bx + si], al       ; 26 38 00
        je      L_0D76                          ; 74 19
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_066C                          ; E8 FD F8
        mov     byte ptr [bp - 0x12], al        ; 88 46 EE
        cmp     al, 0x20                        ; 3C 20
        ja      L_0D79                          ; 77 03
;   [loop start (also forward branch)] L_0D76
L_0D76:
        inc     si                              ; 46
        jmp     L_0D47                          ; EB CE
;   [conditional branch target (if/else)] L_0D79
L_0D79:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     ax, si                          ; 8B C6
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_10B4                          ; E8 0F 03
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x30], 0      ; 26 C7 47 30 00 00
        push    es                              ; 06
        push    bx                              ; 53
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_10B4                          ; E8 E3 02
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        add     ax, word ptr [bp - 0x1a]        ; 03 46 E6
        push    ax                              ; 50
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    L_0E11                          ; E8 27 00
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        jmp     L_0D76                          ; EB 87
;   [unconditional branch target] L_0DEF
L_0DEF:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 0x10], di     ; 26 89 7F 10
;   [unconditional branch target] L_0DF6
L_0DF6:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0DFE
L_0DFE:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
;   [unconditional branch target] L_0E04
L_0E04:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1e                            ; CA 1E 00
; Description (heuristic):
;   Allocation / initialization routine (2 alloc APIs).

;-------------------------------------------------------------------------
; sub_0E11   offset=0x0E11  size=74 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   INSERTPQ
;   SIZEPQ
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;
; Near calls (internal): L_1013
;-------------------------------------------------------------------------
;   [sub-routine] L_0E11
L_0E11:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x30]     ; 26 8B 47 30
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    es                              ; 06
        push    bx                              ; 53
        push    ax                              ; 50
        call    L_1013                          ; E8 EC 01
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        inc     ax                              ; 40
        jne     L_0E32                          ; 75 05
;   [loop start] L_0E2D
L_0E2D:
        sub     ax, ax                          ; 2B C0
        jmp     L_0EE1                          ; E9 AF 00
;   [conditional branch target (if/else)] L_0E32
L_0E32:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A 83 0F 00 00 [FIXUP]
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     ax, bx                          ; 8B C3
        add     ax, 0xa                         ; 05 0A 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        add     ax, 0x70                        ; 05 70 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_105                  ; 9A 82 08 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.INSERTPQ                ; 9A CE 0E 00 00 [FIXUP]
        inc     ax                              ; 40
        jne     L_0ED2                          ; 75 3E
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.SIZEPQ                  ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        jne     L_0EC0                          ; 75 19
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A DA 0E 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr es:[bx + 0x44], ax     ; 26 89 47 44
        jmp     L_0E2D                          ; E9 6D FF
;   [conditional branch target (if/else)] L_0EC0
L_0EC0:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.INSERTPQ                ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0ED2
L_0ED2:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 02 10 00 00 [FIXUP]
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
;   [fall-through exit] L_0EE1
L_0EE1:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Allocation / initialization routine (3 alloc APIs).

;-------------------------------------------------------------------------
; sub_0EE7   offset=0x0EE7  size=110 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;
; Near calls (internal): L_066C
;-------------------------------------------------------------------------
;   [sub-routine] L_0EE7
L_0EE7:
        ;   = cProc <18> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        push    si                              ; 56
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0x23]     ; 26 8B 47 23
        or      ax, word ptr es:[bx + 0x25]     ; 26 0B 47 25
        jne     L_0F05                          ; 75 0A
        mov     byte ptr [bp - 0xc], 0x7e       ; C6 46 F4 7E
        mov     byte ptr [bp - 2], 0x2e         ; C6 46 FE 2E
        jmp     L_0F1A                          ; EB 15
;   [conditional branch target (if/else)] L_0F05
L_0F05:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx + 0x1e]     ; 26 8A 47 1E
        mov     byte ptr [bp - 0xc], al         ; 88 46 F4
        mov     al, byte ptr es:[bx + 0x1f]     ; 26 8A 47 1F
        add     al, byte ptr es:[bx + 0x1d]     ; 26 02 47 1D
        mov     byte ptr [bp - 2], al           ; 88 46 FE
;   [unconditional branch target] L_0F1A
L_0F1A:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
;   [loop start] L_0F2B
L_0F2B:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jge     L_0F49                          ; 7D 16
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x12], al        ; 88 46 EE
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0x1d], al     ; 26 38 47 1D
        ja      L_0F49                          ; 77 04
        cmp     al, 0x7f                        ; 3C 7F
        jb      L_0F5A                          ; 72 11
;   [conditional branch target (if/else)] L_0F49
L_0F49:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jne     L_0F62                          ; 75 11
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        jmp     L_100C                          ; E9 B2 00
;   [conditional branch target (if/else)] L_0F5A
L_0F5A:
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        inc     word ptr [bp - 6]               ; FF 46 FA
        jmp     L_0F2B                          ; EB C9
;   [conditional branch target (if/else)] L_0F62
L_0F62:
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
        call    far KERNEL.GLOBALALLOC          ; 9A 84 10 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        or      ax, ax                          ; 0B C0
        jne     L_0F7F                          ; 75 08
        sub     ax, ax                          ; 2B C0
        mov     dx, 0x8000                      ; BA 00 80
        jmp     L_100C                          ; E9 8D 00
;   [conditional branch target (if/else)] L_0F7F
L_0F7F:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        jmp     L_0FF6                          ; EB 56
;   [loop start] L_0FA0
L_0FA0:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x12], al        ; 88 46 EE
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        les     si, ptr [bp - 0xa]              ; C4 76 F6
        mov     byte ptr es:[bx + si], al       ; 26 88 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     al, byte ptr es:[bx + 0x1d]     ; 26 3A 47 1D
        jb      L_0FC3                          ; 72 08
        cmp     al, 0x7f                        ; 3C 7F
        jb      L_0FCF                          ; 72 10
        cmp     al, 0xa0                        ; 3C A0
        jae     L_0FCF                          ; 73 0C
;   [conditional branch target (if/else)] L_0FC3
L_0FC3:
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        les     si, ptr [bp - 0xa]              ; C4 76 F6
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        mov     byte ptr es:[bx + si], al       ; 26 88 00
;   [conditional branch target (if/else)] L_0FCF
L_0FCF:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x12], al        ; 88 46 EE
        cmp     al, 0xa0                        ; 3C A0
        jb      L_0FF0                          ; 72 14
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_066C                          ; E8 85 F6
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        les     si, ptr [bp - 0xa]              ; C4 76 F6
        mov     byte ptr es:[bx + si], al       ; 26 88 00
;   [conditional branch target (if/else)] L_0FF0
L_0FF0:
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        inc     word ptr [bp - 6]               ; FF 46 FA
;   [unconditional branch target] L_0FF6
L_0FF6:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jl      L_0FA0                          ; 7C A2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A F6 08 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
;   [fall-through exit] L_100C
L_100C:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Mixed routine using: GLOBALALLOC, GLOBALREALLOC.

;-------------------------------------------------------------------------
; sub_1013   offset=0x1013  size=66 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
;   GLOBALREALLOC(HANDLE hMem, DWORD dwBytes, WORD wFlags) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_1013
L_1013:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     si, word ptr es:[bx + 0x44]     ; 26 8B 77 44
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 0xa                         ; 05 0A 00
        add     word ptr es:[bx + 0x44], ax     ; 26 01 47 44
        mov     ax, word ptr es:[bx + 0x44]     ; 26 8B 47 44
        cmp     ax, word ptr es:[bx + 0x42]     ; 26 3B 47 42
        jl      L_1065                          ; 7C 2F
        add     byte ptr es:[bx + 0x43], 2      ; 26 80 47 43 02
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        ;   ^ arg hMem
        mov     ax, word ptr es:[bx + 0x42]     ; 26 8B 47 42
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        ; --> GLOBALREALLOC(HANDLE hMem, DWORD dwBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.GLOBALREALLOC        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1065                          ; 75 12
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0x44], si     ; 26 89 77 44
        sub     word ptr es:[bx + 0x42], 0x200  ; 26 81 6F 42 00 02
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_1067                          ; EB 02
;   [conditional branch target (if/else)] L_1065
L_1065:
        mov     ax, si                          ; 8B C6
;   [fall-through exit] L_1067
L_1067:
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, 0x200                       ; B8 00 02
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0x40], ax     ; 26 89 47 40
        or      ax, ax                          ; 0B C0
        jne     L_1097                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_10A9                          ; EB 12
;   [conditional branch target (if/else)] L_1097
L_1097:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0x42], 0x200  ; 26 C7 47 42 00 02
        mov     word ptr es:[bx + 0x44], 0      ; 26 C7 47 44 00 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_10A9
L_10A9:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Pure computation / dispatcher (177 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_10B4   offset=0x10B4  size=177 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_06A7, L_06ED, L_12A9
;-------------------------------------------------------------------------
;   [sub-routine] L_10B4
L_10B4:
        ;   = cProc <26> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1a                        ; 83 EC 1A
        push    si                              ; 56
        cmp     word ptr [bp + 0x10], 0         ; 83 7E 10 00
        jle     L_10C6                          ; 7E 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_10C8                          ; EB 02
;   [conditional branch target (if/else)] L_10C6
L_10C6:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_10C8
L_10C8:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_1102                          ; 74 33
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 0x35]     ; 26 8B 47 35
        mov     cx, word ptr [0x576]            ; 8B 0E 76 05
        add     ax, cx                          ; 03 C1
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     al, byte ptr es:[bx + 0x38]     ; 26 8A 47 38
        cwde                                    ; 98
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 55 12 00 00 [FIXUP]
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_06A7                          ; E8 A7 F5
        jmp     L_110A                          ; EB 08
;   [conditional branch target (if/else)] L_1102
L_1102:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        neg     ax                              ; F7 D8
        mov     word ptr [bp + 0x10], ax        ; 89 46 10
;   [unconditional branch target] L_110A
L_110A:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     al, byte ptr es:[bx + 0x20]     ; 26 8A 47 20
        add     al, byte ptr es:[bx + 0x1d]     ; 26 02 47 1D
        mov     byte ptr [bp - 0x18], al        ; 88 46 E8
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        je      L_1175                          ; 74 56
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        mov     ax, word ptr es:[bx + 0x3d]     ; 26 8B 47 3D
        mov     cl, byte ptr es:[bx + 0x1d]     ; 26 8A 4F 1D
        sub     ch, ch                          ; 2A ED
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     al, byte ptr [bp - 0x18]        ; 8A 46 E8
        cwde                                    ; 98
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        les     si, ptr [bp - 0x14]             ; C4 76 EC
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
;   [loop start] L_1152
L_1152:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jge     L_1185                          ; 7D 2B
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        les     si, ptr [bp + 0x12]             ; C4 76 12
        mov     bl, byte ptr es:[bx + si]       ; 26 8A 18
        sub     bh, bh                          ; 2A FF
        shl     bx, 1                           ; D1 E3
        les     si, ptr [bp - 0x14]             ; C4 76 EC
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        jmp     L_1152                          ; EB DD
;   [conditional branch target (if/else)] L_1175
L_1175:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        imul    word ptr [bp + 0x10]            ; F7 6E 10
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
;   [conditional branch target (if/else)] L_1185
L_1185:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        je      L_11A0                          ; 74 06
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jne     L_11AD                          ; 75 0D
;   [conditional branch target (if/else)] L_11A0
L_11A0:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x16], 0      ; 26 83 7F 16 00
        jne     L_11AD                          ; 75 03
        jmp     L_123F                          ; E9 92 00
;   [conditional branch target (if/else)] L_11AD
L_11AD:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        jmp     L_1227                          ; EB 60
;   [loop start] L_11C7
L_11C7:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_11FD                          ; 74 26
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     al, byte ptr [bp - 0x18]        ; 8A 46 E8
        cmp     byte ptr es:[bx], al            ; 26 38 07
        jne     L_11FD                          ; 75 1B
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        add     word ptr [bp - 0x10], ax        ; 01 46 F0
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        sub     word ptr [bp - 2], ax           ; 29 46 FE
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jg      L_11FD                          ; 7F 09
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     word ptr [bp - 2], ax           ; 01 46 FE
;   [conditional branch target (if/else)] L_11FD
L_11FD:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_1221                          ; 74 18
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    L_12A9                          ; E8 88 00
;   [conditional branch target (if/else)] L_1221
L_1221:
        dec     word ptr [bp + 0x10]            ; FF 4E 10
        inc     word ptr [bp + 0x12]            ; FF 46 12
;   [unconditional branch target] L_1227
L_1227:
        cmp     word ptr [bp + 0x10], 0         ; 83 7E 10 00
        jne     L_11C7                          ; 75 9A
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_1259                          ; 75 26
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        jmp     L_1259                          ; EB 1A
;   [unconditional branch target] L_123F
L_123F:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_1259                          ; 74 14
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    far _entry_106                  ; 9A 8C 12 00 00 [FIXUP]
;   [branch target] L_1259
L_1259:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_1296                          ; 74 37
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_06ED                          ; E8 7F F4
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 0x39]     ; 26 8B 47 39
        mov     cx, word ptr [0x576]            ; 8B 0E 76 05
        add     ax, cx                          ; 03 C1
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     al, byte ptr es:[bx + 0x3c]     ; 26 8A 47 3C
        cwde                                    ; 98
        push    ax                              ; 50
        call    far _entry_106                  ; 9A FA 12 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cdq                                     ; 99
        jmp     L_12A2                          ; EB 0C
;   [conditional branch target (if/else)] L_1296
L_1296:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     dx, word ptr es:[bx + 0x16]     ; 26 8B 57 16
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
;   [fall-through exit] L_12A2
L_12A2:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0x16                            ; C2 16 00
; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_12A9   offset=0x12A9  size=256 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;
; Near calls (internal): L_066C, L_06A7, L_06ED, L_0EE7, L_1549, L_1583
;-------------------------------------------------------------------------
;   [sub-routine] L_12A9
L_12A9:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        cmp     byte ptr [bp + 8], 0xa0         ; 80 7E 08 A0
        jae     L_12B9                          ; 73 03
        jmp     L_1339                          ; E9 80 00
;   [conditional branch target (if/else)] L_12B9
L_12B9:
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        push    si                              ; 56
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_066C                          ; E8 A2 F3
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     ax, 0x20                        ; 3D 20 00
        jge     L_12EA                          ; 7D 18
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_066C                          ; E8 91 F3
        mov     byte ptr [0x578], al            ; A2 78 05
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x578                       ; B8 78 05
        push    ds                              ; 1E
        jmp     L_132D                          ; EB 43
;   [conditional branch target (if/else)] L_12EA
L_12EA:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 2]                    ; 8D 46 FE
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 0E 13 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x579                       ; B8 79 05
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 33 13 00 00 [FIXUP]
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_066C                          ; E8 4C F3
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 2]                    ; 8D 46 FE
;   [loop start] L_132C
L_132C:
        push    ss                              ; 16
;   [unconditional branch target] L_132D
L_132D:
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 54 13 00 00 [FIXUP]
        jmp     L_135E                          ; EB 25
;   [unconditional branch target] L_1339
L_1339:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp + 8]                    ; 8D 46 08
        jmp     L_132C                          ; EB E8
;   [loop start] L_1344
L_1344:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x57b                       ; B8 7B 05
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 84 13 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     word ptr [bp + 4], ax           ; 29 46 04
;   [unconditional branch target] L_135E
L_135E:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jge     L_1344                          ; 7D DE
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jle     L_1391                          ; 7E 25
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_1391                          ; 74 1F
        jmp     L_138B                          ; EB 17
;   [loop start] L_1374
L_1374:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x57d                       ; B8 7D 05
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 7E 14 00 00 [FIXUP]
        dec     word ptr [bp + 4]               ; FF 4E 04
;   [unconditional branch target] L_138B
L_138B:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_1374                          ; 75 E3
;   [error/early exit] L_1391
L_1391:
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
        sub     sp, 0x12                        ; 83 EC 12
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_1583                          ; E8 CA 01
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        test    byte ptr es:[bx + 0x26], 2      ; 26 F6 47 26 02
        jne     L_13CC                          ; 75 03
        jmp     L_1502                          ; E9 36 01
;   [conditional branch target (if/else)] L_13CC
L_13CC:
        cmp     word ptr es:[bx + 0x46], ax     ; 26 39 47 46
        je      L_13D5                          ; 74 03
        jmp     L_1502                          ; E9 2D 01
;   [conditional branch target (if/else)] L_13D5
L_13D5:
        mov     ax, word ptr es:[bx + 0x3c]     ; 26 8B 47 3C
        mov     word ptr [bp + 0x1e], ax        ; 89 46 1E
;   [loop start] L_13DC
L_13DC:
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_0EE7                          ; E8 F9 FA
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        cmp     dx, 0x8000                      ; 81 FA 00 80
        jne     L_1401                          ; 75 07
        or      ax, ax                          ; 0B C0
        jne     L_1401                          ; 75 03
        jmp     L_1517                          ; E9 16 01
;   [conditional branch target (if/else)] L_1401
L_1401:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        mov     dx, word ptr [bp + 0x1a]        ; 8B 56 1A
        cmp     word ptr [bp - 0xc], dx         ; 39 56 F4
        jne     L_1411                          ; 75 05
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        je      L_1416                          ; 74 05
;   [conditional branch target (if/else)] L_1411
L_1411:
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
;   [conditional branch target (if/else)] L_1416
L_1416:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 43 14 00 00 [FIXUP]
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_06A7                          ; E8 71 F2
;   [loop start] L_1436
L_1436:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_107                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp + 0x16]            ; FF 76 16
        call    L_1549                          ; E8 F6 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr es:[bx + 0x38]     ; 26 8B 47 38
        imul    word ptr [bp - 6]               ; F7 6E FA
        add     word ptr es:[bx + 0x3c], ax     ; 26 01 47 3C
        cmp     word ptr es:[bx + 0x3c], 0x388  ; 26 81 7F 3C 88 03
        jg      L_14DD                          ; 7F 71
        cmp     word ptr [bp + 0x1e], 0         ; 83 7E 1E 00
        jl      L_1482                          ; 7C 10
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_106                  ; 9A C5 06 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1482
L_1482:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cmp     word ptr [bp + 0x1e], ax        ; 39 46 1E
        jge     L_148D                          ; 7D 03
        mov     word ptr [bp + 0x1e], ax        ; 89 46 1E
;   [conditional branch target (if/else)] L_148D
L_148D:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_11                   ; 9A FF FF 00 00 [FIXUP]
        add     word ptr [bp + 0x1e], ax        ; 01 46 1E
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     word ptr [bp - 0xe], ax         ; 01 46 F2
        sub     word ptr [bp + 0x16], ax        ; 29 46 16
        je      L_14DD                          ; 74 03
        jmp     L_1436                          ; E9 59 FF
;   [conditional branch target (if/else)] L_14DD
L_14DD:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_06ED                          ; E8 01 F2
        dec     word ptr [bp - 0xe]             ; FF 4E F2
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        jne     L_151B                          ; 75 23
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        and     byte ptr es:[bx + 0x26], 0xfd   ; 26 80 67 26 FD
        jmp     L_1523                          ; EB 21
;   [unconditional branch target] L_1502
L_1502:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        call    far _entry_108                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1517                          ; 74 03
        jmp     L_13DC                          ; E9 C5 FE
;   [branch target] L_1517
L_1517:
        sub     ax, ax                          ; 2B C0
        jmp     L_153E                          ; EB 23
;   [conditional branch target (if/else)] L_151B
L_151B:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        or      byte ptr es:[bx + 0x26], 2      ; 26 80 4F 26 02
;   [unconditional branch target] L_1523
L_1523:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        mov     word ptr es:[bx + 0x46], ax     ; 26 89 47 46
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_153B                          ; 74 08
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A FA 0D 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_153B
L_153B:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_153E
L_153E:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1e                            ; CA 1E 00
; Description (heuristic):
;   Pure computation / dispatcher (26 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1549   offset=0x1549  size=26 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1549
L_1549:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        sub     si, si                          ; 2B F6
        jmp     L_1561                          ; EB 0D
;   [loop start] L_1554
L_1554:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        je      L_1575                          ; 74 18
        inc     si                              ; 46
        inc     word ptr [bp + 6]               ; FF 46 06
;   [unconditional branch target] L_1561
L_1561:
        cmp     word ptr [bp + 4], si           ; 39 76 04
        jg      L_1554                          ; 7F EE
        jmp     L_1575                          ; EB 0D
;   [loop start] L_1568
L_1568:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        jne     L_157A                          ; 75 06
        inc     si                              ; 46
;   [branch target] L_1575
L_1575:
        cmp     word ptr [bp + 4], si           ; 39 76 04
        jg      L_1568                          ; 7F EE
;   [error/early exit] L_157A
L_157A:
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Pure computation / dispatcher (44 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1583   offset=0x1583  size=44 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_1583
L_1583:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_15A1                          ; 75 0A
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
        sub     ax, 3                           ; 2D 03 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [conditional branch target (if/else)] L_15A1
L_15A1:
        cmp     word ptr [bp - 2], 0xc          ; 83 7E FE 0C
        jge     L_15CC                          ; 7D 25
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x38], 0xa    ; 26 83 7F 38 0A
        je      L_15EF                          ; 74 3E
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x57f                       ; B8 7F 05
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _entry_106                  ; 9A E2 15 00 00 [FIXUP]
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x38], 0xa    ; 26 C7 47 38 0A 00
        jmp     L_15EF                          ; EB 23
;   [conditional branch target (if/else)] L_15CC
L_15CC:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x38], 0xc    ; 26 83 7F 38 0C
        je      L_15EF                          ; 74 19
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x583                       ; B8 83 05
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _entry_106                  ; 9A ED 10 00 00 [FIXUP]
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x38], 0xc    ; 26 C7 47 38 0C 00
;   [branch target] L_15EF
L_15EF:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      008h                            ; 08

XER4020_TEXT ENDS

        END
