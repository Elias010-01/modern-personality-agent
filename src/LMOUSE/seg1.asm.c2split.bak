; ======================================================================
; LMOUSE / seg1.asm   (segment 1 of LMOUSE)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        17
; Total instructions:                  559
; 
; Classification (pass8):
;   C-origin (high+medium):              0
;   ASM-origin (high+medium):            5
;   Unclear:                            12
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     0 (0 unique)
; ======================================================================
; AUTO-GENERATED from original LMOUSE segment 1
; segment_size=1421 bytes, flags=0x0040
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

LMOUSE_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ax                              ; 50
        push    bx                              ; 53
        push    cx                              ; 51
        push    dx                              ; 52
        push    si                              ; 56
        push    di                              ; 57
        push    bp                              ; 55
        push    ds                              ; 1E
        push    es                              ; 06
        mov     ax, word ptr cs:[0x474]         ; 2E A1 74 04
        mov     ds, ax                          ; 8E D8
        call    L_0028                          ; E8 16 00
        or      ax, ax                          ; 0B C0
        je      L_001E                          ; 74 08
        mov     dx, word ptr [2]                ; 8B 16 02 00
        lcall   [0x16]                          ; FF 1E 16 00
;   [conditional branch target (if/else)] L_001E
L_001E:
        pop     es                              ; 07
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        pop     di                              ; 5F
        pop     si                              ; 5E
        pop     dx                              ; 5A
        pop     cx                              ; 59
        pop     bx                              ; 5B
        pop     ax                              ; 58
        iret                                    ; CF
; Description (heuristic):
;   Pure computation / dispatcher (64 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0028   offset=0x0028  size=64 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_00D9
;-------------------------------------------------------------------------
;   [sub-routine] L_0028
L_0028:
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        in      al, dx                          ; EC
        mov     dl, al                          ; 8A D0
        and     dl, 0xf8                        ; 80 E2 F8
        cmp     dl, 0x80                        ; 80 FA 80
        je      L_003A                          ; 74 03
        jmp     L_0092                          ; EB 59
        nop                                     ; 90
;   [conditional branch target (if/else)] L_003A
L_003A:
        xor     dx, dx                          ; 33 D2
        mov     word ptr [0x37], dx             ; 89 16 37 00
        not     ax                              ; F7 D0
        mov     cl, 4                           ; B1 04
        call    L_00D9                          ; E8 92 00
        je      L_0057                          ; 74 0E
        ja      L_0052                          ; 77 07
        or      byte ptr [0x37], 4              ; 80 0E 37 00 04
        jmp     L_0057                          ; EB 05
;   [conditional branch target (if/else)] L_0052
L_0052:
        or      byte ptr [0x37], 2              ; 80 0E 37 00 02
;   [branch target] L_0057
L_0057:
        ; constant WM_CREATE
        mov     cl, 1                           ; B1 01
        call    L_00D9                          ; E8 7D 00
        je      L_006C                          ; 74 0E
        ja      L_0067                          ; 77 07
        or      byte ptr [0x37], 0x10           ; 80 0E 37 00 10
        jmp     L_006C                          ; EB 05
;   [conditional branch target (if/else)] L_0067
L_0067:
        or      byte ptr [0x37], 8              ; 80 0E 37 00 08
;   [branch target] L_006C
L_006C:
        mov     cl, 2                           ; B1 02
        call    L_00D9                          ; E8 68 00
        je      L_0081                          ; 74 0E
        ja      L_007C                          ; 77 07
        or      byte ptr [0x37], 0x40           ; 80 0E 37 00 40
        jmp     L_0081                          ; EB 05
;   [conditional branch target (if/else)] L_007C
L_007C:
        or      byte ptr [0x37], 0x20           ; 80 0E 37 00 20
;   [branch target] L_0081
L_0081:
        xor     ax, ax                          ; 33 C0
        mov     word ptr [0x3d], ax             ; A3 3D 00
        mov     word ptr [0x3b], ax             ; A3 3B 00
        mov     byte ptr [0x3f], 1              ; C6 06 3F 00 01
;   [loop start] L_008E
L_008E:
        xor     ax, ax                          ; 33 C0
        jmp     L_00D1                          ; EB 3F
;   [unconditional branch target] L_0092
L_0092:
        cmp     byte ptr [0x3f], 0              ; 80 3E 3F 00 00
        je      L_008E                          ; 74 F5
        mov     bx, 0x3b                        ; BB 3B 00
        test    byte ptr [0x3f], 1              ; F6 06 3F 00 01
        jne     L_00A6                          ; 75 03
        mov     bx, 0x3d                        ; BB 3D 00
;   [conditional branch target (if/else)] L_00A6
L_00A6:
        cwde                                    ; 98
        add     word ptr [bx], ax               ; 01 07
        inc     byte ptr [0x3f]                 ; FE 06 3F 00
        cmp     byte ptr [0x3f], 5              ; 80 3E 3F 00 05
        jb      L_008E                          ; 72 DA
        mov     cx, word ptr [0x3d]             ; 8B 0E 3D 00
        neg     cx                              ; F7 D9
        mov     bx, word ptr [0x3b]             ; 8B 1E 3B 00
        mov     byte ptr [0x3f], 0              ; C6 06 3F 00 00
        mov     ax, bx                          ; 8B C3
        or      ax, cx                          ; 0B C1
        je      L_00CE                          ; 74 05
        or      byte ptr [0x37], 1              ; 80 0E 37 00 01
;   [conditional branch target (if/else)] L_00CE
L_00CE:
        mov     ax, word ptr [0x37]             ; A1 37 00
;   [unconditional branch target] L_00D1
L_00D1:
        push    ax                              ; 50
        mov     al, 0x20                        ; B0 20
        out     0x20, al                        ; E6 20
        sti                                     ; FB
        pop     ax                              ; 58
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (143 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_00D9   offset=0x00D9  size=143 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=7)
; Prologue: none     Epilogue: ret
;
; Near calls (first 8 of 9): L_0267, L_0278, L_028B, L_02A2, L_02C0, L_02E4, L_032F, L_0387 ...
;-------------------------------------------------------------------------
;   [sub-routine] L_00D9
L_00D9:
        xor     ch, ch                          ; 32 ED
        mov     dl, al                          ; 8A D0
        and     dx, cx                          ; 23 D1
        not     cx                              ; F7 D1
        and     cx, word ptr [0x39]             ; 23 0E 39 00
        or      dx, cx                          ; 0B D1
        xchg    word ptr [0x39], dx             ; 87 16 39 00
        cmp     word ptr [0x39], dx             ; 39 16 39 00
        ret                                     ; C3
        not     byte ptr cs:[0xfe]              ; 2E F6 16 FE 00
        ljmp    cs:[0xfa]                       ; 2E FF 2E FA 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bp + di], cl          ; 00 0B
        sal     byte ptr [di + 3], 0xbe         ; C0 75 03 BE
        sub     ax, word ptr [bx + si]          ; 2B 00
;   [loop start] L_0106
L_0106:
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [0xe], ax              ; A3 0E 00
        lodsb   al, byte ptr [si]               ; AC
        mov     byte ptr [0x10], al             ; A2 10 00
        lodsb   al, byte ptr [si]               ; AC
        mov     byte ptr [0x11], al             ; A2 11 00
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [0x12], ax             ; A3 12 00
        cld                                     ; FC
        mov     di, 0x1e                        ; BF 1E 00
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 1                           ; 80 C2 01
        in      al, dx                          ; EC
        stosb   byte ptr es:[di], al            ; AA
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 4                           ; 80 C2 04
        in      al, dx                          ; EC
        stosb   byte ptr es:[di], al            ; AA
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 3                           ; 80 C2 03
        in      al, dx                          ; EC
        stosb   byte ptr es:[di], al            ; AA
        or      al, 0x80                        ; 0C 80
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 3                           ; 80 C2 03
        out     dx, al                          ; EE
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 0                           ; 80 C2 00
        in      al, dx                          ; EC
        stosb   byte ptr es:[di], al            ; AA
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 1                           ; 80 C2 01
        in      al, dx                          ; EC
        stosb   byte ptr es:[di], al            ; AA
        mov     al, byte ptr [0x20]             ; A0 20 00
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 3                           ; 80 C2 03
        out     dx, al                          ; EE
        call    L_028B                          ; E8 2A 01
        cmp     byte ptr [0x34], 0xff           ; 80 3E 34 00 FF
        jne     L_01D4                          ; 75 6C
        mov     byte ptr [0x34], 0              ; C6 06 34 00 00
        mov     al, 8                           ; B0 08
        mov     ah, 0x35                        ; B4 35
        int     0x21                            ; CD 21
        mov     word ptr cs:[0xfa], bx          ; 2E 89 1E FA 00
        mov     word ptr cs:[0xfc], es          ; 2E 8C 06 FC 00
        mov     word ptr [0x35], 0              ; C7 06 35 00 00 00
        mov     byte ptr cs:[0xfe], 0           ; 2E C6 06 FE 00 00
        lea     dx, [0xf0]                      ; 8D 16 F0 00
        mov     bx, 0x20                        ; BB 20 00
        push    ds                              ; 1E
        xor     ax, ax                          ; 33 C0
        mov     ds, ax                          ; 8E D8
        cli                                     ; FA
        mov     word ptr [bx], dx               ; 89 17
        mov     word ptr [bx + 2], cs           ; 8C 4F 02
        sti                                     ; FB
        pop     ds                              ; 1F
;   [loop start] L_019D
L_019D:
        cmp     byte ptr cs:[0xfe], 0           ; 2E 80 3E FE 00 00
        je      L_019D                          ; 74 F8
;   [loop start] L_01A5
L_01A5:
        inc     word ptr [0x35]                 ; FF 06 35 00
        mov     cx, 0x6e                        ; B9 6E 00
;   [loop iteration target] L_01AC
L_01AC:
        loop    L_01AC                          ; E2 FE
        cmp     byte ptr cs:[0xfe], 0xff        ; 2E 80 3E FE 00 FF
        je      L_01A5                          ; 74 EF
        shl     word ptr [0x35], 1              ; D1 26 35 00
        push    ds                              ; 1E
        xor     ax, ax                          ; 33 C0
        mov     ds, ax                          ; 8E D8
        mov     bx, 0x20                        ; BB 20 00
        cli                                     ; FA
        mov     dx, word ptr cs:[0xfa]          ; 2E 8B 16 FA 00
        mov     word ptr [bx], dx               ; 89 17
        mov     dx, word ptr cs:[0xfc]          ; 2E 8B 16 FC 00
        mov     word ptr [bx + 2], dx           ; 89 57 02
        sti                                     ; FB
        pop     ds                              ; 1F
;   [conditional branch target (if/else)] L_01D4
L_01D4:
        call    L_032F                          ; E8 58 01
;   [loop start] L_01D7
L_01D7:
        mov     cx, word ptr [0x35]             ; 8B 0E 35 00
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 5                           ; 80 C2 05
        in      al, dx                          ; EC
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 0                           ; 80 C2 00
        mov     al, 0x73                        ; B0 73
        out     dx, al                          ; EE
        call    L_0267                          ; E8 6D 00
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dx, 5                           ; 83 C2 05
;   [loop iteration target] L_0201
L_0201:
        in      al, dx                          ; EC
        and     al, 1                           ; 24 01
        je      L_0213                          ; 74 0D
        sub     dx, 5                           ; 83 EA 05
        in      al, dx                          ; EC
        and     al, 0x3f                        ; 24 3F
        cmp     al, 0xf                         ; 3C 0F
        je      L_021C                          ; 74 0C
        add     dx, 5                           ; 83 C2 05
;   [conditional branch target (if/else)] L_0213
L_0213:
        loop    L_0201                          ; E2 EC
        call    L_0387                          ; E8 6F 01
        jb      L_0234                          ; 72 1A
        jmp     L_01D7                          ; EB BB
;   [conditional branch target (if/else)] L_021C
L_021C:
        mov     al, byte ptr [0x32]             ; A0 32 00
        cmp     byte ptr [0x31], al             ; 38 06 31 00
        je      L_0228                          ; 74 03
        call    L_02E4                          ; E8 BC 00
;   [conditional branch target (if/else)] L_0228
L_0228:
        call    L_02A2                          ; E8 77 00
        call    L_02C0                          ; E8 92 00
        call    L_0278                          ; E8 47 00
        jmp     L_03D1                          ; E9 9D 01
;   [conditional branch target (if/else)] L_0234
L_0234:
        call    L_03F3                          ; E8 BC 01
        mov     al, 0x20                        ; B0 20
        out     0x20, al                        ; E6 20
        xor     ax, ax                          ; 33 C0
        cmp     word ptr [0xe], 0x2f8           ; 81 3E 0E 00 F8 02
        je      L_024B                          ; 74 06
        mov     si, 0x25                        ; BE 25 00
        jmp     L_0106                          ; E9 BB FE
;   [error/early exit] L_024B
L_024B:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (9 instructions).

;-------------------------------------------------------------------------
; sub_024C   offset=0x024C  size=9 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: saves_regs     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_024C
L_024C:
        push    cx                              ; 51
        mov     cx, 0xa                         ; B9 0A 00
;   [loop iteration target] L_0250
L_0250:
        push    cx                              ; 51
        mov     cx, word ptr [0x35]             ; 8B 0E 35 00
;   [loop iteration target] L_0255
L_0255:
        loop    L_0255                          ; E2 FE
        pop     cx                              ; 59
        loop    L_0250                          ; E2 F6
        pop     cx                              ; 59
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (6 instructions).

;-------------------------------------------------------------------------
; sub_025C   offset=0x025C  size=6 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: saves_regs     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_025C
L_025C:
        push    cx                              ; 51
        mov     cx, word ptr [0x35]             ; 8B 0E 35 00
;   [loop iteration target] L_0261
L_0261:
        loop    L_0261                          ; E2 FE
        pop     cx                              ; 59
        loop    L_025C                          ; E2 F6
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (9 instructions).

;-------------------------------------------------------------------------
; sub_0267   offset=0x0267  size=9 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=0)
; Prologue: saves_regs     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0267
L_0267:
        push    ax                              ; 50
;   [loop start] L_0268
L_0268:
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dx, 5                           ; 83 C2 05
        in      al, dx                          ; EC
        and     al, 0x60                        ; 24 60
        cmp     al, 0x60                        ; 3C 60
        jne     L_0268                          ; 75 F2
        pop     ax                              ; 58
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (8 instructions).

;-------------------------------------------------------------------------
; sub_0278   offset=0x0278  size=8 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0278
L_0278:
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 1                           ; 80 C2 01
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        out     dx, al                          ; EE
        in      al, 0x21                        ; E4 21
        and     al, byte ptr [0x11]             ; 22 06 11 00
        out     0x21, al                        ; E6 21
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (10 instructions).

;-------------------------------------------------------------------------
; sub_028B   offset=0x028B  size=10 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_028B
L_028B:
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 1                           ; 80 C2 01
        mov     al, 0                           ; B0 00
        out     dx, al                          ; EE
        in      al, 0x21                        ; E4 21
        mov     bl, byte ptr [0x11]             ; 8A 1E 11 00
        not     bl                              ; F6 D3
        or      al, bl                          ; 0A C3
        out     0x21, al                        ; E6 21
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (12 instructions).

;-------------------------------------------------------------------------
; sub_02A2   offset=0x02A2  size=12 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0267, L_02D1
;-------------------------------------------------------------------------
;   [sub-routine] L_02A2
L_02A2:
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 0                           ; 80 C2 00
        mov     al, 0x55                        ; B0 55
        out     dx, al                          ; EE
        call    L_0267                          ; E8 B8 FF
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 3                           ; 80 C2 03
        ; constant WM_PAINT
        mov     al, 0xf                         ; B0 0F
        out     dx, al                          ; EE
        call    L_0267                          ; E8 AB FF
        call    L_02D1                          ; E8 12 00
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (7 instructions).

;-------------------------------------------------------------------------
; sub_02C0   offset=0x02C0  size=7 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0267, L_02D1
;-------------------------------------------------------------------------
;   [sub-routine] L_02C0
L_02C0:
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 0                           ; 80 C2 00
        mov     al, 0x4e                        ; B0 4E
        out     dx, al                          ; EE
        call    L_0267                          ; E8 9A FF
        call    L_02D1                          ; E8 01 00
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (8 instructions).

;-------------------------------------------------------------------------
; sub_02D1   offset=0x02D1  size=8 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_02D1
L_02D1:
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 5                           ; 80 C2 05
        mov     al, 0                           ; B0 00
        out     dx, al                          ; EE
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 5                           ; 80 C2 05
        in      al, dx                          ; EC
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (29 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_02E4   offset=0x02E4  size=29 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_024C, L_0267
;-------------------------------------------------------------------------
;   [sub-routine] L_02E4
L_02E4:
        call    L_0267                          ; E8 80 FF
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 0                           ; 80 C2 00
        mov     al, 0x2a                        ; B0 2A
        out     dx, al                          ; EE
        call    L_0267                          ; E8 73 FF
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 0                           ; 80 C2 00
        mov     al, byte ptr [0x33]             ; A0 33 00
        out     dx, al                          ; EE
        call    L_0267                          ; E8 65 FF
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 3                           ; 80 C2 03
        mov     al, 0x8f                        ; B0 8F
        out     dx, al                          ; EE
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 0                           ; 80 C2 00
        mov     al, byte ptr [0x32]             ; A0 32 00
        out     dx, al                          ; EE
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 1                           ; 80 C2 01
        mov     al, 0                           ; B0 00
        out     dx, al                          ; EE
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 3                           ; 80 C2 03
        ; constant WM_PAINT
        mov     al, 0xf                         ; B0 0F
        out     dx, al                          ; EE
        call    L_024C                          ; E8 1E FF
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (34 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_032F   offset=0x032F  size=34 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_025C
;-------------------------------------------------------------------------
;   [sub-routine] L_032F
L_032F:
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 4                           ; 80 C2 04
        mov     al, 0xb                         ; B0 0B
        out     dx, al                          ; EE
        mov     cx, 0xfa                        ; B9 FA 00
        call    L_025C                          ; E8 1D FF
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 3                           ; 80 C2 03
        ; constant GMEM_ZEROINIT
        mov     al, 0x80                        ; B0 80
        out     dx, al                          ; EE
        mov     byte ptr [0x31], 0x60           ; C6 06 31 00 60
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 0                           ; 80 C2 00
        mov     al, 0x60                        ; B0 60
        out     dx, al                          ; EE
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 1                           ; 80 C2 01
        mov     al, 0                           ; B0 00
        out     dx, al                          ; EE
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 3                           ; 80 C2 03
        ; constant WM_PAINT
        mov     al, 0xf                         ; B0 0F
        out     dx, al                          ; EE
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 6                           ; 80 C2 06
        in      al, dx                          ; EC
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 5                           ; 80 C2 05
        mov     al, 0                           ; B0 00
        out     dx, al                          ; EE
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 5                           ; 80 C2 05
        in      al, dx                          ; EC
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (43 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0387   offset=0x0387  size=43 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=3)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0387
L_0387:
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 3                           ; 80 C2 03
        mov     al, 0x8f                        ; B0 8F
        out     dx, al                          ; EE
        shr     byte ptr [0x31], 1              ; D0 2E 31 00
        cmp     byte ptr [0x31], 6              ; 80 3E 31 00 06
        je      L_03CF                          ; 74 33
        clc                                     ; F8
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 0                           ; 80 C2 00
        mov     al, byte ptr [0x31]             ; A0 31 00
        out     dx, al                          ; EE
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 1                           ; 80 C2 01
        mov     al, 0                           ; B0 00
        out     dx, al                          ; EE
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 3                           ; 80 C2 03
        ; constant WM_PAINT
        mov     al, 0xf                         ; B0 0F
        out     dx, al                          ; EE
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 5                           ; 80 C2 05
        mov     al, 0                           ; B0 00
        out     dx, al                          ; EE
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 5                           ; 80 C2 05
        in      al, dx                          ; EC
        ret                                     ; C3
;   [conditional branch target (if/else)] L_03CF
L_03CF:
        stc                                     ; F9
        ret                                     ; C3
;   [unconditional branch target] L_03D1
L_03D1:
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        inc     dx                              ; 42
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        out     dx, al                          ; EE
        mov     ax, 0x40                        ; B8 40 00
        mov     es, ax                          ; 8E C0
        xor     ax, ax                          ; 33 C0
        mov     di, word ptr [0x12]             ; 8B 3E 12 00
        mov     word ptr [0x23], di             ; 89 3E 23 00
        stosw   word ptr es:[di], ax            ; AB
        mov     word ptr [4], 0x28              ; C7 06 04 00 28 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (82 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_03F3   offset=0x03F3  size=82 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_03F3
L_03F3:
        mov     al, byte ptr [0x20]             ; A0 20 00
        or      al, 0x80                        ; 0C 80
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 3                           ; 80 C2 03
        out     dx, al                          ; EE
        xchg    byte ptr [0x21], al             ; 86 06 21 00
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 0                           ; 80 C2 00
        out     dx, al                          ; EE
        xchg    byte ptr [0x22], al             ; 86 06 22 00
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 1                           ; 80 C2 01
        out     dx, al                          ; EE
        xchg    byte ptr [0x1f], al             ; 86 06 1F 00
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 4                           ; 80 C2 04
        out     dx, al                          ; EE
        xchg    byte ptr [0x20], al             ; 86 06 20 00
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 3                           ; 80 C2 03
        out     dx, al                          ; EE
        xchg    byte ptr [0x1e], al             ; 86 06 1E 00
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dl, 1                           ; 80 C2 01
        out     dx, al                          ; EE
        ret                                     ; C3
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        les     di, ptr [bp + 6]                ; C4 7E 06
        mov     si, 0                           ; BE 00 00
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        mov     cx, ax                          ; 8B C8
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        sub     ax, cx                          ; 2B C1
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        jmp     L_048A                          ; EB 17
        nop                                     ; 90
        add     byte ptr [bx + si], al          ; 00 00
        push    di                              ; 57
        jb      L_04E2                          ; 72 69
        je      L_04EF                          ; 74 74
        outsb   dx, byte ptr gs:[si]            ; 65 6E
        and     byte ptr [bp + si + 0x79], al   ; 20 42 79
        and     byte ptr [bp + si + 0x65], cl   ; 20 4A 65
        and     byte ptr [bx + si + 0x61], dl   ; 66 66 20 50 61
        arpl    word ptr [bp + di - 0x74], bp   ; 63 6B 8C
        fsubr   dword ptr [0x74a3]              ; D8 2E A3 74
        add     al, 0x33                        ; 04 33
        shl     byte ptr [bp + si], 0x83        ; C0 A2 00 00 83
        and     ax, word ptr ds:[bx + si]       ; 3E 23 00
        push    word ptr [si + 0x25]            ; FF 74 25
        mov     ah, byte ptr [0x11]             ; 8A 26 11 00
        not     ah                              ; F6 D4
        pushf                                   ; 9C
        cli                                     ; FA
        in      al, 0x21                        ; E4 21
        or      al, ah                          ; 0A C4
        out     0x21, al                        ; E6 21
        jmp     L_04AD                          ; EB 01
; Description (heuristic):
;   Pure computation / dispatcher (36 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_04AC   offset=0x04AC  size=36 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=9)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_00FF, L_04AC
;-------------------------------------------------------------------------
;   [sub-routine] L_04AC
L_04AC:
        iret                                    ; CF
;   [unconditional branch target] L_04AD
L_04AD:
        push    cs                              ; 0E
        call    L_04AC                          ; E8 FB FF
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        mov     si, 0x2b                        ; BE 2B 00
        cmp     word ptr [0x23], 0              ; 83 3E 23 00 00
        je      L_04C1                          ; 74 03
        mov     si, 0x25                        ; BE 25 00
;   [conditional branch target (if/else)] L_04C1
L_04C1:
        call    L_00FF                          ; E8 3B FC
        or      ax, ax                          ; 0B C0
        je      L_0518                          ; 74 50
        mov     byte ptr [0], 0xff              ; C6 06 00 00 FF
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr [0x16], bx             ; 89 1E 16 00
        mov     word ptr [0x18], es             ; 8C 06 18 00
        cmp     word ptr [0x14], 0              ; 83 3E 14 00 00
        jne     L_0518                          ; 75 39
        mov     ah, 0x35                        ; B4 35
        mov     al, byte ptr [0x10]             ; A0 10 00
        int     0x21                            ; CD 21
        mov     word ptr [0x1a], bx             ; 89 1E 1A 00
        mov     word ptr [0x1c], es             ; 8C 06 1C 00
        mov     ah, 0x25                        ; B4 25
        mov     al, byte ptr [0x10]             ; A0 10 00
        mov     bx, cs                          ; 8C CB
        mov     ds, bx                          ; 8E DB
        mov     dx, 0                           ; BA 00 00
        int     0x21                            ; CD 21
        mov     ds, word ptr cs:[0x474]         ; 2E 8E 1E 74 04
        pushf                                   ; 9C
        cli                                     ; FA
        in      al, 0x21                        ; E4 21
        and     al, byte ptr [0x11]             ; 22 06 11 00
        out     0x21, al                        ; E6 21
        mov     word ptr [0x14], 0xffff         ; C7 06 14 00 FF FF
        jmp     L_0514                          ; EB 01
; Description (heuristic):
;   Pure computation / dispatcher (48 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0513   offset=0x0513  size=48 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=1, ASM=7)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_03F3, L_0513
;-------------------------------------------------------------------------
;   [sub-routine] L_0513
L_0513:
        iret                                    ; CF
;   [unconditional branch target] L_0514
L_0514:
        push    cs                              ; 0E
        call    L_0513                          ; E8 FB FF
;   [conditional branch target (if/else)] L_0518
L_0518:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        pushf                                   ; 9C
        cli                                     ; FA
        cmp     word ptr [0x14], 0              ; 83 3E 14 00 00
        je      L_057B                          ; 74 41
        mov     ax, 0x40                        ; B8 40 00
        mov     es, ax                          ; 8E C0
        mov     di, word ptr [0x12]             ; 8B 3E 12 00
        mov     ax, word ptr [0xe]              ; A1 0E 00
        stosw   word ptr es:[di], ax            ; AB
        call    L_03F3                          ; E8 A9 FE
        cmp     word ptr [0x1c], 0xf000         ; 81 3E 1C 00 00 F0
        jae     L_055A                          ; 73 08
        cmp     word ptr [0x1c], 0x100          ; 81 3E 1C 00 00 01
        jae     L_0568                          ; 73 0E
;   [conditional branch target (if/else)] L_055A
L_055A:
        in      al, 0x21                        ; E4 21
        mov     ah, byte ptr [0x11]             ; 8A 26 11 00
        not     ah                              ; F6 D4
        or      al, ah                          ; 0A C4
        jmp     L_0566                          ; EB 00
;   [unconditional branch target] L_0566
L_0566:
        out     0x21, al                        ; E6 21
;   [conditional branch target (if/else)] L_0568
L_0568:
        mov     ah, 0x25                        ; B4 25
        mov     al, byte ptr [0x10]             ; A0 10 00
        push    ds                              ; 1E
        lds     dx, ptr [0x1a]                  ; C5 16 1A 00
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     word ptr [0x14], 0              ; C7 06 14 00 00 00
;   [conditional branch target (if/else)] L_057B
L_057B:
        jmp     L_057E                          ; EB 01
; Description (heuristic):
;   Internal helper (11 instructions).

;-------------------------------------------------------------------------
; sub_057D   offset=0x057D  size=11 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: retf
;
; Near calls (internal): L_057D
;-------------------------------------------------------------------------
;   [sub-routine] L_057D
L_057D:
        iret                                    ; CF
;   [unconditional branch target] L_057E
L_057E:
        push    cs                              ; 0E
        call    L_057D                          ; E8 FB FF
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

LMOUSE_TEXT ENDS

        END
