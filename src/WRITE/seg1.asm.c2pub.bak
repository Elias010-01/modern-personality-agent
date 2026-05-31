; ======================================================================
; WRITE / seg1.asm   (segment 1 of WRITE)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         6
; Total instructions:                  745
; 
; Classification (pass8):
;   C-origin (high+medium):              1
;   ASM-origin (high+medium):            2
;   Unclear:                             3
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     8 (8 unique)
;   Top:
;        1  GLOBALALLOC
;        1  GLOBALCOMPACT
;        1  GLOBALFREE
;        1  GLOBALSIZE
;        1  LOCALALLOC
;        1  LOCALFREE
;        1  LOCALREALLOC
;        1  LOCALSIZE
; ======================================================================
; AUTO-GENERATED from original WRITE segment 1
; segment_size=1567 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

WRITE_TEXT SEGMENT BYTE PUBLIC 'CODE'

        pop     bx                              ; 5B
        pop     dx                              ; 5A
        sub     ax, sp                          ; 2B C4
        jae     L_001F                          ; 73 19
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_001F                          ; 77 10
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_001A                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
;   [conditional branch target (if/else)] L_001A
L_001A:
        mov     sp, ax                          ; 8B E0
        push    dx                              ; 52
        push    bx                              ; 53
        retf                                    ; CB
;   [conditional branch target (if/else)] L_001F
L_001F:
        mov     dx, word ptr [0x820]            ; 8B 16 20 08
        inc     dx                              ; 42
        je      L_002A                          ; 74 04
        ljmp    [0x820]                         ; FF 2E 20 08
;   [conditional branch target (if/else)] L_002A
L_002A:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
        call    far KERNEL.INITTASK             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0073                          ; 74 31
        mov     word ptr [0x832], 0             ; C7 06 32 08 00 00
        mov     word ptr [0x824], cx            ; 89 0E 24 08
        push    di                              ; 57
        push    si                              ; 56
        push    es                              ; 06
        push    bx                              ; 53
        push    dx                              ; 52
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_025F                          ; E8 09 02
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far KERNEL.WAITEVENT            ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        call    far USER.INITAPP                ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0073                          ; 74 0B
        call    far _entry_391                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_146                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0073
L_0073:
        mov     ax, 0x4cff                      ; B8 FF 4C
        int     0x21                            ; CD 21
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HANDLE    (7 uses)
;     [bp+0x8]  HANDLE    (3 uses)
;   Locals:
;     [bp-0x4]   HANDLE    (2 uses)

; Description (heuristic):
;   Mixed routine using: GLOBALALLOC, GLOBALCOMPACT, GLOBALFREE (+5 more).

;-------------------------------------------------------------------------
; sub_0078   offset=0x0078  size=284 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
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
; Near calls (internal): L_04BC, L_05A0
;-------------------------------------------------------------------------
;   [sub-routine] L_0078
L_0078:
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0xffff                      ; B8 FF FF
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0xffff                      ; B8 FF FF
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wFlags
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A D9 00 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        imul    word ptr [bp + 8]               ; F7 6E 08
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A 34 01 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hMem
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg wBytes
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        ; --> LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.LOCALREALLOC         ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A 4F 01 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wFlags
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hMem
        ; --> LOCALSIZE(HANDLE hMem) -> WORD
        call    far KERNEL.LOCALSIZE            ; 9A F4 01 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     dx, ds                          ; 8C DA
        mov     dx, ax                          ; 8B D0
        sub     ax, ax                          ; 2B C0
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     dx, ds                          ; 8C DA
        mov     dx, ax                          ; 8B D0
        sub     ax, ax                          ; 2B C0
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hMem
        ; --> GLOBALSIZE(HANDLE hMem) -> DWORD
        call    far KERNEL.GLOBALSIZE           ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hMem
        ; --> LOCALSIZE(HANDLE hMem) -> WORD
        call    far KERNEL.LOCALSIZE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0201                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0203                          ; EB 02
;   [conditional branch target (if/else)] L_0201
L_0201:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0203
L_0203:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg dwMinFree (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwMinFree (low/offset)
        ; --> GLOBALCOMPACT(DWORD dwMinFree) -> DWORD
        call    far KERNEL.GLOBALCOMPACT        ; 9A FF FF 00 00 [FIXUP]
        mov     cl, 4                           ; B1 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05A0                          ; E8 7A 03
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bx + 2]               ; FF 77 02
        push    word ptr [bx]                   ; FF 37
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04BC                          ; E8 70 02
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx + 2], dx           ; 89 57 02
        mov     word ptr [bx], ax               ; 89 07
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Description (heuristic):
;   Pure computation / dispatcher (256 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_025F   offset=0x025F  size=256 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=4, ASM=7)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_0488
;-------------------------------------------------------------------------
;   [sub-routine] L_025F
L_025F:
        mov     bx, 0x882                       ; BB 82 08
;   [loop start] L_0262
L_0262:
        cmp     bx, 0x88e                       ; 81 FB 8E 08
        jae     L_0271                          ; 73 09
        push    bx                              ; 53
        lcall   [bx]                            ; FF 1F
        pop     bx                              ; 5B
        add     bx, 4                           ; 83 C3 04
        jmp     L_0262                          ; EB F1
;   [error/early exit] L_0271
L_0271:
        retf                                    ; CB
        mov     bx, 4                           ; BB 04 00
;   [loop start] L_0275
L_0275:
        mov     ax, 0x4400                      ; B8 00 44
        int     0x21                            ; CD 21
        jb      L_0286                          ; 72 0A
        test    dl, 0x80                        ; F6 C2 80
        je      L_0286                          ; 74 05
        or      byte ptr [bx + 0x856], 0x40     ; 80 8F 56 08 40
;   [conditional branch target (if/else)] L_0286
L_0286:
        dec     bx                              ; 4B
        jns     L_0275                          ; 79 EC
        retf                                    ; CB
        mov     ah, 0x30                        ; B4 30
        int     0x21                            ; CD 21
        mov     word ptr [0x838], ax            ; A3 38 08
        retf                                    ; CB
        mov     es, word ptr [0x832]            ; 8E 06 32 08
        mov     si, word ptr es:[0x2c]          ; 26 8B 36 2C 00
        mov     ax, 0x3500                      ; B8 00 35
        int     0x21                            ; CD 21
        mov     word ptr [0x826], bx            ; 89 1E 26 08
        mov     word ptr [0x828], es            ; 8C 06 28 08
        push    cs                              ; 0E
        pop     ds                              ; 1F
        mov     ax, 0x2500                      ; B8 00 25
        mov     dx, 0x2d                        ; BA 2D 00
        int     0x21                            ; CD 21
        mov     cx, word ptr ss:[0x878]         ; 36 8B 0E 78 08
        jcxz    L_02DB                          ; E3 22
        lds     ax, ptr ss:[0x87a]              ; 36 C5 06 7A 08
        mov     dx, ds                          ; 8C DA
        xor     bx, bx                          ; 33 DB
        lcall   ss:[0x876]                      ; 36 FF 1E 76 08
        jae     L_02CC                          ; 73 03
        jmp     L_0030                          ; E9 64 FD
;   [conditional branch target (if/else)] L_02CC
L_02CC:
        lds     ax, ptr ss:[0x87e]              ; 36 C5 06 7E 08
        mov     dx, ds                          ; 8C DA
        ; constant WM_MOVE
        mov     bx, 3                           ; BB 03 00
        lcall   ss:[0x876]                      ; 36 FF 1E 76 08
;   [conditional branch target (if/else)] L_02DB
L_02DB:
        push    ss                              ; 16
        pop     ds                              ; 1F
        retf                                    ; CB
        mov     cx, 0x14                        ; B9 14 00
        xor     bx, bx                          ; 33 DB
;   [loop iteration target] L_02E3
L_02E3:
        test    byte ptr [bx + 0x856], 1        ; F6 87 56 08 01
        je      L_02EE                          ; 74 04
        mov     ah, 0x3e                        ; B4 3E
        int     0x21                            ; CD 21
;   [conditional branch target (if/else)] L_02EE
L_02EE:
        inc     bx                              ; 43
        loop    L_02E3                          ; E2 F2
        retf                                    ; CB
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    bx                              ; 53
        push    si                              ; 56
        push    di                              ; 57
        xor     di, di                          ; 33 FF
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, ax                          ; 0B C0
        jge     L_031A                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     word ptr [bp + 6], dx           ; 89 56 06
;   [conditional branch target (if/else)] L_031A
L_031A:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        or      ax, ax                          ; 0B C0
        jge     L_0333                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
        mov     word ptr [bp + 0xa], dx         ; 89 56 0A
;   [conditional branch target (if/else)] L_0333
L_0333:
        or      ax, ax                          ; 0B C0
        jne     L_034D                          ; 75 16
        mov     cx, word ptr [bp + 0xa]         ; 8B 4E 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        xor     dx, dx                          ; 33 D2
        div     cx                              ; F7 F1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        div     cx                              ; F7 F1
        mov     dx, bx                          ; 8B D3
        jmp     L_038A                          ; EB 3E
        nop                                     ; 90
;   [conditional branch target (if/else)] L_034D
L_034D:
        mov     bx, ax                          ; 8B D8
        mov     cx, word ptr [bp + 0xa]         ; 8B 4E 0A
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
;   [loop start] L_0358
L_0358:
        shr     bx, 1                           ; D1 EB
        rcr     cx, 1                           ; D1 D9
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        or      bx, bx                          ; 0B DB
        jne     L_0358                          ; 75 F4
        div     cx                              ; F7 F1
        mov     si, ax                          ; 8B F0
        xor     dx, dx                          ; 33 D2
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0488                          ; E8 11 01
        cmp     dx, word ptr [bp + 8]           ; 3B 56 08
        ja      L_0383                          ; 77 07
        jb      L_0386                          ; 72 08
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jbe     L_0386                          ; 76 03
;   [conditional branch target (if/else)] L_0383
L_0383:
        sub     si, 1                           ; 83 EE 01
;   [conditional branch target (if/else)] L_0386
L_0386:
        xor     dx, dx                          ; 33 D2
        mov     ax, si                          ; 8B C6
;   [unconditional branch target] L_038A
L_038A:
        or      di, di                          ; 0B FF
        je      L_0395                          ; 74 07
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
;   [conditional branch target (if/else)] L_0395
L_0395:
        pop     di                              ; 5F
        pop     si                              ; 5E
        pop     bx                              ; 5B
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
        xor     bx, bx                          ; 33 DB
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, ax                          ; 0B C0
        jge     L_03CA                          ; 7D 12
        not     bx                              ; F7 D3
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     word ptr [bp + 6], dx           ; 89 56 06
;   [conditional branch target (if/else)] L_03CA
L_03CA:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        or      ax, ax                          ; 0B C0
        jge     L_03E3                          ; 7D 12
        not     bx                              ; F7 D3
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
        mov     word ptr [bp + 0xa], dx         ; 89 56 0A
;   [conditional branch target (if/else)] L_03E3
L_03E3:
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mul     cx                              ; F7 E1
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     si, ax                          ; 8B F0
        mul     cx                              ; F7 E1
        add     di, dx                          ; 03 FA
        xchg    si, ax                          ; 96
        mul     word ptr [bp + 8]               ; F7 66 08
        add     di, ax                          ; 03 F8
        mov     dx, di                          ; 8B D7
        mov     ax, si                          ; 8B C6
        or      bx, bx                          ; 0B DB
        je      L_0408                          ; 74 07
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
;   [conditional branch target (if/else)] L_0408
L_0408:
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
        push    bx                              ; 53
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        or      ax, ax                          ; 0B C0
        jne     L_043E                          ; 75 16
        mov     cx, word ptr [bp + 0xa]         ; 8B 4E 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        xor     dx, dx                          ; 33 D2
        div     cx                              ; F7 F1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        div     cx                              ; F7 F1
        mov     dx, bx                          ; 8B D3
        jmp     L_047B                          ; EB 3E
        nop                                     ; 90
;   [conditional branch target (if/else)] L_043E
L_043E:
        mov     cx, ax                          ; 8B C8
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
;   [loop start] L_0449
L_0449:
        shr     cx, 1                           ; D1 E9
        rcr     bx, 1                           ; D1 DB
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        or      cx, cx                          ; 0B C9
        jne     L_0449                          ; 75 F4
        div     bx                              ; F7 F3
        mov     si, ax                          ; 8B F0
        xor     dx, dx                          ; 33 D2
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0488                          ; E8 20 00
        cmp     dx, word ptr [bp + 8]           ; 3B 56 08
        ja      L_0474                          ; 77 07
        jb      L_0477                          ; 72 08
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jbe     L_0477                          ; 76 03
;   [conditional branch target (if/else)] L_0474
L_0474:
        sub     si, 1                           ; 83 EE 01
;   [conditional branch target (if/else)] L_0477
L_0477:
        xor     dx, dx                          ; 33 D2
        mov     ax, si                          ; 8B C6
;   [unconditional branch target] L_047B
L_047B:
        pop     si                              ; 5E
        pop     bx                              ; 5B
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Pure computation / dispatcher (28 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0488   offset=0x0488  size=28 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0488
L_0488:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mul     cx                              ; F7 E1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     si, ax                          ; 8B F0
        mul     cx                              ; F7 E1
        add     bx, dx                          ; 03 DA
        xchg    si, ax                          ; 96
        mul     word ptr [bp + 8]               ; F7 66 08
        add     bx, ax                          ; 03 D8
        mov     dx, bx                          ; 8B D3
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Pure computation / dispatcher (114 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_04BC   offset=0x04BC  size=114 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=3)
; Prologue: none     Epilogue: retf
;
; Near calls (internal): L_0488
;-------------------------------------------------------------------------
;   [sub-routine] L_04BC
L_04BC:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    bx                              ; 53
        push    di                              ; 57
        xor     di, di                          ; 33 FF
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, ax                          ; 0B C0
        jge     L_04E3                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     word ptr [bp + 6], dx           ; 89 56 06
;   [conditional branch target (if/else)] L_04E3
L_04E3:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        or      ax, ax                          ; 0B C0
        jge     L_04FA                          ; 7D 10
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
        mov     word ptr [bp + 0xa], dx         ; 89 56 0A
;   [conditional branch target (if/else)] L_04FA
L_04FA:
        or      ax, ax                          ; 0B C0
        jne     L_0518                          ; 75 1A
        mov     cx, word ptr [bp + 0xa]         ; 8B 4E 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        xor     dx, dx                          ; 33 D2
        div     cx                              ; F7 F1
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        div     cx                              ; F7 F1
        mov     ax, dx                          ; 8B C2
        xor     dx, dx                          ; 33 D2
        or      di, di                          ; 0B FF
        jne     L_055C                          ; 75 47
        jmp     L_0563                          ; EB 4C
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0518
L_0518:
        mov     bx, ax                          ; 8B D8
        mov     cx, word ptr [bp + 0xa]         ; 8B 4E 0A
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
;   [loop start] L_0523
L_0523:
        shr     bx, 1                           ; D1 EB
        rcr     cx, 1                           ; D1 D9
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        or      bx, bx                          ; 0B DB
        jne     L_0523                          ; 75 F4
        div     cx                              ; F7 F1
        xor     dx, dx                          ; 33 D2
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0488                          ; E8 48 FF
        cmp     dx, word ptr [bp + 8]           ; 3B 56 08
        ja      L_054C                          ; 77 07
        jb      L_0552                          ; 72 0B
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jbe     L_0552                          ; 76 06
;   [conditional branch target (if/else)] L_054C
L_054C:
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        sbb     dx, word ptr [bp + 0xc]         ; 1B 56 0C
;   [conditional branch target (if/else)] L_0552
L_0552:
        sub     ax, word ptr [bp + 6]           ; 2B 46 06
        sbb     dx, word ptr [bp + 8]           ; 1B 56 08
        or      di, di                          ; 0B FF
        jne     L_0563                          ; 75 07
;   [conditional branch target (if/else)] L_055C
L_055C:
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
;   [branch target] L_0563
L_0563:
        pop     di                              ; 5F
        pop     bx                              ; 5B
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        xor     ch, ch                          ; 32 ED
        jcxz    L_057F                          ; E3 06
;   [loop iteration target] L_0579
L_0579:
        shl     ax, 1                           ; D1 E0
        rcl     dx, 1                           ; D1 D2
        loop    L_0579                          ; E2 FA
;   [conditional branch target (if/else)] L_057F
L_057F:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        xor     ch, ch                          ; 32 ED
        jcxz    L_0597                          ; E3 06
;   [loop iteration target] L_0591
L_0591:
        sar     dx, 1                           ; D1 FA
        rcr     ax, 1                           ; D1 D8
        loop    L_0591                          ; E2 FA
;   [conditional branch target (if/else)] L_0597
L_0597:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Pure computation / dispatcher (54 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_05A0   offset=0x05A0  size=54 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=4, ASM=7)
; Prologue: far_inc_bp_standard     Epilogue: retf
;
; Near calls (internal): L_0078, L_060C
;-------------------------------------------------------------------------
;   [sub-routine] L_05A0
L_05A0:
        ;   = cProc <0> ; FAR PASCAL prologue
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        xor     ch, ch                          ; 32 ED
        jcxz    L_05AF                          ; E3 06
;   [loop iteration target] L_05A9
L_05A9:
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        loop    L_05A9                          ; E2 FA
;   [conditional branch target (if/else)] L_05AF
L_05AF:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_060C                          ; E8 45 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0078                          ; E8 AC FA
        or      ah, ah                          ; 0A E4
        je      L_05DA                          ; 74 0A
        cmp     byte ptr [bp + 6], 0            ; 80 7E 06 00
        jne     L_05DA                          ; 75 04
        mov     byte ptr [bp + 6], 0xfe         ; C6 46 06 FE
;   [conditional branch target (if/else)] L_05DA
L_05DA:
        push    ds                              ; 1E
        lds     dx, ptr [0x826]                 ; C5 16 26 08
        mov     ax, 0x2500                      ; B8 00 25
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     cx, word ptr [0x878]            ; 8B 0E 78 08
        jcxz    L_05F2                          ; E3 07
        mov     bx, 2                           ; BB 02 00
        lcall   [0x876]                         ; FF 1E 76 08
;   [conditional branch target (if/else)] L_05F2
L_05F2:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     ah, 0x4c                        ; B4 4C
        int     0x21                            ; CD 21
        mov     bx, 0x88e                       ; BB 8E 08
;   [loop start] L_05FC
L_05FC:
        cmp     bx, 0x88e                       ; 81 FB 8E 08
        jae     L_060B                          ; 73 09
        push    bx                              ; 53
        lcall   [bx]                            ; FF 1F
        pop     bx                              ; 5B
        add     bx, 4                           ; 83 C3 04
        jmp     L_05FC                          ; EB F1
;   [error/early exit] L_060B
L_060B:
        retf                                    ; CB
; Description (heuristic):
;   Internal helper (9 instructions).

;-------------------------------------------------------------------------
; sub_060C   offset=0x060C  size=9 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: retf
;-------------------------------------------------------------------------
;   [sub-routine] L_060C
L_060C:
        mov     bx, 0x88e                       ; BB 8E 08
;   [loop start] L_060F
L_060F:
        cmp     bx, 0x892                       ; 81 FB 92 08
        jae     L_061E                          ; 73 09
        push    bx                              ; 53
        lcall   [bx]                            ; FF 1F
        pop     bx                              ; 5B
        add     bx, 4                           ; 83 C3 04
        jmp     L_060F                          ; EB F1
;   [error/early exit] L_061E
L_061E:
        retf                                    ; CB

WRITE_TEXT ENDS

        END
