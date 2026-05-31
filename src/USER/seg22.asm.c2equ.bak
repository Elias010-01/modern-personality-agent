; ======================================================================
; USER / seg22.asm   (segment 22 of USER)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        43
; Total instructions:                 2279
; 
; Classification (pass8):
;   C-origin (high+medium):             42
;   ASM-origin (high+medium):            0
;   Unclear:                             1
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     24 (12 unique)
;   Top:
;        6  GLOBALUNLOCK
;        5  GLOBALLOCK
;        2  GLOBALALLOC
;        2  GLOBALREALLOC
;        2  LSTRLEN
;        1  GETTEXTMETRICS
;        1  LOCALALLOC
;        1  GETSTOCKOBJECT
; ======================================================================
; AUTO-GENERATED from original USER segment 22
; segment_size=6201 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

USER_TEXT SEGMENT BYTE PUBLIC 'CODE'

        adc     al, 0                           ; 14 00
        add     byte ptr [bx + di], al          ; 00 01
        add     word ptr [bx + di], ax          ; 01 01
        add     byte ptr [bp + si], al          ; 00 02
        add     word ptr [bp + si], ax          ; 01 02
        add     al, byte ptr [bp + si]          ; 02 02
        add     ax, word ptr [bp + si]          ; 03 02
        sbb     byte ptr [bx + di], al          ; 18 01
        add     al, byte ptr [bx + di]          ; 02 01
        sldt    word ptr [bp + si]              ; 0F 00 02
        add     byte ptr [bx], al               ; 00 07
        add     byte ptr [bx + si], cl          ; 00 08
        add     byte ptr [di], dl               ; 00 15
        add     word ptr [bx + 0x100], ax       ; 01 87 00 01
        add     byte ptr [bp + di], cl          ; 00 0B
        add     byte ptr [bp + si], cl          ; 00 0A
        add     byte ptr [bx + di], al          ; 00 01
        add     al, 2                           ; 04 02
        add     al, 3                           ; 04 03
        add     al, 0xe                         ; 04 0E
        add     al, 6                           ; 04 06
        add     al, 7                           ; 04 07
        add     al, 8                           ; 04 08
        add     al, 9                           ; 04 09
        add     al, 0xa                         ; 04 0A
        add     al, 0xb                         ; 04 0B
        add     al, 0xc                         ; 04 0C
        add     al, 0xd                         ; 04 0D
        add     al, 5                           ; 04 05
        add     al, 5                           ; 04 05
        add     byte ptr [bx + si], al          ; 00 00
        add     cl, bl                          ; 00 D9
        add     bl, dh                          ; 00 F3
        add     dh, bl                          ; 02 F3
        add     dh, byte ptr [bp + di]          ; 02 33
        add     word ptr [bp + di + 1], sp      ; 01 63 01
        arpl    word ptr [bx + di], ax          ; 63 01
        arpl    word ptr [bx + di], ax          ; 63 01
        daa                                     ; 27
        add     dx, di                          ; 01 FA
        add     ch, byte ptr [bx + 1]           ; 02 6F 01
        xchg    sp, ax                          ; 94
        add     word ptr [di - 0x49ff], bp      ; 01 AD 01 B6
        add     word ptr [bx - 0x37ff], di      ; 01 BF 01 C8
        add     si, cx                          ; 01 CE
        add     word ptr [bx + si], sp          ; 01 20
        add     ch, byte ptr [bx + si]          ; 02 28
        add     ch, byte ptr [0x3b02]           ; 02 2E 02 3B
        add     al, byte ptr [bx + 2]           ; 02 47 02
        dec     bp                              ; 4D
        add     ah, byte ptr [bx + di + 2]      ; 02 61 02
        je      L_0074                          ; 74 02
        add     byte ptr [bp + si], 0x96        ; 82 02 96
        add     ah, byte ptr [di - 0x41fe]      ; 02 A5 02 BE
        add     dl, ch                          ; 02 D5
        add     bl, bl                          ; 02 DB
        add     dh, cl                          ; 02 F1
        add     ah, al                          ; 00 C4
        add     byte ptr [bx + di], al          ; 00 01
        add     cx, word ptr [si - 0x6f28]      ; 03 8C D8 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x26                        ; 83 EC 26
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp + 0xe]             ; FF 76 0E
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far _SEG1_6221                  ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        or      si, si                          ; 0B F6
        jne     L_00AC                          ; 75 05
        cmp     ax, 1                           ; 3D 01 00
        jne     L_0124                          ; 75 78
;   [conditional branch target (if/else)] L_00AC
L_00AC:
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        push    cs                              ; 0E
        pop     es                              ; 07
        lea     di, [0]                         ; 8D 3E 00 00
        mov     cx, 0x21                        ; B9 21 00
        repne scasw ax, word ptr es:[di]        ; F2 AF
        mov     cx, word ptr [bp + 0xa]         ; 8B 4E 0A
        xchg    di, bx                          ; 87 DF
        push    si                              ; 56
        jmp     word ptr cs:[bx + 0x40]         ; 2E FF 67 40
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    L_1442                          ; E8 78 13
        mov     word ptr [si + 0xe], ax         ; 89 44 0E
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_0865                          ; E8 8E 07
        jmp     L_00EE                          ; EB 15
        pop     si                              ; 5E
        push    word ptr [si]                   ; FF 34
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _SEG1_1AFF                  ; 9A FF FF 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_00EE
L_00EE:
        jmp     L_01BD                          ; E9 CC 00
        pop     si                              ; 5E
        mov     cx, word ptr [si + 0x1c]        ; 8B 4C 1C
        jcxz    L_0124                          ; E3 2D
        push    cx                              ; 51
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 0x1c], ax        ; 89 44 1C
        push    word ptr [si + 0x1e]            ; FF 74 1E
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A F9 00 00 00 [FIXUP]
        push    si                              ; 56
        call    L_0629                          ; E8 1D 05
        xor     ax, ax                          ; 33 C0
        push    si                              ; 56
        push    ax                              ; 50
        push    ax                              ; 50
        mov     word ptr [si + 0xa], ax         ; 89 44 0A
        mov     word ptr [si + 6], ax           ; 89 44 06
        mov     word ptr [si + 0x10], ax        ; 89 44 10
        mov     word ptr [si + 0x12], ax        ; 89 44 12
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_13A4                          ; E8 82 12
        xor     ax, ax                          ; 33 C0
;   [conditional branch target (if/else)] L_0124
L_0124:
        jmp     L_01BD                          ; E9 96 00
        mov     ax, 0x200                       ; B8 00 02
        push    ax                              ; 50
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        jmp     L_016A                          ; EB 37
        push    ax                              ; 50
        push    word ptr [si + 2]               ; FF 74 02
        lea     di, [bp - 0x28]                 ; 8D 7E D8
        push    ss                              ; 16
        push    di                              ; 57
        call    far _SEG1_6121                  ; 9A FF FF 00 00 [FIXUP]
        push    ss                              ; 16
        push    di                              ; 57
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_64DE                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0164                          ; 75 12
        pop     ax                              ; 58
        pop     ax                              ; 58
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [si + 0x28], ax        ; 89 44 28
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [si + 0x26], ax        ; 89 44 26
        jmp     L_01BD                          ; EB 5B
        nop                                     ; 90
        push    ax                              ; 50
;   [conditional branch target (if/else)] L_0164
L_0164:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
;   [unconditional branch target] L_016A
L_016A:
        call    L_0DB7                          ; E8 4A 0C
        jmp     L_01BD                          ; EB 4E
        pop     si                              ; 5E
        push    di                              ; 57
        push    di                              ; 57
        lea     di, [bp - 0x20]                 ; 8D 7E E0
        push    ss                              ; 16
        push    di                              ; 57
        call    far _SEG1_199A                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_09CE                          ; E8 43 08
        push    ss                              ; 16
        push    di                              ; 57
        call    far _SEG1_1A93                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01BD                          ; EB 29
        pop     si                              ; 5E
        push    word ptr [si + 0x1c]            ; FF 74 1C
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A 04 01 00 00 [FIXUP]
        push    word ptr [si + 0x1e]            ; FF 74 1E
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A 99 01 00 00 [FIXUP]
        push    si                              ; 56
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01BD                          ; EB 10
        call    L_17C5                          ; E8 15 16
        push    si                              ; 56
        call    L_1779                          ; E8 C5 15
        jmp     L_01BD                          ; EB 07
        call    L_17A9                          ; E8 F0 15
        push    si                              ; 56
        call    L_17F9                          ; E8 3C 16
;   [unconditional branch target] L_01BD
L_01BD:
        jmp     L_021E                          ; EB 5F
        push    cx                              ; 51
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0368                          ; E8 A2 01
        jmp     L_021E                          ; EB 56
        pop     si                              ; 5E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_021E                          ; EB 50
        pop     si                              ; 5E
        push    di                              ; 57
        call    L_0538                          ; E8 65 03
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _SEG1_6369                  ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far _SEG1_6369                  ; 9A D9 01 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        pop     dx                              ; 5A
        push    di                              ; 57
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        sub     ax, si                          ; 2B C6
        push    ax                              ; 50
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        sub     ax, cx                          ; 2B C1
        push    ax                              ; 50
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        shl     si, 1                           ; D1 E6
        add     ax, si                          ; 03 C6
        push    ax                              ; 50
        mov     ax, word ptr es:[bx + 0xa]      ; 26 8B 47 0A
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        div     bx                              ; F7 F3
        mul     bx                              ; F7 E3
        shl     cx, 1                           ; D1 E1
        add     ax, cx                          ; 03 C1
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far _SEG1_204A                  ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_021E
L_021E:
        jmp     L_0272                          ; EB 52
        pop     si                              ; 5E
        or      cl, ch                          ; 0A CD
        mov     byte ptr [si + 0x31], cl        ; 88 4C 31
        jmp     L_0272                          ; EB 4A
        push    cx                              ; 51
        call    L_040F                          ; E8 E3 01
        jmp     L_0272                          ; EB 44
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0818                          ; E8 DF 05
        jmp     L_0272                          ; EB 37
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    cx                              ; 51
        call    L_069D                          ; E8 58 04
        jmp     L_0272                          ; EB 2B
        push    cx                              ; 51
        call    L_0430                          ; E8 E5 01
        jmp     L_0272                          ; EB 25
        push    cx                              ; 51
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg wSeg
        ; --> GLOBALHANDLE(WORD wSeg) -> DWORD
        call    far KERNEL.GLOBALHANDLE         ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_524                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0272                          ; EB 11
        push    cx                              ; 51
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_04DE                          ; E8 76 02
        push    si                              ; 56
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_13A4                          ; E8 32 11
;   [loop start (also forward branch)] L_0272
L_0272:
        jmp     L_02D3                          ; EB 5F
        push    cx                              ; 51
        push    word ptr [si + 2]               ; FF 74 02
        call    far _SEG1_34BF                  ; 9A FF FF 00 00 [FIXUP]
        call    L_1582                          ; E8 02 13
        jmp     L_02D3                          ; EB 51
        pop     si                              ; 5E
        mov     ax, 0xffff                      ; B8 FF FF
        or      cx, cx                          ; 0B C9
        jb      L_0272                          ; 72 E8
        cmp     cx, word ptr [si + 0x10]        ; 3B 4C 10
        jg      L_0272                          ; 7F E3
        push    si                              ; 56
        push    cx                              ; 51
        call    L_164C                          ; E8 B8 13
        jmp     L_02D3                          ; EB 3D
        pop     si                              ; 5E
        mov     ax, 0xffff                      ; B8 FF FF
        cmp     byte ptr [si + 0x33], 0         ; 80 7C 33 00
        jne     L_0272                          ; 75 D2
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        jmp     L_02D3                          ; EB 2E
        push    cx                              ; 51
        call    L_031E                          ; E8 75 00
        or      dx, dx                          ; 0B D2
        je      L_02D3                          ; 74 26
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lpszDest (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lpszDest (low/offset)
        push    dx                              ; 52
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_02C8                          ; EB 0A
        push    cx                              ; 51
        call    L_031E                          ; E8 5C 00
        or      dx, dx                          ; 0B D2
        je      L_02D3                          ; 74 0D
        push    dx                              ; 52
        push    ax                              ; 50
;   [unconditional branch target] L_02C8
L_02C8:
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        push    si                              ; 56
        call    L_035C                          ; E8 8A 00
        pop     ax                              ; 58
;   [branch target] L_02D3
L_02D3:
        jmp     L_0310                          ; EB 3B
        pop     si                              ; 5E
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        jmp     L_0310                          ; EB 35
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    cx                              ; 51
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        push    ax                              ; 50
        call    L_14EA                          ; E8 FE 11
        push    si                              ; 56
        push    ax                              ; 50
        call    L_1582                          ; E8 91 12
        jmp     L_0310                          ; EB 1D
        push    ax                              ; 50
        push    cx                              ; 51
        call    L_0B78                          ; E8 80 08
        jmp     L_0311                          ; EB 17
        push    ax                              ; 50
        push    cx                              ; 51
        call    L_0C10                          ; E8 11 09
        jmp     L_0311                          ; EB 10
        pop     si                              ; 5E
        push    di                              ; 57
        push    ax                              ; 50
        push    cx                              ; 51
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_679B                  ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0310
L_0310:
        cdq                                     ; 99
;   [unconditional branch target] L_0311
L_0311:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Allocation / initialization routine (2 alloc APIs).

;-------------------------------------------------------------------------
; sub_031E   offset=0x031E  size=24 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;-------------------------------------------------------------------------
;   [sub-routine] L_031E
L_031E:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        xor     dx, dx                          ; 33 D2
        mov     ax, 0xffff                      ; B8 FF FF
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        cmp     cx, word ptr [si + 0x10]        ; 3B 4C 10
        jge     L_0355                          ; 7D 23
        push    word ptr [si + 0x1c]            ; FF 74 1C
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        add     bx, bx                          ; 03 DB
        mov     es, dx                          ; 8E C2
        push    word ptr es:[bx]                ; 26 FF 37
        push    word ptr [si + 0x1c]            ; FF 74 1C
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [si + 0x1e]            ; FF 74 1E
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A 36 03 00 00 [FIXUP]
        pop     ax                              ; 58
;   [error/early exit] L_0355
L_0355:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Thin wrapper around GLOBALUNLOCK(hMem) -> BOOL.

;-------------------------------------------------------------------------
; sub_035C   offset=0x035C  size=6 instr  segment=seg22.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;-------------------------------------------------------------------------
;   [sub-routine] L_035C
L_035C:
        pop     ax                              ; 58
        pop     bx                              ; 5B
        push    ax                              ; 50
        push    word ptr [bx + 0x1e]            ; FF 77 1E
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 48 03 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (70 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0368   offset=0x0368  size=70 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_11DA, L_1779, L_17A9
;-------------------------------------------------------------------------
;   [sub-routine] L_0368
L_0368:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        cmp     word ptr [si + 0x10], 0         ; 83 7C 10 00
        jne     L_037C                          ; 75 03
        jmp     L_0407                          ; E9 8B 00
;   [conditional branch target (if/else)] L_037C
L_037C:
        mov     di, word ptr [si + 6]           ; 8B 7C 06
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 7                           ; 3D 07 00
        ja      L_03CB                          ; 77 44
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x3bb]        ; 2E FF A7 BB 03
        inc     di                              ; 47
        jmp     L_03CB                          ; EB 39
        sub     di, word ptr [si + 0xe]         ; 2B 7C 0E
        jmp     L_03CB                          ; EB 34
        add     di, word ptr [si + 0xe]         ; 03 7C 0E
        jmp     L_03CB                          ; EB 2F
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        sub     ax, word ptr [si + 0xe]         ; 2B 44 0E
        imul    word ptr [bp + 4]               ; F7 6E 04
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        jge     L_03CB                          ; 7D 1A
        sub     di, di                          ; 2B FF
        jmp     L_03CB                          ; EB 16
        mov     di, word ptr [si + 0x10]        ; 8B 7C 10
        dec     di                              ; 4F
        jmp     L_03CB                          ; EB 10
        mov     ax, 0x8f03                      ; B8 03 8F
        add     dx, word ptr [bp + si - 0x68fd] ; 03 92 03 97
        add     bx, word ptr [si - 0x34fd]      ; 03 9C 03 CB
        add     si, word ptr [bx + di - 0x4afd] ; 03 B1 03 B5
        add     cx, word ptr [bp + di + 0x1044] ; 03 8B 44 10
        sub     ax, word ptr [si + 0xe]         ; 2B 44 0E
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     ax, di                          ; 3B C7
        jge     L_03DA                          ; 7D 02
        mov     di, ax                          ; 8B F8
;   [conditional branch target (if/else)] L_03DA
L_03DA:
        push    si                              ; 56
        call    L_17A9                          ; E8 CB 13
        push    si                              ; 56
        push    di                              ; 57
        call    L_11DA                          ; E8 F7 0D
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        cmp     word ptr [si + 0xa], ax         ; 39 44 0A
        jl      L_0400                          ; 7C 15
        add     ax, word ptr [si + 0xe]         ; 03 44 0E
        dec     ax                              ; 48
        push    ax                              ; 50
        push    word ptr [si + 0x10]            ; FF 74 10
        call    far _SEG1_523C                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     ax, word ptr [si + 0xa]         ; 3B 44 0A
        jge     L_0403                          ; 7D 03
;   [conditional branch target (if/else)] L_0400
L_0400:
        mov     word ptr [si + 0xa], ax         ; 89 44 0A
;   [conditional branch target (if/else)] L_0403
L_0403:
        push    si                              ; 56
        call    L_1779                          ; E8 72 13
;   [fall-through exit] L_0407
L_0407:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Internal helper (18 instructions).

;-------------------------------------------------------------------------
; sub_040F   offset=0x040F  size=18 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_13A4
;-------------------------------------------------------------------------
;   [sub-routine] L_040F
L_040F:
        ;   = cProc <12> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     byte ptr [si + 0x31], 1         ; C6 44 31 01
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_13A4                          ; E8 7D 0F
        sub     ax, ax                          ; 2B C0
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Allocation / initialization routine (2 alloc APIs).

;-------------------------------------------------------------------------
; sub_0430   offset=0x0430  size=71 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;
; Near calls (internal): L_13A4
;-------------------------------------------------------------------------
;   [sub-routine] L_0430
L_0430:
        ;   = cProc <12> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jl      L_0449                          ; 7C 08
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jl      L_044F                          ; 7C 06
;   [conditional branch target (if/else)] L_0449
L_0449:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_04D6                          ; E9 87 00
;   [conditional branch target (if/else)] L_044F
L_044F:
        dec     word ptr [si + 0x10]            ; FF 4C 10
        mov     di, word ptr [si + 0x10]        ; 8B 7C 10
        sub     di, word ptr [bp + 4]           ; 2B 7E 04
        shl     di, 1                           ; D1 E7
        cmp     byte ptr [si + 0x33], 0         ; 80 7C 33 00
        je      L_0466                          ; 74 06
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        inc     ax                              ; 40
        add     di, ax                          ; 03 F8
;   [conditional branch target (if/else)] L_0466
L_0466:
        push    word ptr [si + 0x1c]            ; FF 74 1C
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A 37 07 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        add     ax, 2                           ; 05 02 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    dx                              ; 52
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    di                              ; 57
        call    far _SEG1_5284                  ; 9A BA 04 00 00 [FIXUP]
        cmp     byte ptr [si + 0x33], 0         ; 80 7C 33 00
        je      L_04BE                          ; 74 27
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp + 4]           ; 03 46 04
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        inc     ax                              ; 40
        push    dx                              ; 52
        push    ax                              ; 50
        push    dx                              ; 52
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        sub     ax, word ptr [bp + 4]           ; 2B 46 04
        push    ax                              ; 50
        call    far _SEG1_5284                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_04BE
L_04BE:
        push    word ptr [si + 0x1c]            ; FF 74 1C
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 63 03 00 00 [FIXUP]
        push    si                              ; 56
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_13A4                          ; E8 D1 0E
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
;   [fall-through exit] L_04D6
L_04D6:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (43 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_04DE   offset=0x04DE  size=43 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_13A4, L_15F3
;-------------------------------------------------------------------------
;   [sub-routine] L_04DE
L_04DE:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        cmp     byte ptr [si + 0x33], 0         ; 80 7C 33 00
        je      L_04FD                          ; 74 0E
        cmp     word ptr [bp + 4], -1           ; 83 7E 04 FF
        jl      L_04FD                          ; 7C 08
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jle     L_0502                          ; 7E 05
;   [conditional branch target (if/else)] L_04FD
L_04FD:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0530                          ; EB 2E
;   [conditional branch target (if/else)] L_0502
L_0502:
        cmp     word ptr [bp + 4], -1           ; 83 7E 04 FF
        jne     L_051A                          ; 75 12
        sub     di, di                          ; 2B FF
;   [loop start] L_050A
L_050A:
        cmp     word ptr [si + 0x10], di        ; 39 7C 10
        jle     L_0524                          ; 7E 15
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_15F3                          ; E8 DC 10
        inc     di                              ; 47
        jmp     L_050A                          ; EB F0
;   [conditional branch target (if/else)] L_051A
L_051A:
        push    si                              ; 56
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_15F3                          ; E8 CF 10
;   [conditional branch target (if/else)] L_0524
L_0524:
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_13A4                          ; E8 76 0E
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_0530
L_0530:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Mixed routine using: GETTEXTMETRICS, LOCALALLOC.

;-------------------------------------------------------------------------
; sub_0538   offset=0x0538  size=99 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETTEXTMETRICS
;   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
;
; Near calls (internal): L_0629, L_1442
;-------------------------------------------------------------------------
;   [sub-routine] L_0538
L_0538:
        ;   = cProc <42> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x2a                        ; 83 EC 2A
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, 0x38                        ; B8 38 00
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        jne     L_055B                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_0621                          ; E9 C6 00
;   [conditional branch target (if/else)] L_055B
L_055B:
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    di                              ; 57
        call    far _SEG1_6257                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_6221                  ; 9A 76 05 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        push    si                              ; 56
        mov     ax, 0xfff8                      ; B8 F8 FF
        push    ax                              ; 50
        call    far _SEG1_6221                  ; 9A 85 05 00 00 [FIXUP]
        mov     word ptr [di], ax               ; 89 05
        mov     word ptr [di + 2], si           ; 89 75 02
        push    si                              ; 56
        mov     ax, 0xfff4                      ; B8 F4 FF
        push    ax                              ; 50
        call    far _SEG1_6221                  ; 9A 92 05 00 00 [FIXUP]
        mov     word ptr [di + 4], ax           ; 89 45 04
        push    si                              ; 56
        mov     ax, 0xfff0                      ; B8 F0 FF
        push    ax                              ; 50
        call    far _SEG1_6221                  ; 9A 9A 00 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        test    byte ptr [bp - 4], 4            ; F6 46 FC 04
        jne     L_05A3                          ; 75 04
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        jmp     L_05A5                          ; EB 02
;   [conditional branch target (if/else)] L_05A3
L_05A3:
        sub     al, al                          ; 2A C0
;   [unconditional branch target] L_05A5
L_05A5:
        mov     byte ptr [di + 0x31], al        ; 88 45 31
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        and     al, 2                           ; 24 02
        mov     byte ptr [di + 0x32], al        ; 88 45 32
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        and     al, 1                           ; 24 01
        mov     byte ptr [di + 0x34], al        ; 88 45 34
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        and     al, 8                           ; 24 08
        mov     byte ptr [di + 0x33], al        ; 88 45 33
        mov     word ptr [di + 0x1c], 0         ; C7 45 1C 00 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [di + 6], ax           ; 89 45 06
        mov     word ptr [di + 0xa], ax         ; 89 45 0A
        sub     al, al                          ; 2A C0
        mov     byte ptr [di + 0x36], al        ; 88 45 36
        mov     byte ptr [di + 0x35], al        ; 88 45 35
        mov     word ptr [di + 8], 0xffff       ; C7 45 08 FF FF
        push    di                              ; 57
        call    L_0629                          ; E8 4B 00
        push    si                              ; 56
        call    far _SEG1_37F9                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        push    ax                              ; 50
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        push    word ptr [bp - 0x28]            ; FF 76 D8
        call    far _SEG1_381A                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        mov     word ptr [di + 0x24], ax        ; 89 45 24
        push    di                              ; 57
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_1442                          ; E8 3A 0E
        mov     word ptr [di + 0xe], ax         ; 89 45 0E
        push    word ptr [di + 2]               ; FF 75 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [di + 0x24]        ; 8B 45 24
;   [fall-through exit] L_0621
L_0621:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Thin wrapper around GLOBALALLOC(wFlags, dwBytes) -> HANDLE.

;-------------------------------------------------------------------------
; sub_0629   offset=0x0629  size=19 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_0629
L_0629:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        sub     ax, ax                          ; 2B C0
        mov     word ptr [si + 0x22], ax        ; 89 44 22
        mov     word ptr [si + 0x20], ax        ; 89 44 20
        ; constant BLACKNESS
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A C9 06 00 00 [FIXUP]
        mov     word ptr [si + 0x1e], ax        ; 89 44 1E
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Mixed routine using: GLOBALREALLOC.

;-------------------------------------------------------------------------
; sub_0652   offset=0x0652  size=34 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GLOBALREALLOC(HANDLE hMem, DWORD dwBytes, WORD wFlags) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_0652
L_0652:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     di, word ptr [si + 0x12]        ; 8B 7C 12
        shl     di, 1                           ; D1 E7
        add     di, 0x40                        ; 83 C7 40
        cmp     byte ptr [si + 0x33], 0         ; 80 7C 33 00
        je      L_0673                          ; 74 08
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        add     ax, 0x20                        ; 05 20 00
        add     di, ax                          ; 03 F8
;   [conditional branch target (if/else)] L_0673
L_0673:
        push    word ptr [si + 0x1c]            ; FF 74 1C
        ;   ^ arg hMem
        mov     ax, di                          ; 8B C7
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wFlags
        ; --> GLOBALREALLOC(HANDLE hMem, DWORD dwBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.GLOBALREALLOC        ; 9A 1F 07 00 00 [FIXUP]
        mov     word ptr [si + 0x1c], ax        ; 89 44 1C
        or      ax, ax                          ; 0B C0
        jne     L_068E                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0695                          ; EB 07
;   [conditional branch target (if/else)] L_068E
L_068E:
        add     word ptr [si + 0x12], 0x20      ; 83 44 12 20
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_0695
L_0695:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Allocation / initialization routine (3 alloc APIs).

;-------------------------------------------------------------------------
; sub_069D   offset=0x069D  size=146 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALREALLOC(HANDLE hMem, DWORD dwBytes, WORD wFlags) -> HANDLE
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;   LSTRLEN(LPSTR lpsz) -> INT
;
; Near calls (internal): L_0652, L_13A4
;-------------------------------------------------------------------------
;   [sub-routine] L_069D
L_069D:
        ;   = cProc <14> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        cmp     word ptr [si + 0x1c], 0         ; 83 7C 1C 00
        jne     L_06E3                          ; 75 32
        or      di, di                          ; 0B FF
        je      L_06C0                          ; 74 0B
        cmp     di, -1                          ; 83 FF FF
        je      L_06C0                          ; 74 06
;   [loop start] L_06BA
L_06BA:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0810                          ; E9 50 01
;   [conditional branch target (if/else)] L_06C0
L_06C0:
        ; constant BLACKNESS
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 0x1c], ax        ; 89 44 1C
        mov     word ptr [si + 8], 0xffff       ; C7 44 08 FF FF
        sub     ax, ax                          ; 2B C0
        mov     word ptr [si + 6], ax           ; 89 44 06
        mov     word ptr [si + 0x10], ax        ; 89 44 10
        mov     word ptr [si + 0x12], ax        ; 89 44 12
        mov     word ptr [si + 0xa], ax         ; 89 44 0A
;   [conditional branch target (if/else)] L_06E3
L_06E3:
        cmp     di, -1                          ; 83 FF FF
        jne     L_06EB                          ; 75 03
        mov     di, word ptr [si + 0x10]        ; 8B 7C 10
;   [conditional branch target (if/else)] L_06EB
L_06EB:
        mov     ax, di                          ; 8B C7
        cmp     word ptr [si + 0x10], ax        ; 39 44 10
        jb      L_06BA                          ; 72 C8
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lpsz (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A C9 02 00 00 [FIXUP]
        inc     ax                              ; 40
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        add     ax, word ptr [si + 0x22]        ; 03 44 22
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        cmp     ax, word ptr [si + 0x20]        ; 3B 44 20
        jbe     L_0733                          ; 76 27
        and     al, 0                           ; 24 00
        add     ah, 1                           ; 80 C4 01
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [si + 0x1e]            ; FF 74 1E
        ;   ^ arg hMem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg dwBytes (high/segment)
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg dwBytes (low/offset)
        push    ax                              ; 50
        ;   ^ arg wFlags
        ; --> GLOBALREALLOC(HANDLE hMem, DWORD dwBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.GLOBALREALLOC        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_072D                          ; 75 06
;   [loop start] L_0727
L_0727:
        mov     ax, 0xfffe                      ; B8 FE FF
        jmp     L_0810                          ; E9 E3 00
;   [conditional branch target (if/else)] L_072D
L_072D:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [si + 0x20], ax        ; 89 44 20
;   [conditional branch target (if/else)] L_0733
L_0733:
        push    word ptr [si + 0x1e]            ; FF 74 1E
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A 50 03 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [si + 0x22]        ; 8B 44 22
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _SEG1_5284                  ; 9A B5 07 00 00 [FIXUP]
        push    word ptr [si + 0x1e]            ; FF 74 1E
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF 07 00 00 [FIXUP]
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        cmp     word ptr [si + 0x10], ax        ; 39 44 10
        jl      L_076F                          ; 7C 08
        push    si                              ; 56
        call    L_0652                          ; E8 E7 FE
        or      ax, ax                          ; 0B C0
        je      L_0727                          ; 74 B8
;   [conditional branch target (if/else)] L_076F
L_076F:
        push    word ptr [si + 0x1c]            ; FF 74 1C
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A 6A 04 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        sub     ax, di                          ; 2B C7
        shl     ax, 1                           ; D1 E0
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        cmp     byte ptr [si + 0x33], 0         ; 80 7C 33 00
        je      L_0799                          ; 74 06
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        add     word ptr [bp - 0xe], ax         ; 01 46 F2
;   [conditional branch target (if/else)] L_0799
L_0799:
        mov     ax, di                          ; 8B C7
        shl     ax, 1                           ; D1 E0
        add     word ptr [bp - 0xc], ax         ; 01 46 F4
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        add     ax, 2                           ; 05 02 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far _SEG1_5284                  ; 9A ED 07 00 00 [FIXUP]
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     ax, word ptr [si + 0x22]        ; 8B 44 22
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     word ptr [si + 0x22], ax        ; 01 44 22
        cmp     byte ptr [si + 0x33], 0         ; 80 7C 33 00
        je      L_07F8                          ; 74 2A
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        add     ax, di                          ; 03 C7
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        push    dx                              ; 52
        push    ax                              ; 50
        inc     ax                              ; 40
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        sub     ax, di                          ; 2B C7
        push    ax                              ; 50
        call    far _SEG1_5284                  ; 9A 8D 04 00 00 [FIXUP]
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
;   [conditional branch target (if/else)] L_07F8
L_07F8:
        inc     word ptr [si + 0x10]            ; FF 44 10
        push    word ptr [si + 0x1c]            ; FF 74 1C
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A C2 04 00 00 [FIXUP]
        push    si                              ; 56
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    di                              ; 57
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_13A4                          ; E8 96 0B
        mov     ax, di                          ; 8B C7
;   [fall-through exit] L_0810
L_0810:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Pure computation / dispatcher (37 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0818   offset=0x0818  size=37 instr  segment=seg22.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_069D, L_14EA
;-------------------------------------------------------------------------
;   [sub-routine] L_0818
L_0818:
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
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     word ptr [bp - 4], 0xffff       ; C7 46 FC FF FF
        cmp     byte ptr [si + 0x32], 0         ; 80 7C 32 00
        je      L_084C                          ; 74 18
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_14EA                          ; E8 A1 0C
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_084C
L_084C:
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_069D                          ; E8 44 FE
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Description (heuristic):
;   Pure computation / dispatcher (94 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0865   offset=0x0865  size=94 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=12, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0865
L_0865:
        ;   = cProc <24> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x18                        ; 83 EC 18
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        mov     cx, word ptr [si + 0x24]        ; 8B 4C 24
        idiv    cx                              ; F7 F9
        or      dx, dx                          ; 0B D2
        jne     L_0893                          ; 75 03
        jmp     L_0955                          ; E9 C2 00
;   [conditional branch target (if/else)] L_0893
L_0893:
        mov     bx, word ptr [si + 2]           ; 8B 5C 02
        test    byte ptr [bx + 0x32], 0x80      ; F6 47 32 80
        je      L_08A8                          ; 74 0C
        mov     ax, word ptr [0x198]            ; A1 98 01
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0x19a]            ; A1 9A 01
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_08A8
L_08A8:
        mov     bx, word ptr [si + 2]           ; 8B 5C 02
        mov     al, byte ptr [bx + 0x32]        ; 8A 47 32
        and     al, 0xc0                        ; 24 C0
        cmp     al, 0xc0                        ; 3C C0
        jne     L_08BD                          ; 75 09
        mov     ax, word ptr [0x196]            ; A1 96 01
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [conditional branch target (if/else)] L_08BD
L_08BD:
        mov     bx, word ptr [si + 2]           ; 8B 5C 02
        test    byte ptr [bx + 0x32], 0x20      ; F6 47 32 20
        je      L_08CF                          ; 74 09
        mov     ax, word ptr [0x192]            ; A1 92 01
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
;   [conditional branch target (if/else)] L_08CF
L_08CF:
        push    word ptr [si + 2]               ; FF 74 02
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_6121                  ; 9A FA 08 00 00 [FIXUP]
        push    word ptr [si + 2]               ; FF 74 02
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_60EA                  ; 9A 06 09 00 00 [FIXUP]
        mov     bx, word ptr [si + 2]           ; 8B 5C 02
        test    byte ptr [bx + 0x33], 0x40      ; F6 47 33 40
        je      L_0916                          ; 74 24
        push    word ptr [si]                   ; FF 34
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_6121                  ; 9A 3D 01 00 00 [FIXUP]
        push    word ptr [si]                   ; FF 34
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_60EA                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        sub     word ptr [bp - 0xe], ax         ; 29 46 F2
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        sub     word ptr [bp - 0xc], ax         ; 29 46 F4
;   [conditional branch target (if/else)] L_0916
L_0916:
        push    word ptr [si + 2]               ; FF 74 02
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp + 6]           ; 03 46 06
        add     ax, word ptr [bp - 0x10]        ; 03 46 F0
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        mov     cx, word ptr [si + 0x24]        ; 8B 4C 24
        idiv    cx                              ; F7 F9
        imul    cx                              ; F7 E9
        mov     cx, word ptr [bp - 4]           ; 8B 4E FC
        shl     cx, 1                           ; D1 E1
        add     ax, cx                          ; 03 C1
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_204A                  ; 9A 1A 02 00 00 [FIXUP]
;   [fall-through exit] L_0955
L_0955:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Internal helper (13 instructions).

;-------------------------------------------------------------------------
; sub_095C   offset=0x095C  size=13 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_095C
L_095C:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        or      si, si                          ; 0B F6
        jge     L_096C                          ; 7D 05
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_096F                          ; EB 03
;   [conditional branch target (if/else)] L_096C
L_096C:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_096F
L_096F:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (45 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0976   offset=0x0976  size=45 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0976
L_0976:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        or      si, si                          ; 0B F6
        jge     L_0987                          ; 7D 06
        mov     ax, si                          ; 8B C6
        neg     ax                              ; F7 D8
        jmp     L_0989                          ; EB 02
;   [conditional branch target (if/else)] L_0987
L_0987:
        mov     ax, si                          ; 8B C6
;   [fall-through exit] L_0989
L_0989:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        cwde                                    ; 98
        mov     si, ax                          ; 8B F0
        cmp     al, 0x60                        ; 3C 60
        jle     L_09A2                          ; 7E 04
        cmp     al, 0x7b                        ; 3C 7B
        jl      L_09C0                          ; 7C 1E
;   [conditional branch target (if/else)] L_09A2
L_09A2:
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        cwde                                    ; 98
        cmp     ax, 0xdf                        ; 3D DF 00
        jle     L_09B1                          ; 7E 06
        cwde                                    ; 98
        cmp     ax, 0xf7                        ; 3D F7 00
        jl      L_09C0                          ; 7C 0F
;   [conditional branch target (if/else)] L_09B1
L_09B1:
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        cwde                                    ; 98
        cmp     ax, 0xf7                        ; 3D F7 00
        jle     L_09C5                          ; 7E 0B
        cwde                                    ; 98
        cmp     ax, 0xff                        ; 3D FF 00
        jge     L_09C5                          ; 7D 05
;   [conditional branch target (if/else)] L_09C0
L_09C0:
        lea     ax, [si - 0x20]                 ; 8D 44 E0
        jmp     L_09C7                          ; EB 02
;   [conditional branch target (if/else)] L_09C5
L_09C5:
        mov     ax, si                          ; 8B C6
;   [fall-through exit] L_09C7
L_09C7:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x2]   HANDLE    (1 use)

; Description (heuristic):
;   Mixed routine using: GETSTOCKOBJECT, SELECTOBJECT, SETBKMODE (+2 more).

;-------------------------------------------------------------------------
; sub_09CE   offset=0x09CE  size=164 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETSTOCKOBJECT(INT iObject) -> HANDLE
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   SETBKMODE(HDC hDC, INT iMode) -> INT
;   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
;   LSTRLEN(LPSTR lpsz) -> INT
;
; Near calls (internal): L_031E, L_035C, L_1442, L_164C, L_1779, L_17A9
;-------------------------------------------------------------------------
;   [sub-routine] L_09CE
L_09CE:
        ;   = cProc <84> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x54                        ; 83 EC 54
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        lea     ax, [bp - 0x3c]                 ; 8D 46 C4
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        mov     word ptr [bp - 0x42], ss        ; 8C 56 BE
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      si, si                          ; 0B F6
        jne     L_09F5                          ; 75 03
        jmp     L_0B70                          ; E9 7B 01
;   [conditional branch target (if/else)] L_09F5
L_09F5:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _SEG1_1BAC                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 6C 0B 00 00 [FIXUP]
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hDC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg iMode
        ; --> SETBKMODE(HDC hDC, INT iMode) -> INT
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        call    L_17A9                          ; E8 89 0D
        push    word ptr [si]                   ; FF 34
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _SEG1_1AFF                  ; 9A E7 00 00 00 [FIXUP]
        cmp     byte ptr [si + 0x31], 0         ; 80 7C 31 00
        jne     L_0A3A                          ; 75 03
        jmp     L_0B61                          ; E9 27 01
;   [conditional branch target (if/else)] L_0A3A
L_0A3A:
        cmp     word ptr [si + 0x10], 0         ; 83 7C 10 00
        jg      L_0A43                          ; 7F 03
        jmp     L_0B61                          ; E9 1E 01
;   [conditional branch target (if/else)] L_0A43
L_0A43:
        push    word ptr [si + 2]               ; FF 74 02
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_6121                  ; 9A D8 08 00 00 [FIXUP]
        push    si                              ; 56
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_1442                          ; E8 EA 09
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        sub     ax, word ptr [si + 6]           ; 2B 44 06
        push    ax                              ; 50
        call    far _SEG1_523C                  ; 9A F4 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        sub     di, di                          ; 2B FF
;   [loop start] L_0A6A
L_0A6A:
        cmp     word ptr [bp - 0x4c], di        ; 39 7E B4
        jg      L_0A72                          ; 7F 03
        jmp     L_0B61                          ; E9 EF 00
;   [conditional branch target (if/else)] L_0A72
L_0A72:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [si + 0x24]        ; 03 44 24
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    si                              ; 56
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        add     ax, di                          ; 03 C7
        push    ax                              ; 50
        call    L_031E                          ; E8 99 F8
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     word ptr [bp - 0x3e], dx        ; 89 56 C2
        cmp     dx, -1                          ; 83 FA FF
        jne     L_0A95                          ; 75 05
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_0AE4                          ; 74 4F
;   [conditional branch target (if/else)] L_0A95
L_0A95:
        mov     bx, word ptr [si + 2]           ; 8B 5C 02
        test    byte ptr [bx + 0x33], 8         ; F6 47 33 08
        jne     L_0AC1                          ; 75 23
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        push    word ptr [bp - 0x40]            ; FF 76 C0
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        ;   ^ arg lpsz (high/segment)
        push    word ptr [bp - 0x40]            ; FF 76 C0
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A F9 06 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0AE0                          ; EB 1F
;   [conditional branch target (if/else)] L_0AC1
L_0AC1:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        push    word ptr [bp - 0x40]            ; FF 76 C0
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_4D62                  ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0AE0
L_0AE0:
        push    si                              ; 56
        call    L_035C                          ; E8 78 F8
;   [conditional branch target (if/else)] L_0AE4
L_0AE4:
        push    si                              ; 56
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        add     ax, di                          ; 03 C7
        mov     word ptr [bp - 0x4a], ax        ; 89 46 B6
        push    ax                              ; 50
        call    L_164C                          ; E8 5B 0B
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        mov     ax, word ptr [bp - 0x4a]        ; 8B 46 B6
        cmp     word ptr [si + 0x2a], ax        ; 39 44 2A
        jg      L_0B09                          ; 7F 0D
        mov     ax, word ptr [si + 0x2c]        ; 8B 44 2C
        cmp     word ptr [bp - 0x4a], ax        ; 39 46 B6
        jg      L_0B09                          ; 7F 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0B0B                          ; EB 02
;   [conditional branch target (if/else)] L_0B09
L_0B09:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0B0B
L_0B0B:
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
        cmp     byte ptr [si + 0x35], 0         ; 80 7C 35 00
        jne     L_0B20                          ; 75 0C
        cmp     byte ptr [si + 0x30], 0         ; 80 7C 30 00
        jne     L_0B20                          ; 75 06
        cmp     word ptr [bp - 0x54], 0         ; 83 7E AC 00
        jne     L_0B4A                          ; 75 2A
;   [conditional branch target (if/else)] L_0B20
L_0B20:
        cmp     byte ptr [si + 0x35], 0         ; 80 7C 35 00
        jne     L_0B2C                          ; 75 06
        cmp     byte ptr [si + 0x30], 0         ; 80 7C 30 00
        je      L_0B57                          ; 74 2B
;   [conditional branch target (if/else)] L_0B2C
L_0B2C:
        cmp     byte ptr [si + 0x2e], 0         ; 80 7C 2E 00
        je      L_0B57                          ; 74 25
        cmp     word ptr [bp - 0x46], 0         ; 83 7E BA 00
        jne     L_0B3E                          ; 75 06
        cmp     word ptr [bp - 0x54], 0         ; 83 7E AC 00
        jne     L_0B4A                          ; 75 0C
;   [conditional branch target (if/else)] L_0B3E
L_0B3E:
        cmp     word ptr [bp - 0x46], 0         ; 83 7E BA 00
        je      L_0B57                          ; 74 13
        cmp     byte ptr [si + 0x2f], 0         ; 80 7C 2F 00
        je      L_0B57                          ; 74 0D
;   [conditional branch target (if/else)] L_0B4A
L_0B4A:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_66A3                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0B57
L_0B57:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        inc     di                              ; 47
        jmp     L_0A6A                          ; E9 09 FF
;   [unconditional branch target] L_0B61
L_0B61:
        push    si                              ; 56
        call    L_1779                          ; E8 14 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hDC
        push    word ptr [bp - 0x4e]            ; FF 76 B2
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
;   [fall-through exit] L_0B70
L_0B70:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Pure computation / dispatcher (63 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0B78   offset=0x0B78  size=63 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0CD0, L_0DB7
;-------------------------------------------------------------------------
;   [sub-routine] L_0B78
L_0B78:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        cmp     word ptr [si + 0x10], 0         ; 83 7C 10 00
        je      L_0C08                          ; 74 7F
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     ax, 0x21                        ; 3D 21 00
        je      L_0B9A                          ; 74 09
        ja      L_0BCD                          ; 77 3A
        cmp     ax, 0x10                        ; 3D 10 00
        je      L_0BBE                          ; 74 26
        jmp     L_0C08                          ; EB 6E
;   [conditional branch target (if/else)] L_0B9A
L_0B9A:
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        neg     ax                              ; F7 D8
        mov     di, ax                          ; 8B F8
;   [loop start] L_0BA1
L_0BA1:
        cmp     word ptr [bp + 6], 0x100        ; 81 7E 06 00 01
        jne     L_0BE8                          ; 75 40
        push    si                              ; 56
        push    di                              ; 57
        call    L_0CD0                          ; E8 23 01
        jmp     L_0C08                          ; EB 59
;   [loop start] L_0BAF
L_0BAF:
        mov     di, word ptr [si + 0xe]         ; 8B 7C 0E
        jmp     L_0BA1                          ; EB ED
;   [loop start] L_0BB4
L_0BB4:
        mov     di, 0xffff                      ; BF FF FF
        jmp     L_0BA1                          ; EB E8
;   [loop start] L_0BB9
L_0BB9:
        ; constant WM_CREATE
        mov     di, 1                           ; BF 01 00
        jmp     L_0BA1                          ; EB E3
;   [conditional branch target (if/else)] L_0BBE
L_0BBE:
        cmp     word ptr [bp + 6], 0x101        ; 81 7E 06 01 01
        jne     L_0C08                          ; 75 43
        cmp     byte ptr [si + 0x2e], 0         ; 80 7C 2E 00
        je      L_0C08                          ; 74 3D
        jmp     L_0BFA                          ; EB 2D
;   [conditional branch target (if/else)] L_0BCD
L_0BCD:
        cmp     ax, 0x22                        ; 3D 22 00
        je      L_0BAF                          ; 74 DD
        cmp     ax, 0x25                        ; 3D 25 00
        jb      L_0C08                          ; 72 31
        cmp     ax, 0x26                        ; 3D 26 00
        jbe     L_0BB4                          ; 76 D8
        cmp     ax, 0x27                        ; 3D 27 00
        jb      L_0C08                          ; 72 27
        cmp     ax, 0x28                        ; 3D 28 00
        jbe     L_0BB9                          ; 76 D3
        jmp     L_0C08                          ; EB 20
;   [conditional branch target (if/else)] L_0BE8
L_0BE8:
        cmp     byte ptr [si + 0x35], 0         ; 80 7C 35 00
        jne     L_0BF4                          ; 75 06
        cmp     byte ptr [si + 0x30], 0         ; 80 7C 30 00
        je      L_0C08                          ; 74 14
;   [conditional branch target (if/else)] L_0BF4
L_0BF4:
        cmp     byte ptr [si + 0x2e], 0         ; 80 7C 2E 00
        jne     L_0C08                          ; 75 0E
;   [unconditional branch target] L_0BFA
L_0BFA:
        push    si                              ; 56
        mov     ax, 0x403                       ; B8 03 04
        push    ax                              ; 50
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        call    L_0DB7                          ; E8 AF 01
;   [error/early exit] L_0C08
L_0C08:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Pure computation / dispatcher (81 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0C10   offset=0x0C10  size=81 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0CD0, L_0DB7, L_1164, L_11A2, L_14EA
;-------------------------------------------------------------------------
;   [sub-routine] L_0C10
L_0C10:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        cmp     word ptr [si + 0x10], 0         ; 83 7C 10 00
        jne     L_0C24                          ; 75 03
        jmp     L_0CC8                          ; E9 A4 00
;   [conditional branch target (if/else)] L_0C24
L_0C24:
        cmp     word ptr [bp + 4], 0x20         ; 83 7E 04 20
        jne     L_0C46                          ; 75 1C
        cmp     byte ptr [si + 0x33], 0         ; 80 7C 33 00
        je      L_0C41                          ; 74 11
        push    si                              ; 56
        push    word ptr [si + 0xa]             ; FF 74 0A
        call    L_11A2                          ; E8 6B 05
        push    si                              ; 56
        push    word ptr [si + 0xa]             ; FF 74 0A
        call    L_1164                          ; E8 26 05
        jmp     L_0CC8                          ; E9 87 00
;   [conditional branch target (if/else)] L_0C41
L_0C41:
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        jmp     L_0CB6                          ; EB 70
;   [conditional branch target (if/else)] L_0C46
L_0C46:
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far _SEG1_2E78                  ; 9A 62 0C 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_0C58                          ; 7D 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0C5A                          ; EB 02
;   [conditional branch target (if/else)] L_0C58
L_0C58:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0C5A
L_0C5A:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        call    far _SEG1_2E78                  ; 9A E9 0C 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_0C6F                          ; 7D 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0C71                          ; EB 02
;   [conditional branch target (if/else)] L_0C6F
L_0C6F:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0C71
L_0C71:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        je      L_0C88                          ; 74 10
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jb      L_0C88                          ; 72 0A
        cmp     word ptr [bp + 4], 0x20         ; 83 7E 04 20
        jae     L_0C88                          ; 73 04
        add     word ptr [bp + 4], 0x40         ; 83 46 04 40
;   [conditional branch target (if/else)] L_0C88
L_0C88:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     byte ptr [bp - 4], 0            ; C6 46 FC 00
        push    si                              ; 56
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [si + 0xa]             ; FF 74 0A
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_0CA7                          ; 74 02
        sub     ax, ax                          ; 2B C0
;   [conditional branch target (if/else)] L_0CA7
L_0CA7:
        push    ax                              ; 50
        call    L_14EA                          ; E8 3F 08
        mov     di, ax                          ; 8B F8
        cmp     di, -1                          ; 83 FF FF
        je      L_0CC8                          ; 74 16
        push    si                              ; 56
        sub     ax, word ptr [si + 0xa]         ; 2B 44 0A
;   [unconditional branch target] L_0CB6
L_0CB6:
        push    ax                              ; 50
        call    L_0CD0                          ; E8 16 00
        push    si                              ; 56
        mov     ax, 0x403                       ; B8 03 04
        push    ax                              ; 50
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        call    L_0DB7                          ; E8 EF 00
;   [error/early exit] L_0CC8
L_0CC8:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Pure computation / dispatcher (102 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0CD0   offset=0x0CD0  size=102 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0DB7, L_11A2, L_1269, L_1334, L_15F3, L_164C, L_16A2, L_16F2
;-------------------------------------------------------------------------
;   [sub-routine] L_0CD0
L_0CD0:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        cmp     byte ptr [si + 0x35], 0         ; 80 7C 35 00
        je      L_0CE4                          ; 74 03
        jmp     L_0DAF                          ; E9 CB 00
;   [conditional branch target (if/else)] L_0CE4
L_0CE4:
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far _SEG1_2E78                  ; 9A 00 0D 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_0CF6                          ; 7D 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0CF8                          ; EB 02
;   [conditional branch target (if/else)] L_0CF6
L_0CF6:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0CF8
L_0CF8:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        call    far _SEG1_2E78                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_0D0D                          ; 7D 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0D0F                          ; EB 02
;   [conditional branch target (if/else)] L_0D0D
L_0D0D:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0D0F
L_0D0F:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0D62                          ; 74 4A
        cmp     byte ptr [si + 0x33], 0         ; 80 7C 33 00
        je      L_0D62                          ; 74 44
        cmp     byte ptr [si + 0x30], 0         ; 80 7C 30 00
        jne     L_0D62                          ; 75 3E
        mov     di, word ptr [si + 0xa]         ; 8B 7C 0A
        push    si                              ; 56
        push    di                              ; 57
        call    L_11A2                          ; E8 76 04
        push    si                              ; 56
        push    di                              ; 57
        call    L_1334                          ; E8 03 06
        push    si                              ; 56
        push    di                              ; 57
        push    si                              ; 56
        push    di                              ; 57
        call    L_164C                          ; E8 14 09
        or      ax, ax                          ; 0B C0
        jne     L_0D41                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0D43                          ; EB 02
;   [conditional branch target (if/else)] L_0D41
L_0D41:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0D43
L_0D43:
        push    ax                              ; 50
        call    L_15F3                          ; E8 AC 08
        push    si                              ; 56
        push    di                              ; 57
        call    L_16F2                          ; E8 A6 09
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     byte ptr [si + 0x30], 1         ; C6 44 30 01
        push    si                              ; 56
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        push    dx                              ; 52
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_0DB7                          ; E8 55 00
;   [conditional branch target (if/else)] L_0D62
L_0D62:
        push    si                              ; 56
        push    word ptr [si + 0xa]             ; FF 74 0A
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_16A2                          ; E8 36 09
        mov     di, ax                          ; 8B F8
        push    si                              ; 56
        push    di                              ; 57
        call    L_11A2                          ; E8 2F 04
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_0D86                          ; 74 0D
        cmp     byte ptr [si + 0x30], 0         ; 80 7C 30 00
        jne     L_0D86                          ; 75 07
        push    si                              ; 56
        push    di                              ; 57
        call    L_1269                          ; E8 E5 04
        jmp     L_0DAF                          ; EB 29
;   [conditional branch target (if/else)] L_0D86
L_0D86:
        push    si                              ; 56
        push    di                              ; 57
        call    L_16F2                          ; E8 67 09
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        cmp     byte ptr [si + 0x30], 0         ; 80 7C 30 00
        je      L_0D9D                          ; 74 06
        push    si                              ; 56
        mov     ax, 0x402                       ; B8 02 04
        jmp     L_0DA5                          ; EB 08
;   [conditional branch target (if/else)] L_0D9D
L_0D9D:
        mov     byte ptr [si + 0x30], 1         ; C6 44 30 01
        push    si                              ; 56
        mov     ax, 0x401                       ; B8 01 04
;   [unconditional branch target] L_0DA5
L_0DA5:
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_0DB7                          ; E8 08 00
;   [fall-through exit] L_0DAF
L_0DAF:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (323 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0DB7   offset=0x0DB7  size=323 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (first 8 of 12): L_0368, L_095C, L_0976, L_10EF, L_1132, L_1269, L_1285, L_12D1 ...
;-------------------------------------------------------------------------
;   [sub-routine] L_0DB7
L_0DB7:
        ;   = cProc <14> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        cmp     word ptr [si + 0x10], 0         ; 83 7C 10 00
        jne     L_0DCB                          ; 75 03
        jmp     L_10E7                          ; E9 1C 03
;   [conditional branch target (if/else)] L_0DCB
L_0DCB:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x202                       ; 3D 02 02
        jne     L_0DD6                          ; 75 03
        jmp     L_1054                          ; E9 7E 02
;   [conditional branch target (if/else)] L_0DD6
L_0DD6:
        jle     L_0DDB                          ; 7E 03
        jmp     L_10C7                          ; E9 EC 02
;   [conditional branch target (if/else)] L_0DDB
L_0DDB:
        cmp     ax, 0x200                       ; 3D 00 02
        jne     L_0DE3                          ; 75 03
        jmp     L_0ECE                          ; E9 EB 00
;   [conditional branch target (if/else)] L_0DE3
L_0DE3:
        cmp     ax, 0x201                       ; 3D 01 02
        je      L_0DF4                          ; 74 0C
        jmp     L_10E7                          ; E9 FC 02
;   [loop start] L_0DEB
L_0DEB:
        cmp     byte ptr [si + 0x35], 0         ; 80 7C 35 00
        je      L_0E22                          ; 74 31
        jmp     L_10E7                          ; E9 F3 02
;   [loop start (also forward branch)] L_0DF4
L_0DF4:
        push    word ptr [si + 2]               ; FF 74 02
        call    far _SEG1_34BF                  ; 9A 79 02 00 00 [FIXUP]
        cmp     byte ptr [si + 0x2e], 0         ; 80 7C 2E 00
        je      L_0E05                          ; 74 03
        jmp     L_10E7                          ; E9 E2 02
;   [conditional branch target (if/else)] L_0E05
L_0E05:
        cmp     byte ptr [si + 0x30], 0         ; 80 7C 30 00
        je      L_0E0E                          ; 74 03
        jmp     L_10E7                          ; E9 D9 02
;   [conditional branch target (if/else)] L_0E0E
L_0E0E:
        mov     byte ptr [si + 0x35], 1         ; C6 44 35 01
        push    word ptr [si + 2]               ; FF 74 02
        call    far _SEG1_325A                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [si + 2]               ; FF 74 02
        call    far _SEG1_2E91                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0E22
L_0E22:
        cmp     word ptr [bp + 8], 0x203        ; 81 7E 08 03 02
        jne     L_0E2D                          ; 75 04
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        jmp     L_0E2F                          ; EB 02
;   [conditional branch target (if/else)] L_0E2D
L_0E2D:
        sub     al, al                          ; 2A C0
;   [unconditional branch target] L_0E2F
L_0E2F:
        mov     byte ptr [si + 0x37], al        ; 88 44 37
        push    word ptr [si + 2]               ; FF 74 02
        lea     ax, [si + 0x14]                 ; 8D 44 14
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_6121                  ; 9A 4C 0A 00 00 [FIXUP]
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1722                          ; E8 D9 08
        mov     word ptr [si + 0x2c], ax        ; 89 44 2C
        mov     word ptr [si + 0x2a], ax        ; 89 44 2A
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far _SEG1_2E78                  ; 9A 4B 0C 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_0E66                          ; 7D 0A
        cmp     byte ptr [si + 0x33], 0         ; 80 7C 33 00
        je      L_0E66                          ; 74 04
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        jmp     L_0E68                          ; EB 02
;   [conditional branch target (if/else)] L_0E66
L_0E66:
        sub     al, al                          ; 2A C0
;   [unconditional branch target] L_0E68
L_0E68:
        mov     byte ptr [si + 0x2e], al        ; 88 44 2E
        or      al, al                          ; 0A C0
        jne     L_0E91                          ; 75 22
        push    si                              ; 56
        push    word ptr [si + 0x2a]            ; FF 74 2A
        call    L_164C                          ; E8 D6 07
        ; constant WM_CREATE
        mov     cl, 1                           ; B1 01
        mov     byte ptr [si + 0x2f], cl        ; 88 4C 2F
        sub     ch, ch                          ; 2A ED
        cmp     ax, cx                          ; 3B C1
        je      L_0E88                          ; 74 07
        push    si                              ; 56
        push    word ptr [si + 0x2a]            ; FF 74 2A
        call    L_1334                          ; E8 AC 04
;   [conditional branch target (if/else)] L_0E88
L_0E88:
        push    si                              ; 56
        push    word ptr [si + 0x2a]            ; FF 74 2A
        call    L_1285                          ; E8 F6 03
        jmp     L_0EAC                          ; EB 1B
;   [conditional branch target (if/else)] L_0E91
L_0E91:
        push    si                              ; 56
        push    word ptr [si + 0x2a]            ; FF 74 2A
        call    L_164C                          ; E8 B4 07
        or      ax, ax                          ; 0B C0
        jne     L_0EA0                          ; 75 04
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        jmp     L_0EA2                          ; EB 02
;   [conditional branch target (if/else)] L_0EA0
L_0EA0:
        sub     al, al                          ; 2A C0
;   [unconditional branch target] L_0EA2
L_0EA2:
        mov     byte ptr [si + 0x2f], al        ; 88 44 2F
        push    si                              ; 56
        push    word ptr [si + 0x2a]            ; FF 74 2A
        call    L_1334                          ; E8 88 04
;   [unconditional branch target] L_0EAC
L_0EAC:
        push    si                              ; 56
        push    word ptr [si + 0x2a]            ; FF 74 2A
        call    L_1269                          ; E8 B6 03
        cmp     word ptr [bp + 8], 0x401        ; 81 7E 08 01 04
        je      L_0ECE                          ; 74 14
        push    word ptr [si + 2]               ; FF 74 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x190                       ; B8 90 01
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_5527                  ; 9A 4D 0F 00 00 [FIXUP]
;   [loop start (also forward branch)] L_0ECE
L_0ECE:
        cmp     word ptr [bp + 8], 0x402        ; 81 7E 08 02 04
        jne     L_0EE0                          ; 75 0B
        cmp     byte ptr [si + 0x30], 0         ; 80 7C 30 00
        jne     L_0EE6                          ; 75 0B
;   [loop start] L_0EDB
L_0EDB:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0EE8                          ; EB 08
;   [conditional branch target (if/else)] L_0EE0
L_0EE0:
        cmp     byte ptr [si + 0x35], 0         ; 80 7C 35 00
        je      L_0EDB                          ; 74 F5
;   [conditional branch target (if/else)] L_0EE6
L_0EE6:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0EE8
L_0EE8:
        or      ax, ax                          ; 0B C0
        je      L_0EEF                          ; 74 03
        jmp     L_10E7                          ; E9 F8 01
;   [conditional branch target (if/else)] L_0EEF
L_0EEF:
        mov     ax, word ptr [si + 0x14]        ; 8B 44 14
        mov     word ptr [bp + 4], ax           ; 89 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     word ptr [si + 0x26], ax        ; 89 44 26
        mov     word ptr [si + 0x28], dx        ; 89 54 28
        or      dx, dx                          ; 0B D2
        jl      L_0F0C                          ; 7C 0A
        mov     ax, word ptr [si + 0x1a]        ; 8B 44 1A
        cmp     dx, ax                          ; 3B D0
        jg      L_0F0C                          ; 7F 03
        jmp     L_0F9D                          ; E9 91 00
;   [conditional branch target (if/else)] L_0F0C
L_0F0C:
        cmp     word ptr [bp + 8], 0x200        ; 81 7E 08 00 02
        jne     L_0F51                          ; 75 3E
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_0F20                          ; 7D 07
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        neg     ax                              ; F7 D8
        jmp     L_0F26                          ; EB 06
;   [conditional branch target (if/else)] L_0F20
L_0F20:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [si + 0x1a]        ; 2B 44 1A
;   [unconditional branch target] L_0F26
L_0F26:
        mov     di, ax                          ; 8B F8
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        sub     ax, 0x190                       ; 2D 90 01
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     ax, 1                           ; 3D 01 00
        jge     L_0F3E                          ; 7D 05
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
;   [conditional branch target (if/else)] L_0F3E
L_0F3E:
        push    word ptr [si + 2]               ; FF 74 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_5527                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0F51
L_0F51:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_0F60                          ; 7D 09
        cmp     word ptr [si + 6], 0            ; 83 7C 06 00
        jne     L_0F60                          ; 75 03
        jmp     L_10E7                          ; E9 87 01
;   [conditional branch target (if/else)] L_0F60
L_0F60:
        mov     ax, word ptr [si + 0x1a]        ; 8B 44 1A
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jle     L_0F74                          ; 7E 0C
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        dec     ax                              ; 48
        cmp     ax, word ptr [si + 6]           ; 3B 44 06
        jne     L_0F74                          ; 75 03
        jmp     L_10E7                          ; E9 73 01
;   [conditional branch target (if/else)] L_0F74
L_0F74:
        push    si                              ; 56
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_0F7F                          ; 7D 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0F82                          ; EB 03
;   [conditional branch target (if/else)] L_0F7F
L_0F7F:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0F82
L_0F82:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0368                          ; E8 DF F3
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_0F94                          ; 7D 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_0F9A                          ; EB 06
;   [conditional branch target (if/else)] L_0F94
L_0F94:
        mov     ax, word ptr [si + 0x1a]        ; 8B 44 1A
        sub     ax, word ptr [si + 0x24]        ; 2B 44 24
;   [unconditional branch target] L_0F9A
L_0F9A:
        mov     word ptr [bp + 6], ax           ; 89 46 06
;   [unconditional branch target] L_0F9D
L_0F9D:
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_10EF                          ; E8 48 01
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [si + 0x2c]        ; 8B 44 2C
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jne     L_0FB5                          ; 75 03
        jmp     L_10E7                          ; E9 32 01
;   [conditional branch target (if/else)] L_0FB5
L_0FB5:
        cmp     byte ptr [si + 0x2e], 0         ; 80 7C 2E 00
        jne     L_0FD0                          ; 75 15
        push    si                              ; 56
        push    ax                              ; 50
        call    L_1334                          ; E8 74 03
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [si + 0x2c], ax        ; 89 44 2C
        mov     word ptr [si + 0x2a], ax        ; 89 44 2A
        push    si                              ; 56
        push    ax                              ; 50
        call    L_1334                          ; E8 66 03
        jmp     L_103B                          ; EB 6B
;   [conditional branch target (if/else)] L_0FD0
L_0FD0:
        mov     ax, word ptr [si + 0x2c]        ; 8B 44 2C
        cmp     word ptr [si + 0x2a], ax        ; 39 44 2A
        jne     L_0FDE                          ; 75 06
;   [loop start] L_0FD8
L_0FD8:
        push    si                              ; 56
        push    word ptr [si + 0x2a]            ; FF 74 2A
        jmp     L_102F                          ; EB 51
;   [conditional branch target (if/else)] L_0FDE
L_0FDE:
        mov     ax, word ptr [si + 0x2a]        ; 8B 44 2A
        sub     ax, word ptr [si + 0x2c]        ; 2B 44 2C
        push    ax                              ; 50
        call    L_095C                          ; E8 74 F9
        mov     cx, word ptr [si + 0x2a]        ; 8B 4C 2A
        sub     cx, word ptr [bp - 2]           ; 2B 4E FE
        push    cx                              ; 51
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        call    L_095C                          ; E8 67 F9
        cmp     ax, word ptr [bp - 0xe]         ; 3B 46 F2
        je      L_1006                          ; 74 0C
        push    si                              ; 56
        push    word ptr [si + 0x2a]            ; FF 74 2A
        push    word ptr [si + 0x2c]            ; FF 74 2C
        call    L_12D1                          ; E8 CD 02
        jmp     L_0FD8                          ; EB D2
;   [conditional branch target (if/else)] L_1006
L_1006:
        mov     ax, word ptr [si + 0x2a]        ; 8B 44 2A
        sub     ax, word ptr [si + 0x2c]        ; 2B 44 2C
        push    ax                              ; 50
        call    L_0976                          ; E8 66 F9
        mov     cx, word ptr [si + 0x2a]        ; 8B 4C 2A
        sub     cx, word ptr [bp - 2]           ; 2B 4E FE
        push    cx                              ; 51
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        call    L_0976                          ; E8 59 F9
        cmp     ax, word ptr [bp - 0xe]         ; 3B 46 F2
        jge     L_102B                          ; 7D 09
        push    si                              ; 56
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [si + 0x2c]            ; FF 74 2C
        jmp     L_1032                          ; EB 07
;   [conditional branch target (if/else)] L_102B
L_102B:
        push    si                              ; 56
        push    word ptr [si + 0x2c]            ; FF 74 2C
;   [unconditional branch target] L_102F
L_102F:
        push    word ptr [bp - 2]               ; FF 76 FE
;   [unconditional branch target] L_1032
L_1032:
        call    L_12D1                          ; E8 9C 02
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [si + 0x2c], ax        ; 89 44 2C
;   [unconditional branch target] L_103B
L_103B:
        push    si                              ; 56
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_1269                          ; E8 27 02
        jmp     L_10E7                          ; E9 A2 00
;   [loop start] L_1045
L_1045:
        cmp     byte ptr [si + 0x30], 0         ; 80 7C 30 00
        jne     L_104E                          ; 75 03
        jmp     L_10E7                          ; E9 99 00
;   [conditional branch target (if/else)] L_104E
L_104E:
        mov     byte ptr [si + 0x30], 0         ; C6 44 30 00
        jmp     L_1069                          ; EB 15
;   [unconditional branch target] L_1054
L_1054:
        cmp     byte ptr [si + 0x35], 0         ; 80 7C 35 00
        jne     L_105D                          ; 75 03
        jmp     L_10E7                          ; E9 8A 00
;   [conditional branch target (if/else)] L_105D
L_105D:
        push    word ptr [si + 2]               ; FF 74 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_55B6                  ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_1069
L_1069:
        mov     byte ptr [si + 0x35], 0         ; C6 44 35 00
        mov     byte ptr [si + 0x2e], 0         ; C6 44 2E 00
        call    far _SEG1_3273                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [si + 0x2a]            ; FF 74 2A
        push    word ptr [si + 0x2c]            ; FF 74 2C
        call    far _SEG1_524C                  ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [si + 0x2a]            ; FF 74 2A
        push    word ptr [si + 0x2c]            ; FF 74 2C
        call    far _SEG1_523C                  ; 9A 61 0A 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        jmp     L_10A0                          ; EB 0C
;   [loop start] L_1094
L_1094:
        push    si                              ; 56
        push    di                              ; 57
        mov     al, byte ptr [si + 0x2f]        ; 8A 44 2F
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_15F3                          ; E8 54 05
        inc     di                              ; 47
;   [unconditional branch target] L_10A0
L_10A0:
        cmp     word ptr [bp - 8], di           ; 39 7E F8
        jg      L_1094                          ; 7F EF
        cmp     byte ptr [si + 0x34], 0         ; 80 7C 34 00
        je      L_10E7                          ; 74 3C
        push    si                              ; 56
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1132                          ; E8 7D 00
        cmp     byte ptr [si + 0x37], 0         ; 80 7C 37 00
        je      L_10E7                          ; 74 2C
        push    si                              ; 56
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1132                          ; E8 6D 00
        jmp     L_10E7                          ; EB 20
;   [unconditional branch target] L_10C7
L_10C7:
        cmp     ax, 0x203                       ; 3D 03 02
        jne     L_10CF                          ; 75 03
        jmp     L_0DF4                          ; E9 25 FD
;   [conditional branch target (if/else)] L_10CF
L_10CF:
        cmp     ax, 0x401                       ; 3D 01 04
        jne     L_10D7                          ; 75 03
        jmp     L_0DEB                          ; E9 14 FD
;   [conditional branch target (if/else)] L_10D7
L_10D7:
        cmp     ax, 0x402                       ; 3D 02 04
        jne     L_10DF                          ; 75 03
        jmp     L_0ECE                          ; E9 EF FD
;   [conditional branch target (if/else)] L_10DF
L_10DF:
        cmp     ax, 0x403                       ; 3D 03 04
        jne     L_10E7                          ; 75 03
        jmp     L_1045                          ; E9 5E FF
;   [error/early exit] L_10E7
L_10E7:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Pure computation / dispatcher (29 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_10EF   offset=0x10EF  size=29 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_10EF
L_10EF:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        lea     ax, [si + 0x14]                 ; 8D 44 14
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _SEG1_64DE                  ; 9A 4A 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1128                          ; 74 1B
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        mov     cx, word ptr [si + 0x24]        ; 8B 4C 24
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     cx, word ptr [si + 0x10]        ; 8B 4C 10
        sub     cx, word ptr [si + 6]           ; 2B 4C 06
        cmp     ax, cx                          ; 3B C1
        jge     L_1128                          ; 7D 05
        add     ax, word ptr [si + 6]           ; 03 44 06
        jmp     L_112B                          ; EB 03
;   [conditional branch target (if/else)] L_1128
L_1128:
        mov     ax, 0xffff                      ; B8 FF FF
;   [fall-through exit] L_112B
L_112B:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Pure computation / dispatcher (27 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1132   offset=0x1132  size=27 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1132
L_1132:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        push    word ptr [si]                   ; FF 34
        ; constant WM_COMMAND
        mov     ax, 0x111                       ; B8 11 01
        push    ax                              ; 50
        push    word ptr [si + 4]               ; FF 74 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Pure computation / dispatcher (34 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1164   offset=0x1164  size=34 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_1132, L_1334, L_15F3, L_164C
;-------------------------------------------------------------------------
;   [sub-routine] L_1164
L_1164:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        push    si                              ; 56
        push    di                              ; 57
        call    L_1334                          ; E8 C0 01
        push    si                              ; 56
        push    di                              ; 57
        push    si                              ; 56
        push    di                              ; 57
        call    L_164C                          ; E8 D1 04
        or      ax, ax                          ; 0B C0
        jne     L_1184                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_1186                          ; EB 02
;   [conditional branch target (if/else)] L_1184
L_1184:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_1186
L_1186:
        push    ax                              ; 50
        call    L_15F3                          ; E8 69 04
        cmp     byte ptr [si + 0x34], 0         ; 80 7C 34 00
        je      L_119A                          ; 74 0A
        push    si                              ; 56
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1132                          ; E8 98 FF
;   [error/early exit] L_119A
L_119A:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (30 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_11A2   offset=0x11A2  size=30 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_11DA, L_16D2
;-------------------------------------------------------------------------
;   [sub-routine] L_11A2
L_11A2:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        cmp     word ptr [si + 6], di           ; 39 7C 06
        jle     L_11B6                          ; 7E 04
        push    si                              ; 56
        push    di                              ; 57
        jmp     L_11CF                          ; EB 19
;   [conditional branch target (if/else)] L_11B6
L_11B6:
        push    si                              ; 56
        call    L_16D2                          ; E8 18 05
        cmp     ax, di                          ; 3B C7
        jge     L_11D2                          ; 7D 14
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, di                          ; 8B C7
        sub     ax, word ptr [si + 0xe]         ; 2B 44 0E
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far _SEG1_524C                  ; 9A F2 11 00 00 [FIXUP]
        push    ax                              ; 50
;   [unconditional branch target] L_11CF
L_11CF:
        call    L_11DA                          ; E8 08 00
;   [error/early exit] L_11D2
L_11D2:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (63 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_11DA   offset=0x11DA  size=63 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_1779, L_17A9
;-------------------------------------------------------------------------
;   [sub-routine] L_11DA
L_11DA:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        dec     ax                              ; 48
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    di                              ; 57
        call    far _SEG1_524C                  ; 9A ED 12 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _SEG1_523C                  ; 9A FC 12 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        cmp     word ptr [si + 6], di           ; 39 7C 06
        je      L_1261                          ; 74 5E
        push    si                              ; 56
        call    L_17A9                          ; E8 A2 05
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        sub     ax, di                          ; 2B C7
        imul    word ptr [si + 0x24]            ; F7 6C 24
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [si + 6], di           ; 89 7C 06
        push    word ptr [si + 2]               ; FF 74 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        cmp     word ptr [si + 0x10], ax        ; 39 44 10
        jle     L_1237                          ; 7E 13
        push    di                              ; 57
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        sub     ax, word ptr [si + 0xe]         ; 2B 44 0E
        push    ax                              ; 50
        call    far _SEG1_520B                  ; 9A 1D 14 00 00 [FIXUP]
        jmp     L_1239                          ; EB 02
;   [conditional branch target (if/else)] L_1237
L_1237:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_1239
L_1239:
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 2B 14 00 00 [FIXUP]
        push    word ptr [si + 2]               ; FF 74 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_4709                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [si + 2]               ; FF 74 02
        call    far _SEG1_34BF                  ; 9A F8 0D 00 00 [FIXUP]
        push    si                              ; 56
        call    L_1779                          ; E8 18 05
;   [error/early exit] L_1261
L_1261:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Internal helper (14 instructions).

;-------------------------------------------------------------------------
; sub_1269   offset=0x1269  size=14 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_1779, L_17A9
;-------------------------------------------------------------------------
;   [sub-routine] L_1269
L_1269:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        push    si                              ; 56
        call    L_17A9                          ; E8 35 05
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [si + 0xa], ax         ; 89 44 0A
        push    si                              ; 56
        call    L_1779                          ; E8 FB 04
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (39 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1285   offset=0x1285  size=39 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_1334, L_15F3, L_164C
;-------------------------------------------------------------------------
;   [sub-routine] L_1285
L_1285:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        add     ax, word ptr [si + 0xe]         ; 03 44 0E
        inc     ax                              ; 40
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        sub     di, di                          ; 2B FF
        jmp     L_12C4                          ; EB 26
;   [loop start] L_129E
L_129E:
        cmp     word ptr [bp + 4], di           ; 39 7E 04
        je      L_12BB                          ; 74 18
        cmp     word ptr [si + 6], di           ; 39 7C 06
        jg      L_12BB                          ; 7F 13
        cmp     word ptr [bp - 2], di           ; 39 7E FE
        jl      L_12BB                          ; 7C 0E
        push    si                              ; 56
        push    di                              ; 57
        call    L_164C                          ; E8 9A 03
        or      ax, ax                          ; 0B C0
        je      L_12BB                          ; 74 05
        push    si                              ; 56
        push    di                              ; 57
        call    L_1334                          ; E8 79 00
;   [conditional branch target (if/else)] L_12BB
L_12BB:
        push    si                              ; 56
        push    di                              ; 57
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_15F3                          ; E8 30 03
        inc     di                              ; 47
;   [unconditional branch target] L_12C4
L_12C4:
        cmp     word ptr [si + 0x10], di        ; 39 7C 10
        jg      L_129E                          ; 7F D5
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (44 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_12D1   offset=0x12D1  size=44 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_1334, L_164C
;-------------------------------------------------------------------------
;   [sub-routine] L_12D1
L_12D1:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        add     ax, word ptr [si + 0xe]         ; 03 44 0E
        inc     ax                              ; 40
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _SEG1_524C                  ; 9A 7D 10 00 00 [FIXUP]
        inc     ax                              ; 40
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _SEG1_523C                  ; 9A 8C 10 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        jmp     L_1327                          ; EB 23
;   [loop start] L_1304
L_1304:
        cmp     word ptr [bp + 6], di           ; 39 7E 06
        je      L_1326                          ; 74 1D
        cmp     word ptr [si + 6], di           ; 39 7C 06
        jg      L_1326                          ; 7F 18
        cmp     word ptr [bp - 2], di           ; 39 7E FE
        jl      L_1326                          ; 7C 13
        push    si                              ; 56
        push    di                              ; 57
        call    L_164C                          ; E8 34 03
        mov     cl, byte ptr [si + 0x2f]        ; 8A 4C 2F
        sub     ch, ch                          ; 2A ED
        cmp     ax, cx                          ; 3B C1
        je      L_1326                          ; 74 05
        push    si                              ; 56
        push    di                              ; 57
        call    L_1334                          ; E8 0E 00
;   [conditional branch target (if/else)] L_1326
L_1326:
        inc     di                              ; 47
;   [unconditional branch target] L_1327
L_1327:
        cmp     word ptr [bp - 6], di           ; 39 7E FA
        jg      L_1304                          ; 7F D8
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Pure computation / dispatcher (46 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1334   offset=0x1334  size=46 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_16D2, L_1779, L_17A9
;-------------------------------------------------------------------------
;   [sub-routine] L_1334
L_1334:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        cmp     word ptr [si + 6], di           ; 39 7C 06
        jg      L_139C                          ; 7F 55
        push    si                              ; 56
        call    L_16D2                          ; E8 87 03
        cmp     ax, di                          ; 3B C7
        jl      L_139C                          ; 7C 4D
        cmp     byte ptr [si + 0x31], 0         ; 80 7C 31 00
        je      L_139C                          ; 74 47
        push    word ptr [si + 2]               ; FF 74 02
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_6121                  ; 9A DC 13 00 00 [FIXUP]
        mov     ax, di                          ; 8B C7
        sub     ax, word ptr [si + 6]           ; 2B 44 06
        imul    word ptr [si + 0x24]            ; F7 6C 24
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        add     ax, word ptr [si + 0x24]        ; 03 44 24
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    si                              ; 56
        call    L_17A9                          ; E8 32 04
        push    word ptr [si + 2]               ; FF 74 02
        call    far _SEG1_37F9                  ; 9A E4 13 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_66A3                  ; 9A 53 0B 00 00 [FIXUP]
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _SEG1_381A                  ; 9A 00 14 00 00 [FIXUP]
        push    si                              ; 56
        call    L_1779                          ; E8 DD 03
;   [error/early exit] L_139C
L_139C:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (69 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_13A4   offset=0x13A4  size=69 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_09CE, L_1582
;-------------------------------------------------------------------------
;   [sub-routine] L_13A4
L_13A4:
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
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        cmp     byte ptr [si + 0x31], 0         ; 80 7C 31 00
        je      L_1436                          ; 74 7B
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_13D3                          ; 74 12
        cmp     word ptr [si + 0x10], 0         ; 83 7C 10 00
        je      L_13D3                          ; 74 0C
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        add     ax, word ptr [si + 0xe]         ; 03 44 0E
        inc     ax                              ; 40
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jl      L_1436                          ; 7C 63
;   [conditional branch target (if/else)] L_13D3
L_13D3:
        push    word ptr [si + 2]               ; FF 74 02
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_6121                  ; 9A 55 14 00 00 [FIXUP]
        push    word ptr [si + 2]               ; FF 74 02
        call    far _SEG1_37F9                  ; 9A E0 05 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    si                              ; 56
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_09CE                          ; E8 D5 F5
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far _SEG1_381A                  ; 9A F7 05 00 00 [FIXUP]
        push    word ptr [si + 2]               ; FF 74 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        cmp     word ptr [si + 0x10], ax        ; 39 44 10
        jle     L_1423                          ; 7E 13
        push    word ptr [si + 6]               ; FF 74 06
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far _SEG1_520B                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1425                          ; EB 02
;   [conditional branch target (if/else)] L_1423
L_1423:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_1425
L_1425:
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 1A 06 00 00 [FIXUP]
        push    si                              ; 56
        push    word ptr [si + 8]               ; FF 74 08
        call    L_1582                          ; E8 4C 01
;   [conditional branch target (if/else)] L_1436
L_1436:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Description (heuristic):
;   Pure computation / dispatcher (25 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1442   offset=0x1442  size=25 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1442
L_1442:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        push    word ptr [si + 2]               ; FF 74 02
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_6121                  ; 9A 3B 0E 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_1464                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_1466                          ; EB 02
;   [conditional branch target (if/else)] L_1464
L_1464:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_1466
L_1466:
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cdq                                     ; 99
        mov     bx, word ptr [si + 0x24]        ; 8B 5C 24
        idiv    bx                              ; F7 FB
        add     ax, cx                          ; 03 C1
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Mixed routine using: ANSIUPPER.

;-------------------------------------------------------------------------
; sub_147A   offset=0x147A  size=45 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   ANSIUPPER(LPSTR lpsz) -> LPSTR
;-------------------------------------------------------------------------
;   [sub-routine] L_147A
L_147A:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        jmp     L_149B                          ; EB 19
;   [loop start] L_1482
L_1482:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_1498                          ; 75 0A
        cmp     byte ptr [bp - 2], 0            ; 80 7E FE 00
        jne     L_14E1                          ; 75 4D
        sub     ax, ax                          ; 2B C0
        jmp     L_14E4                          ; EB 4C
;   [conditional branch target (if/else)] L_1498
L_1498:
        inc     word ptr [bp + 4]               ; FF 46 04
;   [unconditional branch target] L_149B
L_149B:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        sub     ah, ah                          ; 2A E4
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A BF 14 00 00 [FIXUP]
        mov     byte ptr [bp - 2], al           ; 88 46 FE
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     cl, byte ptr es:[bx]            ; 26 8A 0F
        sub     ch, ch                          ; 2A ED
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        ;   ^ arg lpsz (high/segment)
        push    cx                              ; 51
        ;   ^ arg lpsz (low/offset)
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        cmp     al, byte ptr [bp - 6]           ; 3A 46 FA
        je      L_1482                          ; 74 B7
        or      al, al                          ; 0A C0
        jne     L_14D4                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_14E4                          ; EB 10
;   [conditional branch target (if/else)] L_14D4
L_14D4:
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        cmp     byte ptr [bp - 4], al           ; 38 46 FC
        jge     L_14E1                          ; 7D 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_14E4                          ; EB 03
;   [conditional branch target (if/else)] L_14E1
L_14E1:
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
;   [fall-through exit] L_14E4
L_14E4:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Pure computation / dispatcher (67 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_14EA   offset=0x14EA  size=67 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_031E, L_035C, L_147A
;-------------------------------------------------------------------------
;   [sub-routine] L_14EA
L_14EA:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_1506                          ; 74 09
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_150B                          ; 75 05
;   [loop start (also forward branch)] L_1506
L_1506:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_157A                          ; EB 6F
;   [conditional branch target (if/else)] L_150B
L_150B:
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        inc     di                              ; 47
        cmp     word ptr [si + 0x10], di        ; 39 7C 10
        jg      L_1524                          ; 7F 10
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_151E                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_1522                          ; EB 04
;   [conditional branch target (if/else)] L_151E
L_151E:
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        dec     ax                              ; 48
;   [unconditional branch target] L_1522
L_1522:
        mov     di, ax                          ; 8B F8
;   [conditional branch target (if/else)] L_1524
L_1524:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_152E                          ; 74 04
        mov     ax, di                          ; 8B C7
        jmp     L_1530                          ; EB 02
;   [conditional branch target (if/else)] L_152E
L_152E:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_1530
L_1530:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        dec     ax                              ; 48
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jg      L_1542                          ; 7F 06
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_1506                          ; 74 C4
;   [conditional branch target (if/else)] L_1542
L_1542:
        cmp     word ptr [si + 0x10], 1         ; 83 7C 10 01
        jl      L_1506                          ; 7C BE
;   [loop start] L_1548
L_1548:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    si                              ; 56
        push    di                              ; 57
        call    L_031E                          ; E8 CB ED
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_147A                          ; E8 22 FF
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    si                              ; 56
        call    L_035C                          ; E8 FD ED
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jg      L_156B                          ; 7F 04
        mov     ax, di                          ; 8B C7
        jmp     L_157A                          ; EB 0F
;   [conditional branch target (if/else)] L_156B
L_156B:
        inc     di                              ; 47
        cmp     word ptr [si + 0x10], di        ; 39 7C 10
        jne     L_1573                          ; 75 02
        sub     di, di                          ; 2B FF
;   [conditional branch target (if/else)] L_1573
L_1573:
        cmp     word ptr [bp - 6], di           ; 39 7E FA
        jne     L_1548                          ; 75 D0
        jmp     L_1506                          ; EB 8C
;   [fall-through exit] L_157A
L_157A:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; Description (heuristic):
;   Pure computation / dispatcher (45 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1582   offset=0x1582  size=45 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_11A2, L_1334, L_1779, L_17A9
;-------------------------------------------------------------------------
;   [sub-routine] L_1582
L_1582:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     word ptr [bp - 2], 0xffff       ; C7 46 FE FF FF
        cmp     byte ptr [si + 0x33], 0         ; 80 7C 33 00
        jne     L_15E9                          ; 75 52
        cmp     word ptr [bp + 4], -1           ; 83 7E 04 FF
        jl      L_15E9                          ; 7C 4C
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jge     L_15E9                          ; 7D 44
        push    si                              ; 56
        call    L_17A9                          ; E8 00 02
        cmp     word ptr [si + 8], -1           ; 83 7C 08 FF
        je      L_15BD                          ; 74 0E
        push    si                              ; 56
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_11A2                          ; E8 EC FB
        push    si                              ; 56
        push    word ptr [si + 8]               ; FF 74 08
        call    L_1334                          ; E8 77 FD
;   [conditional branch target (if/else)] L_15BD
L_15BD:
        cmp     word ptr [bp + 4], -1           ; 83 7E 04 FF
        je      L_15DA                          ; 74 17
        push    si                              ; 56
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_11A2                          ; E8 D8 FB
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [si + 8], ax           ; 89 44 08
        mov     word ptr [si + 0xa], ax         ; 89 44 0A
        push    si                              ; 56
        push    ax                              ; 50
        call    L_1334                          ; E8 5C FD
        jmp     L_15DF                          ; EB 05
;   [conditional branch target (if/else)] L_15DA
L_15DA:
        mov     word ptr [si + 8], 0xffff       ; C7 44 08 FF FF
;   [unconditional branch target] L_15DF
L_15DF:
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    si                              ; 56
        call    L_1779                          ; E8 90 01
;   [error/early exit] L_15E9
L_15E9:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Allocation / initialization routine (2 alloc APIs).

;-------------------------------------------------------------------------
; sub_15F3   offset=0x15F3  size=34 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;-------------------------------------------------------------------------
;   [sub-routine] L_15F3
L_15F3:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        cmp     byte ptr [si + 0x33], 0         ; 80 7C 33 00
        jne     L_1611                          ; 75 0E
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_1645                          ; 74 3C
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [si + 8], ax           ; 89 44 08
        jmp     L_1645                          ; EB 34
;   [conditional branch target (if/else)] L_1611
L_1611:
        push    word ptr [si + 0x1c]            ; FF 74 1C
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A 72 16 00 00 [FIXUP]
        mov     cx, word ptr [si + 0x10]        ; 8B 4C 10
        shl     cx, 1                           ; D1 E1
        add     cx, ax                          ; 03 C8
        mov     bx, dx                          ; 8B DA
        add     cx, word ptr [bp + 6]           ; 03 4E 06
        mov     word ptr [bp - 4], cx           ; 89 4E FC
        mov     word ptr [bp - 2], bx           ; 89 5E FE
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_1635                          ; 74 04
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        jmp     L_1637                          ; EB 02
;   [conditional branch target (if/else)] L_1635
L_1635:
        sub     al, al                          ; 2A C0
;   [unconditional branch target] L_1637
L_1637:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     byte ptr es:[bx], al            ; 26 88 07
        push    word ptr [si + 0x1c]            ; FF 74 1C
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 94 16 00 00 [FIXUP]
;   [error/early exit] L_1645
L_1645:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Allocation / initialization routine (2 alloc APIs).

;-------------------------------------------------------------------------
; sub_164C   offset=0x164C  size=36 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;-------------------------------------------------------------------------
;   [sub-routine] L_164C
L_164C:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        cmp     byte ptr [si + 0x33], 0         ; 80 7C 33 00
        jne     L_166E                          ; 75 0E
        cmp     word ptr [si + 8], di           ; 39 7C 08
        jne     L_166A                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_169A                          ; EB 30
;   [conditional branch target (if/else)] L_166A
L_166A:
        sub     ax, ax                          ; 2B C0
        jmp     L_169A                          ; EB 2C
;   [conditional branch target (if/else)] L_166E
L_166E:
        push    word ptr [si + 0x1c]            ; FF 74 1C
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A 73 07 00 00 [FIXUP]
        mov     cx, word ptr [si + 0x10]        ; 8B 4C 10
        shl     cx, 1                           ; D1 E1
        add     cx, ax                          ; 03 C8
        mov     bx, dx                          ; 8B DA
        add     cx, di                          ; 03 CF
        mov     word ptr [bp - 4], cx           ; 89 4E FC
        mov     word ptr [bp - 2], bx           ; 89 5E FE
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        mov     di, ax                          ; 8B F8
        push    word ptr [si + 0x1c]            ; FF 74 1C
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 5B 07 00 00 [FIXUP]
        mov     ax, di                          ; 8B C7
;   [fall-through exit] L_169A
L_169A:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Internal helper (20 instructions).

;-------------------------------------------------------------------------
; sub_16A2   offset=0x16A2  size=20 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_16A2
L_16A2:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     word ptr [bp + 6], ax           ; 01 46 06
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_16BC                          ; 7D 07
        mov     word ptr [bp + 6], 0            ; C7 46 06 00 00
        jmp     L_16C8                          ; EB 0C
;   [conditional branch target (if/else)] L_16BC
L_16BC:
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jl      L_16C8                          ; 7C 04
        dec     ax                              ; 48
        mov     word ptr [bp + 6], ax           ; 89 46 06
;   [error/early exit] L_16C8
L_16C8:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Internal helper (16 instructions).

;-------------------------------------------------------------------------
; sub_16D2   offset=0x16D2  size=16 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_16D2
L_16D2:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        add     ax, word ptr [si + 0xe]         ; 03 44 0E
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far _SEG1_523C                  ; 9A 68 17 00 00 [FIXUP]
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (22 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_16F2   offset=0x16F2  size=22 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_16F2
L_16F2:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        cmp     word ptr [si + 0x24], 1         ; 83 7C 24 01
        jle     L_1704                          ; 7E 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_1706                          ; EB 02
;   [conditional branch target (if/else)] L_1704
L_1704:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_1706
L_1706:
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [si + 6]           ; 2B 44 06
        mul     word ptr [si + 0x24]            ; F7 64 24
        add     ax, cx                          ; 03 C1
        sub     dx, dx                          ; 2B D2
        mov     dx, ax                          ; 8B D0
        sub     ax, ax                          ; 2B C0
        or      al, 8                           ; 0C 08
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (36 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1722   offset=0x1722  size=36 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1722
L_1722:
        ;   = cProc <12> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        push    word ptr [si + 2]               ; FF 74 02
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_6121                  ; 9A D8 17 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_1744                          ; 7D 05
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        jmp     L_1772                          ; EB 2E
;   [conditional branch target (if/else)] L_1744
L_1744:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        jle     L_1755                          ; 7E 06
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [conditional branch target (if/else)] L_1755
L_1755:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cdq                                     ; 99
        mov     cx, word ptr [si + 0x24]        ; 8B 4C 24
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        sub     ax, word ptr [si + 6]           ; 2B 44 06
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far _SEG1_523C                  ; 9A F8 11 00 00 [FIXUP]
        add     ax, word ptr [si + 6]           ; 03 44 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [fall-through exit] L_1772
L_1772:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Pure computation / dispatcher (21 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1779   offset=0x1779  size=21 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1779
L_1779:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        cmp     byte ptr [si + 0x36], 0         ; 80 7C 36 00
        je      L_17A2                          ; 74 1C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        sub     ax, word ptr [si + 6]           ; 2B 44 06
        inc     ax                              ; 40
        imul    word ptr [si + 0x24]            ; F7 6C 24
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far _SEG1_84B8                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [si + 2]               ; FF 74 02
        call    far _SEG1_8586                  ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_17A2
L_17A2:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Internal helper (12 instructions).

;-------------------------------------------------------------------------
; sub_17A9   offset=0x17A9  size=12 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_17A9
L_17A9:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        cmp     byte ptr [si + 0x36], 0         ; 80 7C 36 00
        je      L_17BE                          ; 74 08
        push    word ptr [si + 2]               ; FF 74 02
        call    far _SEG1_8551                  ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_17BE
L_17BE:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (22 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_17C5   offset=0x17C5  size=22 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_17C5
L_17C5:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        push    word ptr [si + 2]               ; FF 74 02
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_6121                  ; 9A 5E 13 00 00 [FIXUP]
        push    word ptr [si + 2]               ; FF 74 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_8395                  ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [si + 0x36], 1         ; C6 44 36 01
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (31 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_17F9   offset=0x17F9  size=31 instr  segment=seg22.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: standard_bp     Epilogue: unknown
;
; Near calls (internal): L_0DB7
;-------------------------------------------------------------------------
;   [sub-routine] L_17F9
L_17F9:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        cmp     byte ptr [si + 0x30], 0         ; 80 7C 30 00
        je      L_1812                          ; 74 0C
        push    si                              ; 56
        mov     ax, 0x403                       ; B8 03 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_0DB7                          ; E8 A5 F5
;   [conditional branch target (if/else)] L_1812
L_1812:
        cmp     byte ptr [si + 0x35], 0         ; 80 7C 35 00
        je      L_1824                          ; 74 0C
        push    si                              ; 56
        ; constant WM_LBUTTONUP
        mov     ax, 0x202                       ; B8 02 02
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_0DB7                          ; E8 93 F5
;   [conditional branch target (if/else)] L_1824
L_1824:
        cmp     byte ptr [si + 0x36], 0         ; 80 7C 36 00
        je      L_1833                          ; 74 09
        call    far _SEG1_8472                  ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [si + 0x36], 0         ; C6 44 36 00
;   [conditional branch target (if/else)] L_1833
L_1833:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      002h                            ; 02

USER_TEXT ENDS

        END
