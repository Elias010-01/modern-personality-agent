; ======================================================================
; USER / seg15.asm   (segment 15 of USER)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        15
; Total instructions:                 1226
; 
; Classification (pass8):
;   C-origin (high+medium):              7
;   ASM-origin (high+medium):            0
;   Unclear:                             8
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     15 (11 unique)
;   Top:
;        3  GLOBALHANDLE
;        2  LOCALLOCK
;        2  LOCALUNLOCK
;        1  LOCALREALLOC
;        1  INTERSECTCLIPRECT
;        1  SELECTOBJECT
;        1  GETSTOCKOBJECT
;        1  GETTEXTMETRICS
; ======================================================================
; AUTO-GENERATED from original USER segment 15
; segment_size=2795 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

USER_TEXT SEGMENT BYTE PUBLIC 'CODE'

; Description (heuristic):
;   Pure computation / dispatcher (35 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0000   offset=0x0000  size=35 instr  segment=seg15.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_0A67
;-------------------------------------------------------------------------
L_0000:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        push    di                              ; 57
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        test    byte ptr [si + 0xa], 0xff       ; F6 44 0A FF
        jne     L_0021                          ; 75 09
        push    si                              ; 56
        call    far _entry_487                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0039                          ; EB 19
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0021
L_0021:
        test    byte ptr [si + 6], 8            ; F6 44 06 08
        je      L_0039                          ; 74 12
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ax                              ; 50
        call    L_0A67                          ; E8 39 0A
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _SEG1_84B8                  ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_0039
L_0039:
        push    word ptr [si + 2]               ; FF 74 02
        call    far _SEG1_8586                  ; 9A FF FF 00 00 [FIXUP]
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Allocation / initialization routine (2 alloc APIs).

;-------------------------------------------------------------------------
; sub_004E   offset=0x004E  size=84 instr  segment=seg15.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GLOBALHANDLE(WORD wSeg) -> DWORD
;   LOCALLOCK(HANDLE hMem) -> PSTR
;   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
;   LOCALUNLOCK(HANDLE hMem) -> BOOL
;
; Near calls (internal): L_0ACD
;-------------------------------------------------------------------------
;   [sub-routine] L_004E
L_004E:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     di, word ptr [bp + 0xc]         ; 8B 7E 0C
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        add     ax, di                          ; 03 C7
        test    word ptr [bp + 6], 0xffff       ; F7 46 06 FF FF
        je      L_0082                          ; 74 16
        test    byte ptr [si + 7], 2            ; F6 44 07 02
        jne     L_0082                          ; 75 10
        test    byte ptr [si + 0xa], 0xff       ; F6 44 0A FF
        je      L_0082                          ; 74 0A
        cmp     ax, word ptr [si + 0x28]        ; 3B 44 28
        jle     L_0082                          ; 7E 05
        xor     ax, ax                          ; 33 C0
        jmp     L_00FC                          ; EB 7B
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0082
L_0082:
        inc     ax                              ; 40
        cmp     word ptr [si + 0x2c], ax        ; 39 44 2C
        jae     L_00AA                          ; 73 22
        add     ax, 0x20                        ; 05 20 00
        push    ax                              ; 50
        push    word ptr [si]                   ; FF 34
        ;   ^ arg hMem
        push    ax                              ; 50
        ;   ^ arg wBytes
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        ;   ^ arg wFlags
        ; --> LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.LOCALREALLOC         ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        pop     ax                              ; 58
        jne     L_00A7                          ; 75 0B
        mov     di, 0x500                       ; BF 00 05
        call    L_0ACD                          ; E8 2B 0A
        xor     ax, ax                          ; 33 C0
        jmp     L_00FC                          ; EB 56
        nop                                     ; 90
;   [conditional branch target (if/else)] L_00A7
L_00A7:
        mov     word ptr [si + 0x2c], ax        ; 89 44 2C
;   [conditional branch target (if/else)] L_00AA
L_00AA:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg wSeg
        ; --> GLOBALHANDLE(WORD wSeg) -> DWORD
        call    far KERNEL.GLOBALHANDLE         ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [si]                   ; FF 34
        ;   ^ arg hMem
        ; --> LOCALLOCK(HANDLE hMem) -> PSTR
        call    far KERNEL.LOCALLOCK            ; 9A FF FF 00 00 [FIXUP]
        add     ax, word ptr [si + 0x12]        ; 03 44 12
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        add     ax, di                          ; 03 C7
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        sub     ax, word ptr [si + 0x12]        ; 2B 44 12
        or      ax, ax                          ; 0B C0
        jne     L_00D8                          ; 75 06
        add     sp, 8                           ; 83 C4 08
        jmp     L_00DE                          ; EB 07
        nop                                     ; 90
;   [conditional branch target (if/else)] L_00D8
L_00D8:
        push    ax                              ; 50
        call    far _SEG1_5284                  ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_00DE
L_00DE:
        push    di                              ; 57
        call    far _SEG1_5284                  ; 9A DA 00 00 00 [FIXUP]
        add     word ptr [si + 0xc], di         ; 01 7C 0C
        add     word ptr [si + 0x12], di        ; 01 7C 12
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        mov     word ptr [si + 0x10], ax        ; 89 44 10
        mov     word ptr [si + 0x14], ax        ; 89 44 14
        push    word ptr [si]                   ; FF 34
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, di                          ; 8B C7
;   [unconditional branch target] L_00FC
L_00FC:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Mixed routine using: INTERSECTCLIPRECT, SELECTOBJECT.

;-------------------------------------------------------------------------
; sub_0109   offset=0x0109  size=47 instr  segment=seg15.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   INTERSECTCLIPRECT
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_0109
L_0109:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        push    di                              ; 57
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        lea     di, [bp - 0xa]                  ; 8D 7E F6
        push    word ptr [si + 2]               ; FF 74 02
        push    ss                              ; 16
        push    di                              ; 57
        call    far _SEG1_6121                  ; 9A FF FF 00 00 [FIXUP]
        push    ss                              ; 16
        push    di                              ; 57
        push    ss                              ; 16
        push    di                              ; 57
        lea     ax, [si + 0x16]                 ; 8D 44 16
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_656B                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        test    byte ptr [si + 6], 0x80         ; F6 44 06 80
        je      L_0148                          ; 74 06
        mov     ax, word ptr [si + 0x1e]        ; 8B 44 1E
        shr     ax, 1                           ; D1 E8
        dec     ax                              ; 48
;   [conditional branch target (if/else)] L_0148
L_0148:
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.INTERSECTCLIPRECT       ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hDC
        push    word ptr [si + 0x34]            ; FF 74 34
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Pure computation / dispatcher (28 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_016F   offset=0x016F  size=28 instr  segment=seg15.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_0109
;-------------------------------------------------------------------------
;   [sub-routine] L_016F
L_016F:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_8551                  ; 9A FF FF 00 00 [FIXUP]
        call    far _SEG1_37F9                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        push    ax                              ; 50
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0109                          ; E8 75 FF
        pop     ax                              ; 58
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Internal helper (18 instructions).

;-------------------------------------------------------------------------
; sub_01A1   offset=0x01A1  size=18 instr  segment=seg15.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_01A1
L_01A1:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _SEG1_8586                  ; 9A 3D 00 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_381A                  ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_01C9   offset=0x01C9  size=362 instr  segment=seg15.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GETSTOCKOBJECT(INT iObject) -> HANDLE
;   GETTEXTMETRICS
;   GLOBALHANDLE(WORD wSeg) -> DWORD
;   LOCALFREE(HANDLE hMem) -> HANDLE
;   LOCALLOCK(HANDLE hMem) -> PSTR
;   LOCALUNLOCK(HANDLE hMem) -> BOOL
;   LSTRLEN(LPSTR lpsz) -> INT
;
; Near calls (internal): L_016F, L_01A1, L_01C9, L_051E, L_06A5, L_08B9, L_0A98, L_0ACD
;-------------------------------------------------------------------------
;   [sub-routine] L_01C9
L_01C9:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x20                        ; 83 EC 20
        push    si                              ; 56
        push    di                              ; 57
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_016F                          ; E8 8E FF
        push    word ptr [si + 2]               ; FF 74 02
        push    ax                              ; 50
        push    ax                              ; 50
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A FF FF 00 00 [FIXUP]
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01A1                          ; E8 AC FF
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     di, word ptr [bp - 0x1a]        ; 8B 7E E6
        test    byte ptr [si + 0xa], 0xff       ; F6 44 0A FF
        jne     L_0203                          ; 75 02
        add     ax, di                          ; 03 C7
;   [conditional branch target (if/else)] L_0203
L_0203:
        mov     word ptr [si + 0xe], ax         ; 89 44 0E
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [si + 0x1e], ax        ; 89 44 1E
        push    word ptr [si + 2]               ; FF 74 02
        lea     ax, [si + 0x16]                 ; 8D 44 16
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_6121                  ; 9A 24 01 00 00 [FIXUP]
        test    byte ptr [si + 6], 0x80         ; F6 44 06 80
        je      L_023D                          ; 74 1E
        lea     ax, [si + 0x16]                 ; 8D 44 16
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        shr     ax, 1                           ; D1 E8
        dec     ax                              ; 48
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        dec     ax                              ; 48
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        call    far _SEG1_6540                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_023D
L_023D:
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        mul     word ptr [si + 0x22]            ; F7 64 22
        add     ax, word ptr [si + 0x18]        ; 03 44 18
        mov     word ptr [si + 0x1c], ax        ; 89 44 1C
        mov     ax, word ptr [si + 0x1e]        ; 8B 44 1E
        mul     word ptr [si + 0x28]            ; F7 64 28
        add     ax, word ptr [si + 0x16]        ; 03 44 16
        inc     ax                              ; 40
        mov     word ptr [si + 0x1a], ax        ; 89 44 1A
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
        adc     al, 0                           ; 14 00
        add     word ptr [bx + si], 0x82        ; 81 00 82 00
        pop     es                              ; 07
        add     byte ptr [bx + si], cl          ; 00 08
        add     byte ptr [bx + 0xd00], al       ; 00 87 00 0D
        add     byte ptr [0xa00], cl            ; 00 0E 00 0A
        add     byte ptr [bx + si], al          ; 00 00
        add     ax, word ptr [bx + di]          ; 03 01
        add     ax, word ptr [bp + si]          ; 03 02
        add     ax, word ptr [bp + di]          ; 03 03
        add     ax, word ptr [bx + si]          ; 03 00
        add     al, 8                           ; 04 08
        add     al, 9                           ; 04 09
        add     al, 0x12                        ; 04 12
        add     al, 2                           ; 04 02
        add     al, 0                           ; 04 00
        add     word ptr [bx + di], ax          ; 01 01
        add     word ptr [bx + di], ax          ; 01 01
        add     byte ptr [bp + di], dl          ; 00 13
        add     al, 0x15                        ; 04 15
        add     al, 0                           ; 04 00
        add     al, bh                          ; 00 F8
        add     ch, byte ptr [bp + si]          ; 02 2A
        add     di, word ptr [bp + si + 3]      ; 03 7A 03
        ; constant WM_MOVE
        mov     bl, 3                           ; B3 03
        fld     qword ptr [bp + di]             ; DD 03
        cmc                                     ; F5
        add     di, dx                          ; 03 FA
        add     bp, word ptr [si]               ; 03 2C
        add     al, 0x31                        ; 04 31
        add     al, 0x3f                        ; 04 3F
        add     al, 0x3f                        ; 04 3F
        add     al, 0x3f                        ; 04 3F
        add     al, 0x3f                        ; 04 3F
        add     al, 0x83                        ; 04 83
        add     al, 0x49                        ; 04 49
        add     al, 0x57                        ; 04 57
        add     al, 0x65                        ; 04 65
        add     al, 0x8c                        ; 04 8C
        add     al, 0x9e                        ; 04 9E
        add     al, 0x9e                        ; 04 9E
        add     al, 0x1a                        ; 04 1A
        add     cx, word ptr [bx + 3]           ; 03 4F 03
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        add     al, 0xb5                        ; 04 B5
        add     al, 0x90                        ; 04 90
        nop                                     ; 90
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp + 0xe]             ; FF 76 0E
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far _SEG1_6221                  ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        push    cs                              ; 0E
        pop     es                              ; 07
        mov     ax, dx                          ; 8B C2
        lea     di, [0x263]                     ; 8D 3E 63 02
        mov     cx, 0x18                        ; B9 18 00
        repne scasw ax, word ptr es:[di]        ; F2 AF
        mov     cx, word ptr [bp + 0xa]         ; 8B 4E 0A
        mov     bx, di                          ; 8B DF
        mov     di, word ptr [bp + 0xe]         ; 8B 7E 0E
        jmp     word ptr cs:[bx + 0x2e]         ; 2E FF 67 2E
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xfff8                      ; B8 F8 FF
        push    ax                              ; 50
        call    far _SEG1_6221                  ; 9A D6 02 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_1AFF                  ; 9A FF FF 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_03B0                          ; E9 96 00
        push    di                              ; 57
        mov     ax, 0xfff8                      ; B8 F8 FF
        push    ax                              ; 50
        call    far _SEG1_6221                  ; 9A 00 03 00 00 [FIXUP]
        mov     word ptr [si + 4], ax           ; 89 44 04
        jmp     L_03B0                          ; E9 86 00
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x18]     ; 26 8B 47 18
        mov     si, word ptr es:[bx + 0x16]     ; 26 8B 77 16
        or      ax, ax                          ; 0B C0
        je      L_033F                          ; 74 06
        push    ax                              ; 50
        ;   ^ arg wSeg
        ; --> GLOBALHANDLE(WORD wSeg) -> DWORD
        call    far KERNEL.GLOBALHANDLE         ; 9A AE 00 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_033F
L_033F:
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     word ptr [bp + 6], si           ; 89 76 06
        call    L_051E                          ; E8 D6 01
        or      ax, ax                          ; 0B C0
        je      L_03B0                          ; 74 64
        ; constant VK_RETURN
        mov     cx, 0xd                         ; B9 0D 00
        push    cx                              ; 51
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 0x34], ax        ; 89 44 34
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01C9                          ; E8 6B FE
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, ax                          ; 0B C0
        je      L_0374                          ; 74 0F
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    cs                              ; 0E
        call    L_06A5                          ; E8 35 03
        and     byte ptr [si + 7], 0xf7         ; 80 64 07 F7
;   [conditional branch target (if/else)] L_0374
L_0374:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_03B0                          ; EB 37
        nop                                     ; 90
        or      si, si                          ; 0B F6
        je      L_03B0                          ; 74 32
        mov     ax, word ptr [si]               ; 8B 04
        or      ax, ax                          ; 0B C0
        je      L_03AA                          ; 74 26
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        test    byte ptr [si + 0xa], 0xff       ; F6 44 0A FF
        jne     L_03AA                          ; 75 1A
        mov     ax, word ptr [si + 0x38]        ; 8B 44 38
        or      ax, ax                          ; 0B C0
        je      L_039D                          ; 74 06
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A 86 03 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_039D
L_039D:
        mov     ax, word ptr [si + 0x36]        ; 8B 44 36
        or      ax, ax                          ; 0B C0
        je      L_03AA                          ; 74 06
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A 99 03 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_03AA
L_03AA:
        push    si                              ; 56
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A A6 03 00 00 [FIXUP]
;   [branch target] L_03B0
L_03B0:
        jmp     L_03F8                          ; EB 46
        nop                                     ; 90
        test    byte ptr [si + 6], 8            ; F6 44 06 08
        jne     L_03F2                          ; 75 39
        or      byte ptr [si + 6], 8            ; 80 4C 06 08
        and     byte ptr [si + 7], 0xfb         ; 80 64 07 FB
        push    di                              ; 57
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [si + 0xe]             ; FF 74 0E
        call    far _SEG1_8395                  ; 9A FF FF 00 00 [FIXUP]
        call    L_0A98                          ; E8 C6 06
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 28 FC
        mov     di, 0x100                       ; BF 00 01
        jmp     L_03F2                          ; EB 15
        test    byte ptr [si + 6], 8            ; F6 44 06 08
        je      L_03F2                          ; 74 0F
        call    L_0A98                          ; E8 B2 06
        and     byte ptr [si + 6], 0xf7         ; 80 64 06 F7
        call    far _SEG1_8472                  ; 9A FF FF 00 00 [FIXUP]
        mov     di, 0x200                       ; BF 00 02
;   [branch target] L_03F2
L_03F2:
        jmp     L_0506                          ; E9 11 01
        mov     ax, 9                           ; B8 09 00
;   [unconditional branch target] L_03F8
L_03F8:
        jmp     L_0452                          ; EB 58
        push    si                              ; 56
        mov     ax, word ptr [si]               ; 8B 04
        push    ax                              ; 50
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> LOCALLOCK(HANDLE hMem) -> PSTR
        call    far KERNEL.LOCALLOCK            ; 9A B9 00 00 00 [FIXUP]
        mov     cx, word ptr [bp + 0xa]         ; 8B 4E 0A
        dec     cx                              ; 49
        mov     bx, word ptr [si + 0xc]         ; 8B 5C 0C
        cmp     cx, bx                          ; 3B CB
        jbe     L_0411                          ; 76 02
        xchg    bx, cx                          ; 87 CB
;   [conditional branch target (if/else)] L_0411
L_0411:
        mov     si, ax                          ; 8B F0
        les     di, ptr [bp + 6]                ; C4 7E 06
        mov     bx, cx                          ; 8B D9
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        xor     ax, ax                          ; 33 C0
        stosb   byte ptr es:[di], al            ; AA
        mov     si, bx                          ; 8B F3
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A F6 00 00 00 [FIXUP]
        mov     ax, si                          ; 8B C6
        xor     dx, dx                          ; 33 D2
        pop     si                              ; 5E
        jmp     L_0511                          ; E9 E5 00
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        jmp     L_0452                          ; EB 21
        and     byte ptr [si + 6], 0xdf         ; 80 64 06 DF
        or      cx, cx                          ; 0B C9
        je      L_0452                          ; 74 19
        or      byte ptr [si + 6], 0x20         ; 80 4C 06 20
        jmp     L_0452                          ; EB 13
        push    si                              ; 56
        push    dx                              ; 52
        call    far _entry_488                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_04FB                          ; E9 B2 00
        xor     ax, ax                          ; 33 C0
        test    byte ptr [si + 6], 0x10         ; F6 44 06 10
        je      L_0452                          ; 74 01
        inc     ax                              ; 40
;   [loop start (also forward branch)] L_0452
L_0452:
        xor     dx, dx                          ; 33 D2
        jmp     L_0511                          ; E9 BA 00
        and     byte ptr [si + 6], 0xef         ; 80 64 06 EF
        or      cx, cx                          ; 0B C9
        je      L_0452                          ; 74 F3
        or      byte ptr [si + 6], 0x10         ; 80 4C 06 10
        jmp     L_0452                          ; EB ED
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lpsz (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    ax                              ; 50
        push    word ptr [si + 0x10]            ; FF 74 10
        call    far _entry_489                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_04FB                          ; EB 79
        nop                                     ; 90
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        mov     dx, word ptr [si + 0x12]        ; 8B 54 12
        jmp     L_0511                          ; E9 85 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [si + 0x16]                 ; 8D 44 16
        push    ax                              ; 50
        call    far _SEG1_648A                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0511                          ; EB 74
        nop                                     ; 90
        call    L_08B9                          ; E8 18 04
        jmp     L_0511                          ; EB 6E
        nop                                     ; 90
        test    byte ptr [si + 0xa], 0xff       ; F6 44 0A FF
        je      L_04B0                          ; 74 06
        cmp     cx, 0x1000                      ; 81 F9 00 10
        ja      L_04B3                          ; 77 03
;   [conditional branch target (if/else)] L_04B0
L_04B0:
        mov     word ptr [si + 0x30], cx        ; 89 4C 30
;   [conditional branch target (if/else)] L_04B3
L_04B3:
        jmp     L_0511                          ; EB 5C
        push    si                              ; 56
        push    dx                              ; 52
        push    cx                              ; 51
        push    word ptr [bp + 8]               ; FF 76 08
        cmp     dx, 0xc                         ; 83 FA 0C
        je      L_04CC                          ; 74 0C
        cmp     dx, 0x403                       ; 81 FA 03 04
        je      L_04CC                          ; 74 06
        cmp     dx, 0x404                       ; 81 FA 04 04
        jne     L_04D2                          ; 75 06
;   [conditional branch target (if/else)] L_04CC
L_04CC:
        ; --> GLOBALHANDLE(WORD wSeg) -> DWORD
        call    far KERNEL.GLOBALHANDLE         ; 9A 3B 03 00 00 [FIXUP]
        push    ax                              ; 50
;   [conditional branch target (if/else)] L_04D2
L_04D2:
        push    word ptr [bp + 6]               ; FF 76 06
        or      si, si                          ; 0B F6
        jne     L_04E6                          ; 75 0D
        mov     bx, sp                          ; 8B DC
        mov     word ptr ss:[bx + 8], di        ; 36 89 7F 08
        call    far _SEG1_679B                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0511                          ; EB 2B
;   [conditional branch target (if/else)] L_04E6
L_04E6:
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        or      ax, ax                          ; 0B C0
        je      L_04F4                          ; 74 07
        call    far _entry_490                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_04FD                          ; EB 09
;   [conditional branch target (if/else)] L_04F4
L_04F4:
        call    far _entry_491                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_04FD                          ; EB 02
;   [unconditional branch target] L_04FB
L_04FB:
        xor     dx, dx                          ; 33 D2
;   [unconditional branch target] L_04FD
L_04FD:
        mov     di, 0x300                       ; BF 00 03
        test    byte ptr [si + 7], 8            ; F6 44 07 08
        je      L_0511                          ; 74 0B
;   [unconditional branch target] L_0506
L_0506:
        and     byte ptr [si + 7], 0xf7         ; 80 64 07 F7
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0ACD                          ; E8 BE 05
        pop     ax                              ; 58
        pop     dx                              ; 5A
;   [branch target] L_0511
L_0511:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Mixed routine using: LOCALALLOC.

;-------------------------------------------------------------------------
; sub_051E   offset=0x051E  size=60 instr  segment=seg15.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_051E
L_051E:
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, 0x3a                        ; B8 3A 00
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0530                          ; 75 01
        ret                                     ; C3
;   [conditional branch target (if/else)] L_0530
L_0530:
        mov     si, ax                          ; 8B F0
        and     byte ptr [si + 7], 0xf7         ; 80 64 07 F7
        push    di                              ; 57
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    si                              ; 56
        call    far _SEG1_6257                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 2], di           ; 89 7C 02
        ; constant BLACKNESS
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        xor     ax, ax                          ; 33 C0
        mov     word ptr [si + 6], ax           ; 89 44 06
        mov     al, 0x20                        ; B0 20
        mov     word ptr [si + 0x2c], ax        ; 89 44 2C
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A 27 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_055E                          ; 75 03
        xor     ax, ax                          ; 33 C0
        ret                                     ; C3
;   [conditional branch target (if/else)] L_055E
L_055E:
        mov     word ptr [si], ax               ; 89 04
        push    di                              ; 57
        mov     ax, 0xfff0                      ; B8 F0 FF
        push    ax                              ; 50
        call    far _SEG1_6221                  ; 9A 20 03 00 00 [FIXUP]
        test    ax, 4                           ; A9 04 00
        jne     L_0578                          ; 75 09
        mov     byte ptr [si + 0xa], 1          ; C6 44 0A 01
        mov     word ptr [si + 0x30], 0x1000    ; C7 44 30 00 10
;   [conditional branch target (if/else)] L_0578
L_0578:
        test    ax, 0x80                        ; A9 80 00
        je      L_0581                          ; 74 04
        or      byte ptr [si + 7], 2            ; 80 4C 07 02
;   [conditional branch target (if/else)] L_0581
L_0581:
        test    dx, 0x80                        ; F7 C2 80 00
        je      L_058B                          ; 74 04
        or      byte ptr [si + 6], 0x80         ; 80 4C 06 80
;   [conditional branch target (if/else)] L_058B
L_058B:
        test    ax, 0x100                       ; A9 00 01
        je      L_0594                          ; 74 04
        or      byte ptr [si + 7], 0x10         ; 80 4C 07 10
;   [conditional branch target (if/else)] L_0594
L_0594:
        test    byte ptr [si + 0xa], 0xff       ; F6 44 0A FF
        jne     L_05A6                          ; 75 0C
        push    si                              ; 56
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_492                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_05B5                          ; 74 0F
;   [conditional branch target (if/else)] L_05A6
L_05A6:
        call    far _entry_184                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_05B3                          ; 74 04
        or      byte ptr [si + 7], 0x20         ; 80 4C 07 20
;   [conditional branch target (if/else)] L_05B3
L_05B3:
        inc     al                              ; FE C0
;   [error/early exit] L_05B5
L_05B5:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (117 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_05B6   offset=0x05B6  size=117 instr  segment=seg15.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_016F, L_01A1, L_0873, L_087C
;-------------------------------------------------------------------------
;   [sub-routine] L_05B6
L_05B6:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        push    di                              ; 57
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_016F                          ; E8 A1 FB
        push    word ptr [si + 2]               ; FF 74 02
        push    ax                              ; 50
        push    si                              ; 56
        push    ax                              ; 50
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        cmp     bx, cx                          ; 3B D9
        jle     L_05E3                          ; 7E 02
        xchg    cx, bx                          ; 87 D9
;   [conditional branch target (if/else)] L_05E3
L_05E3:
        cmp     cx, word ptr [si + 0xc]         ; 3B 4C 0C
        jle     L_05F1                          ; 7E 09
        mov     cx, word ptr [si + 0xc]         ; 8B 4C 0C
        cmp     bx, cx                          ; 3B D9
        jle     L_05F1                          ; 7E 02
        mov     bx, cx                          ; 8B D9
;   [conditional branch target (if/else)] L_05F1
L_05F1:
        cmp     cx, word ptr [si + 0x12]        ; 3B 4C 12
        jle     L_0602                          ; 7E 0C
        push    cx                              ; 51
        mov     dx, bx                          ; 8B D3
        mov     di, word ptr [si + 0x12]        ; 8B 7C 12
        call    L_087C                          ; E8 7D 02
        jmp     L_060D                          ; EB 0C
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0602
L_0602:
        push    word ptr [si + 0x12]            ; FF 74 12
        mov     dx, cx                          ; 8B D1
        mov     di, word ptr [si + 0x10]        ; 8B 7C 10
        call    L_087C                          ; E8 6F 02
;   [unconditional branch target] L_060D
L_060D:
        pop     di                              ; 5F
        push    ax                              ; 50
        push    di                              ; 57
        test    byte ptr [si + 0xa], 0xff       ; F6 44 0A FF
        je      L_061A                          ; 74 04
        push    si                              ; 56
        push    word ptr [bp - 0xc]             ; FF 76 F4
;   [conditional branch target (if/else)] L_061A
L_061A:
        cmp     bx, word ptr [si + 0x10]        ; 3B 5C 10
        jge     L_062B                          ; 7D 0C
        push    bx                              ; 53
        mov     dx, cx                          ; 8B D1
        mov     di, word ptr [si + 0x10]        ; 8B 7C 10
        call    L_0873                          ; E8 4B 02
        jmp     L_0636                          ; EB 0C
        nop                                     ; 90
;   [conditional branch target (if/else)] L_062B
L_062B:
        push    word ptr [si + 0x10]            ; FF 74 10
        mov     dx, bx                          ; 8B D3
        mov     di, word ptr [si + 0x12]        ; 8B 7C 12
        call    L_0873                          ; E8 3D 02
;   [unconditional branch target] L_0636
L_0636:
        push    ax                              ; 50
        mov     word ptr [si + 0x10], bx        ; 89 5C 10
        mov     word ptr [si + 0x12], cx        ; 89 4C 12
        test    byte ptr [si + 0xa], 0xff       ; F6 44 0A FF
        je      L_0650                          ; 74 0D
        call    far _entry_493                  ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_493                  ; 9A 44 06 00 00 [FIXUP]
        jmp     L_0655                          ; EB 06
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0650
L_0650:
        call    far _entry_494                  ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0655
L_0655:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01A1                          ; E8 47 FB
        test    word ptr [bp + 6], 0xffff       ; F7 46 06 FF FF
        je      L_0667                          ; 74 06
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 99 F9
;   [conditional branch target (if/else)] L_0667
L_0667:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     si, word ptr [si + 2]           ; 8B 74 02
        push    si                              ; 56
        xor     di, di                          ; 33 FF
        push    di                              ; 57
        push    di                              ; 57
        inc     di                              ; 47
        push    di                              ; 57
        call    far _SEG1_5743                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        call    far _SEG1_34BF                  ; 9A FF FF 00 00 [FIXUP]
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Mixed routine using: GLOBALHANDLE.

;-------------------------------------------------------------------------
; sub_06A5   offset=0x06A5  size=49 instr  segment=seg15.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GLOBALHANDLE(WORD wSeg) -> DWORD
;
; Near calls (internal): L_004E, L_01C9
;-------------------------------------------------------------------------
;   [sub-routine] L_06A5
L_06A5:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01C9                          ; E8 0F FB
        les     di, ptr [bp + 6]                ; C4 7E 06
        push    es                              ; 06
        ;   ^ arg wSeg
        ; --> GLOBALHANDLE(WORD wSeg) -> DWORD
        call    far KERNEL.GLOBALHANDLE         ; 9A CD 04 00 00 [FIXUP]
        mov     es, dx                          ; 8E C2
        xor     ax, ax                          ; 33 C0
        mov     cx, 0xffff                      ; B9 FF FF
        cld                                     ; FC
        repne scasb al, byte ptr es:[di]        ; F2 AE
        neg     cx                              ; F7 D9
        dec     cx                              ; 49
        dec     cx                              ; 49
        mov     word ptr [si + 0xc], ax         ; 89 44 0C
        mov     word ptr [si + 0x12], ax        ; 89 44 12
        push    si                              ; 56
        push    cx                              ; 51
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_004E                          ; E8 67 F9
        and     byte ptr [si + 6], 0xef         ; 80 64 06 EF
        or      byte ptr [si + 7], 8            ; 80 4C 07 08
        xor     ax, ax                          ; 33 C0
        mov     word ptr [si + 0x24], ax        ; 89 44 24
        inc     al                              ; FE C0
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Description (heuristic):
;   Pure computation / dispatcher (158 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0703   offset=0x0703  size=158 instr  segment=seg15.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_05B6, L_0703, L_0873
;-------------------------------------------------------------------------
;   [sub-routine] L_0703
L_0703:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        test    byte ptr [si + 0xa], 0xff       ; F6 44 0A FF
        jne     L_0728                          ; 75 0D
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        push    dx                              ; 52
        call    far _entry_495                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_073E                          ; EB 17
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0728
L_0728:
        xor     ax, ax                          ; 33 C0
        cmp     dx, word ptr [si + 0x16]        ; 3B 54 16
        jl      L_073E                          ; 7C 0F
        xchg    dx, ax                          ; 92
        sub     ax, word ptr [si + 0x16]        ; 2B 44 16
        div     word ptr [si + 0x1e]            ; F7 74 1E
        mov     dx, ax                          ; 8B D0
        mov     di, word ptr [si + 0xc]         ; 8B 7C 0C
        call    L_0873                          ; E8 35 01
;   [branch target] L_073E
L_073E:
        test    byte ptr [si + 7], 0x20         ; F6 44 07 20
        je      L_074B                          ; 74 07
        push    si                              ; 56
        push    ax                              ; 50
        call    far _entry_496                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_074B
L_074B:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
        add     word ptr [bp + si], ax          ; 01 02
        add     byte ptr [bx + di], al          ; 00 01
        add     al, byte ptr [bp + si]          ; 02 02
        add     ax, 0x102                       ; 05 02 01
        add     word ptr [bx + si], ax          ; 01 00
        add     dl, byte ptr [bx + si]          ; 02 10
        add     al, 0                           ; 04 00
        add     dh, ch                          ; 00 EE
        pop     es                              ; 07
        or      cl, byte ptr [bx + si]          ; 0A 08
        adc     cx, word ptr [bx + si]          ; 13 08
        adc     cx, word ptr [bx + si]          ; 13 08
        and     cl, byte ptr [bx + si]          ; 22 08
        sub     cx, word ptr [bx + si]          ; 2B 08
        xor     word ptr [bx + si], cx          ; 31 08
        or      byte ptr [si - 0x6f28], cl      ; 66 08 8C D8 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        push    di                              ; 57
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        cmp     word ptr [bp + 0xa], 0x200      ; 81 7E 0A 00 02
        jne     L_07C4                          ; 75 33
        push    word ptr [si + 2]               ; FF 74 02
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_6121                  ; 9A 15 02 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jge     L_07AE                          ; 7D 08
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jge     L_07B1                          ; 7D 03
;   [conditional branch target (if/else)] L_07AE
L_07AE:
        mov     word ptr [bp + 6], ax           ; 89 46 06
;   [conditional branch target (if/else)] L_07B1
L_07B1:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jge     L_07C1                          ; 7D 08
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jge     L_07C4                          ; 7D 03
;   [conditional branch target (if/else)] L_07C1
L_07C1:
        mov     word ptr [bp + 8], ax           ; 89 46 08
;   [conditional branch target (if/else)] L_07C4
L_07C4:
        push    si                              ; 56
        mov     ax, word ptr [si + 0x1e]        ; 8B 44 1E
        shr     ax, 1                           ; D1 E8
        add     ax, word ptr [bp + 6]           ; 03 46 06
        push    word ptr [bp + 8]               ; FF 76 08
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0703                          ; E8 2D FF
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     dx, word ptr [si + 2]           ; 8B 54 02
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        push    cs                              ; 0E
        pop     es                              ; 07
        lea     di, [0x758]                     ; 8D 3E 58 07
        mov     cx, 8                           ; B9 08 00
        repne scasw ax, word ptr es:[di]        ; F2 AF
        jmp     word ptr cs:[di + 0xe]          ; 2E FF 65 0E
        or      byte ptr [si + 6], 1            ; 80 4C 06 01
        and     byte ptr [si + 7], 0xfb         ; 80 64 07 FB
        mov     di, dx                          ; 8B FA
        push    di                              ; 57
        call    far _SEG1_325A                  ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        call    far _SEG1_8551                  ; 9A 83 01 00 00 [FIXUP]
        test    byte ptr [si + 6], 0x40         ; F6 44 06 40
        jne     L_0831                          ; 75 27
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [si + 0x14], ax        ; 89 44 14
        jmp     L_0831                          ; EB 1F
        nop                                     ; 90
        test    byte ptr [si + 6], 1            ; F6 44 06 01
        je      L_0866                          ; 74 4D
        call    far _SEG1_3273                  ; 9A FF FF 00 00 [FIXUP]
        and     byte ptr [si + 6], 0xfe         ; 80 64 06 FE
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 D8 F7
        jmp     L_0866                          ; EB 3C
        nop                                     ; 90
        test    byte ptr [si + 6], 1            ; F6 44 06 01
        je      L_0866                          ; 74 35
;   [branch target] L_0831
L_0831:
        test    byte ptr [si + 7], 4            ; F6 44 07 04
        jne     L_0866                          ; 75 2F
        push    si                              ; 56
        push    word ptr [si + 0x14]            ; FF 74 14
        push    word ptr [bp - 4]               ; FF 76 FC
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05B6                          ; E8 72 FD
        cmp     word ptr [bp + 0xa], 0x201      ; 81 7E 0A 01 02
        jne     L_085A                          ; 75 0F
        call    far _SEG1_2E88                  ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, di                          ; 3B C7
        je      L_085A                          ; 74 06
        push    di                              ; 57
        call    far _SEG1_2E91                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_085A
L_085A:
        test    byte ptr [si + 0xa], 0xff       ; F6 44 0A FF
        jne     L_0866                          ; 75 06
        push    si                              ; 56
        call    far _entry_497                  ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_0866
L_0866:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Internal helper (5 instructions).

;-------------------------------------------------------------------------
; sub_0873   offset=0x0873  size=5 instr  segment=seg15.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0873
L_0873:
        mov     ax, dx                          ; 8B C2
        cmp     ax, di                          ; 3B C7
        jle     L_087B                          ; 7E 02
        mov     ax, di                          ; 8B C7
;   [error/early exit] L_087B
L_087B:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (205 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_087C   offset=0x087C  size=205 instr  segment=seg15.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0703, L_0778, L_0A67, L_0ACD
;-------------------------------------------------------------------------
;   [sub-routine] L_087C
L_087C:
        mov     ax, dx                          ; 8B C2
        cmp     ax, di                          ; 3B C7
        jge     L_0884                          ; 7D 02
        mov     ax, di                          ; 8B C7
;   [error/early exit] L_0884
L_0884:
        ret                                     ; C3
        adc     byte ptr [bx + si], al          ; 10 00
        and     ax, 0x2700                      ; 25 00 27
        add     byte ptr [0x2800], ah           ; 00 26 00 28
        add     byte ptr [si], ah               ; 00 24
        add     byte ptr [bp + di], ah          ; 00 23
        add     byte ptr [di], ch               ; 00 2D
        add     byte ptr [0xc00], ch            ; 00 2E 00 0C
        add     byte ptr [bp + si], ah          ; 00 22
        add     byte ptr [bx + di], ah          ; 00 21
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [0x3f09], bl           ; 00 1E 09 3F
        or      word ptr [si + 9], ax           ; 09 44 09
        pop     ax                              ; 58
        or      word ptr [bp + si + 9], bx      ; 09 5A 09
        pop     di                              ; 5F
        or      word ptr [di + 9], bp           ; 09 6D 09
        jne     L_08B8                          ; 75 09
        jle     L_08BA                          ; 7E 09
        test    byte ptr [bx + di], cl          ; 84 09
        stosw   word ptr es:[di], ax            ; AB
        or      word ptr [bp + di - 0x41f7], bp ; 09 AB 09 BE
;   [conditional branch target (if/else)] L_08B8
L_08B8:
        or      word ptr [di - 0x75], dx        ; 09 55 8B
        in      al, dx                          ; EC
        sub     sp, 4                           ; 83 EC 04
        cmp     dx, 0x100                       ; 81 FA 00 01
        jne     L_08CA                          ; 75 05
        cmp     cx, 0x10                        ; 83 F9 10
        je      L_08CA                          ; 74 00
;   [conditional branch target (if/else)] L_08CA
L_08CA:
        mov     di, dx                          ; 8B FA
        push    cx                              ; 51
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        call    L_0A67                          ; E8 93 01
        pop     cx                              ; 59
        mov     bx, word ptr [si + 0x1e]        ; 8B 5C 1E
        mov     dx, word ptr [si + 0xe]         ; 8B 54 0E
        cmp     di, 0x101                       ; 81 FF 01 01
        jne     L_090D                          ; 75 2C
        test    byte ptr [si + 6], 0x40         ; F6 44 06 40
        je      L_090A                          ; 74 23
        cmp     cx, 0x10                        ; 83 F9 10
        jne     L_090A                          ; 75 1E
        test    byte ptr [si + 7], 4            ; F6 44 07 04
        jne     L_0902                          ; 75 10
        push    si                              ; 56
        mov     ax, 0x101                       ; B8 01 01
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0778                          ; E8 76 FE
;   [conditional branch target (if/else)] L_0902
L_0902:
        and     byte ptr [si + 6], 0xbf         ; 80 64 06 BF
        or      byte ptr [si + 7], 4            ; 80 4C 07 04
;   [conditional branch target (if/else)] L_090A
L_090A:
        jmp     L_0A63                          ; E9 56 01
;   [conditional branch target (if/else)] L_090D
L_090D:
        push    cs                              ; 0E
        pop     es                              ; 07
        mov     ax, cx                          ; 8B C1
        lea     di, [0x885]                     ; 8D 3E 85 08
        ; constant VK_RETURN
        mov     cx, 0xd                         ; B9 0D 00
        repne scasw ax, word ptr es:[di]        ; F2 AF
        jmp     word ptr cs:[di + 0x18]         ; 2E FF 65 18
        test    byte ptr [si + 6], 0x40         ; F6 44 06 40
        je      L_0927                          ; 74 03
        jmp     L_0A63                          ; E9 3C 01
;   [conditional branch target (if/else)] L_0927
L_0927:
        test    byte ptr [si + 7], 4            ; F6 44 07 04
        je      L_0934                          ; 74 07
        and     byte ptr [si + 7], 0xfb         ; 80 64 07 FB
        jmp     L_0938                          ; EB 05
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0934
L_0934:
        or      byte ptr [si + 7], 4            ; 80 4C 07 04
;   [unconditional branch target] L_0938
L_0938:
        or      byte ptr [si + 6], 0x40         ; 80 4C 06 40
        jmp     L_0A63                          ; E9 24 01
        neg     bx                              ; F7 DB
        jmp     L_0953                          ; EB 10
        nop                                     ; 90
        test    byte ptr [si + 7], 0x20         ; F6 44 07 20
        je      L_0953                          ; 74 09
        push    si                              ; 56
        push    bx                              ; 53
        call    far _entry_498                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
;   [branch target] L_0953
L_0953:
        xor     dx, dx                          ; 33 D2
        jmp     L_09C9                          ; EB 72
        nop                                     ; 90
        neg     dx                              ; F7 DA
        xor     bx, bx                          ; 33 DB
        jmp     L_09C9                          ; EB 6B
        nop                                     ; 90
        mov     bx, word ptr [si + 0x16]        ; 8B 5C 16
        sub     bx, word ptr [bp - 4]           ; 2B 5E FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        neg     dx                              ; F7 DA
        jmp     L_09C9                          ; EB 5D
        nop                                     ; 90
        mov     bx, 0x6000                      ; BB 00 60
        xor     dx, dx                          ; 33 D2
        jmp     L_09C9                          ; EB 55
        nop                                     ; 90
        push    si                              ; 56
        call    far _entry_499                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0993                          ; EB 16
        nop                                     ; 90
        test    byte ptr [si + 6], 0x40         ; F6 44 06 40
        je      L_098D                          ; 74 09
        push    si                              ; 56
        call    far _entry_500                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0993                          ; EB 07
        nop                                     ; 90
;   [conditional branch target (if/else)] L_098D
L_098D:
        push    si                              ; 56
        call    far _entry_501                  ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0993
L_0993:
        test    byte ptr [si + 0xa], 0xff       ; F6 44 0A FF
        jne     L_099F                          ; 75 06
        push    si                              ; 56
        call    far _entry_497                  ; 9A 62 08 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_099F
L_099F:
        mov     di, 0x300                       ; BF 00 03
        call    L_0ACD                          ; E8 28 01
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0A4E                          ; E9 A3 00
        test    byte ptr [si + 0xa], 0xff       ; F6 44 0A FF
        jne     L_09BB                          ; 75 0A
        push    si                              ; 56
        sub     ax, 0x22                        ; 2D 22 00
        push    ax                              ; 50
        call    far _entry_502                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_09BB
L_09BB:
        jmp     L_09C6                          ; EB 09
        nop                                     ; 90
        and     byte ptr [si + 6], 0xbf         ; 80 64 06 BF
        and     byte ptr [si + 7], 0xfb         ; 80 64 07 FB
;   [unconditional branch target] L_09C6
L_09C6:
        jmp     L_0A63                          ; E9 9A 00
;   [unconditional branch target] L_09C9
L_09C9:
        test    byte ptr [si + 7], 4            ; F6 44 07 04
        je      L_09EF                          ; 74 20
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        cmp     ax, word ptr [si + 0x12]        ; 3B 44 12
        jne     L_09EB                          ; 75 14
        push    bx                              ; 53
        push    dx                              ; 52
        push    si                              ; 56
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0778                          ; E8 8F FD
        pop     dx                              ; 5A
        pop     bx                              ; 5B
;   [conditional branch target (if/else)] L_09EB
L_09EB:
        and     byte ptr [si + 7], 0xfb         ; 80 64 07 FB
;   [conditional branch target (if/else)] L_09EF
L_09EF:
        add     word ptr [bp - 4], bx           ; 01 5E FC
        add     word ptr [bp - 2], dx           ; 01 56 FE
        test    byte ptr [si + 0xa], 0xff       ; F6 44 0A FF
        jne     L_0A0C                          ; 75 11
        cmp     bx, 0x6000                      ; 81 FB 00 60
        je      L_0A0C                          ; 74 0B
        push    si                              ; 56
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_503                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0A0C
L_0A0C:
        push    si                              ; 56
        mov     ax, 0x410                       ; B8 10 04
        test    byte ptr [si + 6], 0x40         ; F6 44 06 40
        jne     L_0A19                          ; 75 03
        mov     ax, 0x100                       ; B8 00 01
;   [conditional branch target (if/else)] L_0A19
L_0A19:
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0778                          ; E8 53 FD
        test    byte ptr [si + 6], 0x40         ; F6 44 06 40
        jne     L_0A3B                          ; 75 10
        push    si                              ; 56
        mov     ax, 0x101                       ; B8 01 01
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0778                          ; E8 3D FD
;   [conditional branch target (if/else)] L_0A3B
L_0A3B:
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        call    L_0A67                          ; E8 25 00
        push    si                              ; 56
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0703                          ; E8 B5 FC
;   [unconditional branch target] L_0A4E
L_0A4E:
        push    si                              ; 56
        push    ax                              ; 50
        test    byte ptr [si + 0xa], 0xff       ; F6 44 0A FF
        je      L_0A5E                          ; 74 08
        call    far _entry_504                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0A63                          ; EB 06
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0A5E
L_0A5E:
        call    far _entry_505                  ; 9A FF FF 00 00 [FIXUP]
;   [fall-through exit] L_0A63
L_0A63:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (21 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0A67   offset=0x0A67  size=21 instr  segment=seg15.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0A67
L_0A67:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        cmp     ax, word ptr [si + 0x14]        ; 3B 44 14
        jl      L_0A76                          ; 7C 03
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
;   [conditional branch target (if/else)] L_0A76
L_0A76:
        push    ax                              ; 50
        test    byte ptr [si + 0xa], 0xff       ; F6 44 0A FF
        jne     L_0A89                          ; 75 0C
        push    ss                              ; 16
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_506                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0A92                          ; EB 0A
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0A89
L_0A89:
        push    ss                              ; 16
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_507                  ; 9A FF FF 00 00 [FIXUP]
;   [fall-through exit] L_0A92
L_0A92:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (25 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0A98   offset=0x0A98  size=25 instr  segment=seg15.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_016F, L_01A1
;-------------------------------------------------------------------------
;   [sub-routine] L_0A98
L_0A98:
        test    byte ptr [si + 7], 0x10         ; F6 44 07 10
        jne     L_0ACC                          ; 75 2E
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_016F                          ; E8 CB F6
        push    word ptr [si + 2]               ; FF 74 02
        push    ax                              ; 50
        push    si                              ; 56
        push    ax                              ; 50
        push    word ptr [si + 0x10]            ; FF 74 10
        push    word ptr [si + 0x12]            ; FF 74 12
        test    byte ptr [si + 0xa], 0xff       ; F6 44 0A FF
        je      L_0ABE                          ; 74 08
        call    far _entry_493                  ; 9A 49 06 00 00 [FIXUP]
        jmp     L_0AC7                          ; EB 0A
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0ABE
L_0ABE:
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_494                  ; 9A 51 06 00 00 [FIXUP]
;   [unconditional branch target] L_0AC7
L_0AC7:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01A1                          ; E8 D5 F6
;   [error/early exit] L_0ACC
L_0ACC:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (12 instructions).

;-------------------------------------------------------------------------
; sub_0ACD   offset=0x0ACD  size=12 instr  segment=seg15.asm
;
; Classification (pass8): unclear  (score C=2, ASM=0)
; Prologue: saves_regs     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0ACD
L_0ACD:
        push    word ptr [si + 4]               ; FF 74 04
        ; constant WM_COMMAND
        mov     ax, 0x111                       ; B8 11 01
        push    ax                              ; 50
        push    word ptr [si + 2]               ; FF 74 02
        mov     ax, 0xfff4                      ; B8 F4 FF
        push    ax                              ; 50
        call    far _SEG1_6221                  ; 9A 66 05 00 00 [FIXUP]
        push    ax                              ; 50
        push    di                              ; 57
        push    word ptr [si + 2]               ; FF 74 02
        call    far _SEG1_253F                  ; 9A FF FF 00 00 [FIXUP]
        ret                                     ; C3

USER_TEXT ENDS

        END
