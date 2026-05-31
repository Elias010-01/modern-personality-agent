; ======================================================================
; GDI / seg2.asm   (segment 2 of GDI)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         3
; Total instructions:                  216
; 
; Classification (pass8):
;   C-origin (high+medium):              1
;   ASM-origin (high+medium):            0
;   Unclear:                             2
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     9 (9 unique)
;   Top:
;        1  LOCALINIT
;        1  ADDATOM
;        1  FINDRESOURCE
;        1  FREERESOURCE
;        1  GETMODULEHANDLE
;        1  GETPROFILESTRING
;        1  GLOBALLOCK
;        1  GLOBALUNLOCK
; ======================================================================
; AUTO-GENERATED from original GDI segment 2
; segment_size=479 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

GDI_TEXT SEGMENT BYTE PUBLIC 'CODE'


;-----------------------------------------------------------------------
; entry  (offset 0x0000, size 92 bytes)
;-----------------------------------------------------------------------
entry PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x28                        ; 83 EC 28
        push    si                              ; 56
        push    di                              ; 57
        mov     word ptr [0x104], di            ; 89 3E 04 01
        xor     ax, ax                          ; 33 C0
        jcxz    L_0051                          ; E3 3A
        push    ax                              ; 50
        ;   ^ arg wSegment
        push    ax                              ; 50
        ;   ^ arg wStart
        push    cx                              ; 51
        ;   ^ arg wEnd
        ; --> LOCALINIT(WORD wSegment, WORD wStart, WORD wEnd) -> BOOL
        call    far KERNEL.LOCALINIT            ; 9A FF FF 00 00 [FIXUP]
        jcxz    L_0051                          ; E3 30
        xor     ax, ax                          ; 33 C0
        mov     word ptr [0x38], ax             ; A3 38 00
        mov     word ptr [0x3a], ax             ; A3 3A 00
        call    L_0195                          ; E8 69 01
        or      ax, ax                          ; 0B C0
        je      L_0051                          ; 74 21
        call    L_005C                          ; E8 29 00
        je      L_0051                          ; 74 1C
        call    L_0176                          ; E8 3E 01
        je      L_0051                          ; 74 17
        push    ax                              ; 50
        call    far _SEG1_1694                  ; 9A FF FF 00 00 [FIXUP]
        pop     ax                              ; 58
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     di, 0x3c                        ; BF 3C 00
        mov     cx, 0x64                        ; B9 64 00
        xor     ax, ax                          ; 33 C0
        rep stosw word ptr es:[di], ax          ; F3 AB
        not     ax                              ; F7 D0
;   [conditional branch target (if/else)] L_0051
L_0051:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
entry ENDP

; Description (heuristic):
;   Allocation / initialization routine (2 alloc APIs).

;-------------------------------------------------------------------------
; sub_005C   offset=0x005C  size=138 instr  segment=seg2.asm
;
; Classification (pass8): unclear  (score C=2, ASM=3)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   ADDATOM
;   FINDRESOURCE
;   FREERESOURCE
;   GETMODULEHANDLE(LPSTR lpszModule) -> HANDLE
;   GETPROFILESTRING
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;   LOADRESOURCE
;-------------------------------------------------------------------------
;   [sub-routine] L_005C
L_005C:
        lea     ax, [0xab]                      ; 8D 06 AB 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ADDATOM              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x10], ax             ; A3 10 00
        lea     ax, [0xc0]                      ; 8D 06 C0 00
        lea     bx, [0xc8]                      ; 8D 1E C8 00
        lea     cx, [0xd1]                      ; 8D 0E D1 00
        lea     si, [bp - 0x2a]                 ; 8D 76 D6
        mov     dx, 0x28                        ; BA 28 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    bx                              ; 53
        push    ds                              ; 1E
        push    cx                              ; 51
        push    ss                              ; 16
        push    si                              ; 56
        push    dx                              ; 52
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        push    ss                              ; 16
        push    si                              ; 56
        call    far KERNEL.ADDATOM              ; 9A 63 00 00 00 [FIXUP]
        mov     word ptr [0x12], ax             ; A3 12 00
        lea     di, [0x14]                      ; 8D 3E 14 00
        xor     si, si                          ; 33 F6
;   [loop start] L_009A
L_009A:
        mov     cx, word ptr cs:[si + 0x15f]    ; 2E 8B 8C 5F 01
        jcxz    L_00C7                          ; E3 26
;   [loop iteration target] L_00A1
L_00A1:
        push    cx                              ; 51
        push    ds                              ; 1E
        push    word ptr [di]                   ; FF 35
        push    cs                              ; 0E
        mov     word ptr [di], 0                ; C7 05 00 00
        call    word ptr cs:[si + 0x159]        ; 2E FF 94 59 01
        pop     cx                              ; 59
        or      ax, ax                          ; 0B C0
        je      L_00C6                          ; 74 12
        mov     word ptr [di], ax               ; 89 05
        inc     di                              ; 47
        inc     di                              ; 47
        mov     bx, ax                          ; 8B D8
        mov     bx, word ptr [bx]               ; 8B 1F
        or      byte ptr [bx + 3], 0x80         ; 80 4F 03 80
        loop    L_00A1                          ; E2 DF
        inc     si                              ; 46
        inc     si                              ; 46
        jmp     L_009A                          ; EB D4
;   [loop start (also forward branch)] L_00C6
L_00C6:
        ret                                     ; C3
;   [conditional branch target (if/else)] L_00C7
L_00C7:
        push    ds                              ; 1E
        ;   ^ arg lpszModule (high/segment)
        push    word ptr [di]                   ; FF 35
        ;   ^ arg lpszModule (low/offset)
        ; --> GETMODULEHANDLE(LPSTR lpszModule) -> HANDLE
        call    far KERNEL.GETMODULEHANDLE      ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_00C6                          ; 74 F3
        mov     si, ax                          ; 8B F0
        lea     bx, [0xb3]                      ; 8D 1E B3 00
        lea     cx, [0xb9]                      ; 8D 0E B9 00
        push    si                              ; 56
        push    ds                              ; 1E
        push    bx                              ; 53
        push    ds                              ; 1E
        push    cx                              ; 51
        call    far KERNEL.FINDRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_00C6                          ; 74 DB
        push    si                              ; 56
        push    ax                              ; 50
        call    far KERNEL.LOADRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_00C6                          ; 74 D0
        push    ax                              ; 50
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        jcxz    L_0130                          ; E3 31
        mov     si, ax                          ; 8B F0
        mov     es, dx                          ; 8E C2
;   [loop start] L_0103
L_0103:
        push    es                              ; 06
        push    es                              ; 06
        push    si                              ; 56
        call    far _SEG1_09E7                  ; 9A FF FF 00 00 [FIXUP]
        pop     es                              ; 07
        mov     word ptr [di], ax               ; 89 05
        or      ax, ax                          ; 0B C0
        je      L_0130                          ; 74 1E
        mov     bx, ax                          ; 8B D8
        mov     bx, word ptr [bx]               ; 8B 1F
        or      byte ptr [bx + 3], 0x80         ; 80 4F 03 80
        add     si, 0x12                        ; 83 C6 12
        xchg    di, si                          ; 87 F7
        xor     al, al                          ; 32 C0
        mov     cx, 0xffff                      ; B9 FF FF
        repne scasb al, byte ptr es:[di]        ; F2 AE
        xchg    di, si                          ; 87 F7
        inc     di                              ; 47
        inc     di                              ; 47
        cmp     di, 0x30                        ; 81 FF 30 00
        jle     L_0103                          ; 7E D3
;   [conditional branch target (if/else)] L_0130
L_0130:
        pop     di                              ; 5F
        je      L_0158                          ; 74 25
        push    di                              ; 57
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        call    far KERNEL.FREERESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x98                        ; B8 98 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_09E7                  ; 9A 07 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0158                          ; 74 0B
        mov     word ptr [0x32], ax             ; A3 32 00
        mov     bx, ax                          ; 8B D8
        mov     bx, word ptr [bx]               ; 8B 1F
        or      byte ptr [bx + 3], 0x80         ; 80 4F 03 80
;   [error/early exit] L_0158
L_0158:
        ret                                     ; C3
        add     word ptr [ecx + eax + 0x71], bp ; 67 01 6C 01 71
        add     word ptr [bx + di], ax          ; 01 01
        add     byte ptr [0x400], al            ; 00 06 00 04
        add     byte ptr [bx + si], al          ; 00 00
        add     dl, ch                          ; 00 EA
        db      0ffh                            ; FF
        inc     word ptr [bx + si]              ; FF 00
        add     dl, ch                          ; 00 EA
        db      0ffh                            ; FF
        inc     word ptr [bx + si]              ; FF 00
        add     dl, ch                          ; 00 EA
        db      0ffh                            ; FF
        inc     word ptr [bx + si]              ; FF 00
        add     byte ptr [bx + si + 9], bh      ; 00 B8 09 00
        push    ax                              ; 50
        call    far _SEG1_15F6                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x34], ax             ; A3 34 00
        or      ax, ax                          ; 0B C0
        je      L_0194                          ; 74 0E
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        call    far _SEG1_15F6                  ; 9A 7B 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        mov     word ptr [0x36], ax             ; A3 36 00
;   [error/early exit] L_0194
L_0194:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (32 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0195   offset=0x0195  size=32 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0195
L_0195:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0x69                        ; B8 69 00
        push    ax                              ; 50
        call    far _SEG1_15F6                  ; 9A C3 01 00 00 [FIXUP]
        mov     word ptr [0x394], ax            ; A3 94 03
        or      ax, ax                          ; 0B C0
        jne     L_01AC                          ; 75 04
;   [loop start] L_01A8
L_01A8:
        sub     ax, ax                          ; 2B C0
        jmp     L_01DB                          ; EB 2F
;   [conditional branch target (if/else)] L_01AC
L_01AC:
        mov     ax, 0x5a                        ; B8 5A 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_162D                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x3f4], ax            ; A3 F4 03
        or      ax, ax                          ; 0B C0
        je      L_01A8                          ; 74 EA
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far _SEG1_15F6                  ; 9A 8B 01 00 00 [FIXUP]
        mov     word ptr [0x39a], ax            ; A3 9A 03
        or      ax, ax                          ; 0B C0
        je      L_01A8                          ; 74 DA
        mov     ax, 0x122                       ; B8 22 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_119                  ; 9A FF FF 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_01DB
L_01DB:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3

GDI_TEXT ENDS

        END
