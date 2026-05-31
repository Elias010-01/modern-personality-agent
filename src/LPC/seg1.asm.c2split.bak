; ======================================================================
; LPC / seg1.asm   (segment 1 of LPC)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         3
; Total instructions:                  393
; 
; Classification (pass8):
;   C-origin (high+medium):              1
;   ASM-origin (high+medium):            1
;   Unclear:                             1
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     4 (4 unique)
;   Top:
;        1  CREATESYSTEMTIMER
;        1  DISABLESYSTEMTIMERS
;        1  ENABLESYSTEMTIMERS
;        1  KILLSYSTEMTIMER
; ======================================================================
; AUTO-GENERATED from original LPC segment 1
; segment_size=1083 bytes, flags=0x0140
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

LPC_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ax                              ; 50
        push    bx                              ; 53
        push    cx                              ; 51
        push    dx                              ; 52
        push    si                              ; 56
        push    di                              ; 57
        push    bp                              ; 55
        push    ds                              ; 1E
        push    es                              ; 06
        mov     ax, cs                          ; 8C C8
        mov     ds, word ptr cs:[0x3ce]         ; 2E 8E 1E CE 03
        cmp     byte ptr [0], 0                 ; 80 3E 00 00 00
        je      L_0025                          ; 74 0E
        call    L_0227                          ; E8 0D 02
        or      ax, ax                          ; 0B C0
        je      L_0025                          ; 74 07
        ; constant WM_CREATE
        mov     dx, 1                           ; BA 01 00
        lcall   [0xe]                           ; FF 1E 0E 00
;   [conditional branch target (if/else)] L_0025
L_0025:
        pop     es                              ; 07
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        pop     di                              ; 5F
        pop     si                              ; 5E
        pop     dx                              ; 5A
        pop     cx                              ; 59
        pop     bx                              ; 5B
        pop     ax                              ; 58
        retf                                    ; CB
; Description (heuristic):
;   Pure computation / dispatcher (154 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_002F   offset=0x002F  size=154 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=1, ASM=7)
; Prologue: none     Epilogue: retf
;-------------------------------------------------------------------------
;   [sub-routine] L_002F
L_002F:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     byte ptr [0x12], 0              ; C6 06 12 00 00
        mov     byte ptr [0x13], 0x70           ; C6 06 13 00 70
        mov     byte ptr [0x14], 0x65           ; C6 06 14 00 65
        mov     byte ptr [0x15], 0x6e           ; C6 06 15 00 6E
        mov     byte ptr [0x16], 0x63           ; C6 06 16 00 63
        mov     byte ptr [0x17], 0x61           ; C6 06 17 00 61
        mov     byte ptr [0x18], 0x6c           ; C6 06 18 00 6C
        mov     byte ptr [0x19], 0x20           ; C6 06 19 00 20
        mov     byte ptr [0x1a], 0x20           ; C6 06 1A 00 20
        mov     byte ptr [0x1b], 0x64           ; C6 06 1B 00 64
        mov     byte ptr [0x1c], 0x61           ; C6 06 1C 00 61
        mov     byte ptr [0x1d], 0x74           ; C6 06 1D 00 74
        mov     byte ptr [0xd], 2               ; C6 06 0D 00 02
        push    ds                              ; 1E
        mov     ax, 0x40                        ; B8 40 00
        mov     ds, ax                          ; 8E D8
        mov     dx, word ptr [0x63]             ; 8B 16 63 00
        mov     word ptr cs:[0x3d1], dx         ; 2E 89 16 D1 03
        mov     al, byte ptr [0x49]             ; A0 49 00
        mov     byte ptr cs:[0x3d0], al         ; 2E A2 D0 03
        pop     ds                              ; 1F
        mov     bx, 0xff10                      ; BB 10 FF
        mov     ax, 0x1200                      ; B8 00 12
        int     0x10                            ; CD 10
        inc     bh                              ; FE C7
        jne     L_00B8                          ; 75 19
        cmp     dx, 0x3b4                       ; 81 FA B4 03
        jne     L_00AD                          ; 75 08
        mov     byte ptr [0xd], 0               ; C6 06 0D 00 00
        jmp     L_00B8                          ; EB 0C
        nop                                     ; 90
;   [conditional branch target (if/else)] L_00AD
L_00AD:
        cmp     dx, 0x3d4                       ; 81 FA D4 03
        jne     L_00B8                          ; 75 05
        mov     byte ptr [0xd], 1               ; C6 06 0D 00 01
;   [branch target] L_00B8
L_00B8:
        cmp     byte ptr [0x64], 0              ; 80 3E 64 00 00
        jne     L_013E                          ; 75 7F
        cli                                     ; FA
        mov     dx, 0x12                        ; BA 12 00
        ; constant WM_PAINT
        mov     ah, 0xf                         ; B4 0F
        int     0x21                            ; CD 21
        cmp     al, 0xff                        ; 3C FF
        je      L_0141                          ; 74 76
        mov     dx, 0x36                        ; BA 36 00
        mov     ah, 0x1a                        ; B4 1A
        int     0x21                            ; CD 21
        mov     byte ptr [0x20], 0x13           ; C6 06 20 00 13
        mov     dx, 0x12                        ; BA 12 00
        mov     ah, 0x14                        ; B4 14
        int     0x21                            ; CD 21
        mov     dx, 0x12                        ; BA 12 00
        ; constant VK_SHIFT
        mov     ah, 0x10                        ; B4 10
        int     0x21                            ; CD 21
        mov     byte ptr [0x64], ah             ; 88 26 64 00
        sti                                     ; FB
        cmp     byte ptr [0xd], 0               ; 80 3E 0D 00 00
        jne     L_00F7                          ; 75 06
        ; constant WM_CREATE
        mov     bx, 1                           ; BB 01 00
        jmp     L_0107                          ; EB 11
        nop                                     ; 90
;   [conditional branch target (if/else)] L_00F7
L_00F7:
        cmp     byte ptr [0xd], 1               ; 80 3E 0D 00 01
        jne     L_0104                          ; 75 06
        mov     bx, 7                           ; BB 07 00
        jmp     L_0107                          ; EB 04
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0104
L_0104:
        ; constant VK_RETURN
        mov     bx, 0xd                         ; BB 0D 00
;   [unconditional branch target] L_0107
L_0107:
        xor     ah, ah                          ; 32 E4
        mov     al, byte ptr [0x36]             ; A0 36 00
        mov     byte ptr [0x73], al             ; A2 73 00
        mov     al, byte ptr [bx + 0x36]        ; 8A 87 36 00
        mov     byte ptr [3], al                ; A2 03 00
        inc     bx                              ; 43
        mov     al, byte ptr [bx + 0x36]        ; 8A 87 36 00
        mov     word ptr [4], ax                ; A3 04 00
        inc     bx                              ; 43
        mov     al, byte ptr [bx + 0x36]        ; 8A 87 36 00
        mov     word ptr [6], ax                ; A3 06 00
        inc     bx                              ; 43
        mov     al, byte ptr [bx + 0x36]        ; 8A 87 36 00
        mov     word ptr [8], ax                ; A3 08 00
        inc     bx                              ; 43
        mov     al, byte ptr [bx + 0x36]        ; 8A 87 36 00
        mov     word ptr [0xa], ax              ; A3 0A 00
        inc     bx                              ; 43
        mov     al, byte ptr [bx + 0x36]        ; 8A 87 36 00
        mov     byte ptr [0xc], al              ; A2 0C 00
;   [conditional branch target (if/else)] L_013E
L_013E:
        jmp     L_01CA                          ; E9 89 00
;   [conditional branch target (if/else)] L_0141
L_0141:
        cmp     byte ptr [0xd], 0               ; 80 3E 0D 00 00
        jne     L_0172                          ; 75 2A
        mov     byte ptr [3], 0x2d              ; C6 06 03 00 2D
        mov     word ptr [4], 0x11              ; C7 06 04 00 11 00
        mov     word ptr [6], 3                 ; C7 06 06 00 03 00
        mov     word ptr [8], 0x20              ; C7 06 08 00 20 00
        mov     word ptr [0xa], 0xb             ; C7 06 0A 00 0B 00
        mov     byte ptr [0xc], 0x20            ; C6 06 0C 00 20
        mov     byte ptr [0x73], 4              ; C6 06 73 00 04
        jmp     L_01CA                          ; EB 59
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0172
L_0172:
        cmp     byte ptr [0xd], 1               ; 80 3E 0D 00 01
        jne     L_01A3                          ; 75 2A
        mov     byte ptr [3], 0x28              ; C6 06 03 00 28
        mov     word ptr [4], 0x13              ; C7 06 04 00 13 00
        mov     word ptr [6], 3                 ; C7 06 06 00 03 00
        mov     word ptr [8], 0xd               ; C7 06 08 00 0D 00
        mov     word ptr [0xa], 5               ; C7 06 0A 00 05 00
        mov     byte ptr [0xc], 0xb             ; C6 06 0C 00 0B
        mov     byte ptr [0x73], 4              ; C6 06 73 00 04
        jmp     L_01CA                          ; EB 28
        nop                                     ; 90
;   [conditional branch target (if/else)] L_01A3
L_01A3:
        mov     byte ptr [3], 0x50              ; C6 06 03 00 50
        mov     word ptr [4], 0x27              ; C7 06 04 00 27 00
        mov     word ptr [6], 0xc               ; C7 06 06 00 0C 00
        mov     word ptr [8], 0xd               ; C7 06 08 00 0D 00
        mov     word ptr [0xa], 5               ; C7 06 0A 00 05 00
        mov     byte ptr [0xc], 0x12            ; C6 06 0C 00 12
        mov     byte ptr [0x73], 4              ; C6 06 73 00 04
;   [unconditional branch target] L_01CA
L_01CA:
        cmp     byte ptr [0x64], 0              ; 80 3E 64 00 00
        jne     L_0212                          ; 75 41
        cmp     byte ptr cs:[0x3d0], 0x10       ; 2E 80 3E D0 03 10
        jne     L_0212                          ; 75 39
        mov     byte ptr [3], 0x28              ; C6 06 03 00 28
        mov     word ptr [6], 6                 ; C7 06 06 00 06 00
        mov     word ptr [8], 8                 ; C7 06 08 00 08 00
        mov     word ptr [0xa], 0xb             ; C7 06 0A 00 0B 00
        mov     byte ptr [0xc], 0x13            ; C6 06 0C 00 13
        mov     ax, 0x1200                      ; B8 00 12
        ; constant VK_SHIFT
        mov     bx, 0x10                        ; BB 10 00
        int     0x10                            ; CD 10
        cmp     bl, 0                           ; 80 FB 00
        je      L_0212                          ; 74 10
        mov     al, byte ptr [3]                ; A0 03 00
        shl     al, 1                           ; D0 E0
        mov     byte ptr [3], al                ; A2 03 00
        mov     ax, word ptr [6]                ; A1 06 00
        shl     ax, 1                           ; D1 E0
        mov     word ptr [6], ax                ; A3 06 00
;   [conditional branch target (if/else)] L_0212
L_0212:
        mov     byte ptr [0x72], 0              ; C6 06 72 00 00
        mov     byte ptr [0], 0xff              ; C6 06 00 00 FF
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Pure computation / dispatcher (38 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0227   offset=0x0227  size=38 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0269
;-------------------------------------------------------------------------
;   [sub-routine] L_0227
L_0227:
        sti                                     ; FB
        push    dx                              ; 52
        mov     dx, word ptr cs:[0x3d1]         ; 2E 8B 16 D1 03
        add     dx, 6                           ; 83 C2 06
        in      al, dx                          ; EC
        xchg    cx, ax                          ; 91
        pop     dx                              ; 5A
        cli                                     ; FA
        push    dx                              ; 52
        ; constant VK_SHIFT
        mov     ah, 0x10                        ; B4 10
        mov     dx, word ptr cs:[0x3d1]         ; 2E 8B 16 D1 03
        mov     al, ah                          ; 8A C4
        out     dx, al                          ; EE
        jmp     L_0242                          ; EB 00
;   [unconditional branch target] L_0242
L_0242:
        inc     dx                              ; 42
        in      al, dx                          ; EC
        mov     ch, al                          ; 8A E8
        dec     dx                              ; 4A
        inc     ah                              ; FE C4
        mov     al, ah                          ; 8A C4
        out     dx, al                          ; EE
        jmp     L_024E                          ; EB 00
;   [unconditional branch target] L_024E
L_024E:
        inc     dx                              ; 42
        in      al, dx                          ; EC
        ; constant WM_SETTEXT
        mov     ah, ch                          ; 8A E5
        pop     dx                              ; 5A
        jns     L_0257                          ; 79 02
        xor     ax, ax                          ; 33 C0
;   [conditional branch target (if/else)] L_0257
L_0257:
        push    dx                              ; 52
        push    ax                              ; 50
        mov     dx, word ptr cs:[0x3d1]         ; 2E 8B 16 D1 03
        add     dx, 7                           ; 83 C2 07
        in      al, dx                          ; EC
        out     dx, al                          ; EE
        pop     ax                              ; 58
        pop     dx                              ; 5A
        call    L_0269                          ; E8 01 00
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: CREATESYSTEMTIMER, DISABLESYSTEMTIMERS, ENABLESYSTEMTIMERS (+1 more).

;-------------------------------------------------------------------------
; sub_0269   offset=0x0269  size=201 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;
; Far API calls:
;   CREATESYSTEMTIMER
;   DISABLESYSTEMTIMERS
;   ENABLESYSTEMTIMERS
;   KILLSYSTEMTIMER
;
; Near calls (internal): L_002F
;-------------------------------------------------------------------------
;   [sub-routine] L_0269
L_0269:
        push    ax                              ; 50
        mov     byte ptr [0x68], 1              ; C6 06 68 00 01
        mov     dl, byte ptr [0x66]             ; 8A 16 66 00
        xor     ch, ch                          ; 32 ED
        xor     ax, ax                          ; 33 C0
        and     cl, 4                           ; 80 E1 04
        jcxz    L_0282                          ; E3 06
        cmp     dl, al                          ; 3A D0
        je      L_029F                          ; 74 1F
        jmp     L_0289                          ; EB 07
;   [conditional branch target (if/else)] L_0282
L_0282:
        cmp     dl, 1                           ; 80 FA 01
        je      L_029F                          ; 74 18
        jmp     L_0293                          ; EB 0A
;   [unconditional branch target] L_0289
L_0289:
        mov     byte ptr [0x67], 4              ; C6 06 67 00 04
        mov     byte ptr [0x66], al             ; A2 66 00
        jmp     L_02A5                          ; EB 12
;   [unconditional branch target] L_0293
L_0293:
        mov     byte ptr [0x67], 2              ; C6 06 67 00 02
        mov     byte ptr [0x66], 1              ; C6 06 66 00 01
        jmp     L_02A5                          ; EB 06
;   [conditional branch target (if/else)] L_029F
L_029F:
        mov     byte ptr [0x68], al             ; A2 68 00
        mov     byte ptr [0x67], al             ; A2 67 00
;   [unconditional branch target] L_02A5
L_02A5:
        pop     ax                              ; 58
        cdq                                     ; 99
        xor     bx, bx                          ; 33 DB
        mov     bl, byte ptr [3]                ; 8A 1E 03 00
        div     bx                              ; F7 F3
        xor     bx, bx                          ; 33 DB
        xor     cx, cx                          ; 33 C9
        mov     bh, dl                          ; 8A FA
        mov     cx, ax                          ; 8B C8
        cmp     byte ptr [0xd], 2               ; 80 3E 0D 00 02
        jne     L_02C8                          ; 75 0A
        cmp     bh, 0                           ; 80 FF 00
        jne     L_02C8                          ; 75 05
        mov     bh, 0xfd                        ; B7 FD
        jmp     L_02DA                          ; EB 13
        nop                                     ; 90
;   [conditional branch target (if/else)] L_02C8
L_02C8:
        mov     al, bh                          ; 8A C7
        xor     ah, ah                          ; 32 E4
        mul     word ptr [4]                    ; F7 26 04 00
        div     word ptr [6]                    ; F7 36 06 00
        sub     al, byte ptr [0xc]              ; 2A 06 0C 00
        mov     bh, al                          ; 8A F8
;   [unconditional branch target] L_02DA
L_02DA:
        mov     ax, cx                          ; 8B C1
        mul     word ptr [8]                    ; F7 26 08 00
        div     word ptr [0xa]                  ; F7 36 0A 00
        cmp     byte ptr [0xd], 2               ; 80 3E 0D 00 02
        jne     L_02F5                          ; 75 0A
        cmp     byte ptr cs:[0x3d0], 0xe        ; 2E 80 3E D0 03 0E
        jne     L_02F5                          ; 75 02
        shr     ax, 1                           ; D1 E8
;   [conditional branch target (if/else)] L_02F5
L_02F5:
        mov     ch, al                          ; 8A E8
        push    cx                              ; 51
        xor     dx, dx                          ; 33 D2
        mov     dl, bh                          ; 8A D7
        xor     bx, bx                          ; 33 DB
        mov     bl, byte ptr [0x72]             ; 8A 1E 72 00
        mov     word ptr [bx + 0x69], dx        ; 89 97 69 00
        mov     byte ptr [0x74], dl             ; 88 16 74 00
        inc     bx                              ; 43
        inc     bx                              ; 43
        mov     dl, byte ptr [0x73]             ; 8A 16 73 00
        shl     dx, 1                           ; D1 E2
        dec     dx                              ; 4A
        and     bx, dx                          ; 23 DA
        mov     byte ptr [0x72], bl             ; 88 1E 72 00
        xor     bx, bx                          ; 33 DB
        xor     ax, ax                          ; 33 C0
        xor     cx, cx                          ; 33 C9
        mov     cl, byte ptr [0x73]             ; 8A 0E 73 00
;   [loop iteration target] L_0323
L_0323:
        add     ax, word ptr [bx + 0x69]        ; 03 87 69 00
        inc     bx                              ; 43
        inc     bx                              ; 43
        loop    L_0323                          ; E2 F8
        xor     cx, cx                          ; 33 C9
        mov     cl, byte ptr [0x73]             ; 8A 0E 73 00
        shr     cx, 1                           ; D1 E9
        shr     ax, cl                          ; D3 E8
        mov     bh, al                          ; 8A F8
        xor     dx, dx                          ; 33 D2
        mov     dl, byte ptr [0x74]             ; 8A 16 74 00
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        shl     dx, cl                          ; D3 E2
        pop     cx                              ; 59
        cmp     dh, ah                          ; 3A F4
        je      L_0352                          ; 74 0A
        cmp     dh, 0                           ; 80 FE 00
        je      L_0386                          ; 74 39
        cmp     dh, 0xf                         ; 80 FE 0F
        je      L_0386                          ; 74 34
;   [conditional branch target (if/else)] L_0352
L_0352:
        cmp     dh, 0                           ; 80 FE 00
        je      L_0362                          ; 74 0B
        cmp     dh, 0xf                         ; 80 FE 0F
        je      L_0374                          ; 74 18
        mov     byte ptr [0x71], dh             ; 88 36 71 00
        jmp     L_0389                          ; EB 27
;   [conditional branch target (if/else)] L_0362
L_0362:
        cmp     byte ptr [0x71], 0xf            ; 80 3E 71 00 0F
        jne     L_036D                          ; 75 04
        mov     bh, 0xfd                        ; B7 FD
        jmp     L_0389                          ; EB 1C
;   [conditional branch target (if/else)] L_036D
L_036D:
        mov     byte ptr [0x71], 0              ; C6 06 71 00 00
        jmp     L_0389                          ; EB 15
;   [conditional branch target (if/else)] L_0374
L_0374:
        cmp     byte ptr [0x71], 0              ; 80 3E 71 00 00
        jne     L_037F                          ; 75 04
        ; constant WM_MOVE
        mov     bh, 3                           ; B7 03
        jmp     L_0389                          ; EB 0A
;   [conditional branch target (if/else)] L_037F
L_037F:
        mov     byte ptr [0x71], 0xf            ; C6 06 71 00 0F
        jmp     L_0389                          ; EB 03
;   [conditional branch target (if/else)] L_0386
L_0386:
        xor     ax, ax                          ; 33 C0
        ret                                     ; C3
;   [unconditional branch target] L_0389
L_0389:
        xor     ax, ax                          ; 33 C0
        mov     al, byte ptr [0x67]             ; A0 67 00
        or      ax, 0x8001                      ; 0D 01 80
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
        mov     byte ptr [0], 0xff              ; C6 06 00 00 FF
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
        jmp     L_03D3                          ; EB 06
        nop                                     ; 90
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     ah, al                          ; 00 C4
        pop     si                              ; 5E
        push    es                              ; 06
        mov     word ptr [0xe], bx              ; 89 1E 0E 00
        mov     word ptr [0x10], es             ; 8C 06 10 00
        mov     word ptr cs:[0x3ce], ds         ; 2E 8C 1E CE 03
        call    far SYSTEM.ENABLESYSTEMTIMERS   ; 9A FF FF 00 00 [FIXUP]
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_002F                          ; E8 42 FC
        mov     ax, 0                           ; B8 00 00
        xor     cx, cx                          ; 33 C9
        push    cx                              ; 51
        push    cs                              ; 0E
        push    ax                              ; 50
        call    far SYSTEM.CREATESYSTEMTIMER    ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x76], ax             ; A3 76 00
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
        cmp     byte ptr [0], 0                 ; 80 3E 00 00 00
        je      L_0430                          ; 74 13
        mov     ax, word ptr [0x76]             ; A1 76 00
        push    ax                              ; 50
        call    far SYSTEM.KILLSYSTEMTIMER      ; 9A FF FF 00 00 [FIXUP]
        call    far SYSTEM.DISABLESYSTEMTIMERS  ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [0], 0                 ; C6 06 00 00 00
;   [conditional branch target (if/else)] L_0430
L_0430:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

LPC_TEXT ENDS

        END
