; AUTO-GENERATED from original WRITE segment 18
; segment_size=1487 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

WRITE_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_148                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0026                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_003D                          ; EB 17
L_0026:
        call    far _entry_147                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xe06]                ; FF 36 06 0E
        call    far GDI.DELETEOBJECT            ; 9A 1C 02 00 00 [FIXUP]
        push    word ptr [0xbe6]                ; FF 36 E6 0B
        call    far _entry_146                  ; 9A FF FF 00 00 [FIXUP]
L_003D:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xe                         ; 83 EC 0E
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x16                        ; 3D 16 00
        jne     L_0068                          ; 75 03
        jmp     L_02BA                          ; E9 52 02
L_0068:
        jbe     L_006D                          ; 76 03
        jmp     L_03AC                          ; E9 3F 03
L_006D:
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0x14                        ; 3D 14 00
        jbe     L_0078                          ; 76 03
        jmp     L_0307                          ; E9 8F 02
L_0078:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x382]        ; 2E FF A7 82 03
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_145                  ; 9A FF FF 00 00 [FIXUP]
L_008E:
        cmp     word ptr [0x44], 0              ; 83 3E 44 00 00
        je      L_009D                          ; 74 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_53                   ; 9A FF FF 00 00 [FIXUP]
L_009D:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        jmp     L_040B                          ; E9 65 03
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_0416                          ; E8 6A 03
        jmp     L_008E                          ; EB E0
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [0x790]                ; FF 36 90 07
        push    word ptr [0x78e]                ; FF 36 8E 07
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
L_00D5:
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_008E                          ; EB AD
L_00E1:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x794], ax            ; A3 94 07
        jmp     L_008E                          ; EB A5
L_00E9:
        push    word ptr [0x1240]               ; FF 36 40 12
        call    far _entry_63                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_0103                          ; 75 0B
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_144                  ; 9A FF FF 00 00 [FIXUP]
L_0103:
        cmp     word ptr [0xf28], 0             ; 83 3E 28 0F 00
        jne     L_008E                          ; 75 84
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [0x1be4], dx           ; 39 16 E4 1B
        je      L_011A                          ; 74 03
        jmp     L_008E                          ; E9 74 FF
L_011A:
        cmp     word ptr [0x1be2], ax           ; 39 06 E2 1B
        je      L_0123                          ; 74 03
        jmp     L_008E                          ; E9 6B FF
L_0123:
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
L_0133:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_125                  ; 9A CB 01 00 00 [FIXUP]
        jmp     L_008E                          ; E9 4F FF
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0167                          ; 74 22
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_0167                          ; 75 1C
        push    word ptr [0x10aa]               ; FF 36 AA 10
        call    far USER.ISWINDOWENABLED        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0167                          ; 74 0F
        push    word ptr [0x10aa]               ; FF 36 AA 10
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x780]            ; A1 80 07
        mov     word ptr [0x7aa], ax            ; A3 AA 07
L_0167:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0173                          ; 74 06
        mov     word ptr [0x5c], 0              ; C7 06 5C 00 00 00
L_0173:
        cmp     word ptr [0x38], 0              ; 83 3E 38 00 00
        je      L_017D                          ; 74 03
        jmp     L_008E                          ; E9 11 FF
L_017D:
        cmp     word ptr [0x60], 0              ; 83 3E 60 00 00
        jne     L_0187                          ; 75 03
        jmp     L_008E                          ; E9 07 FF
L_0187:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_008E                          ; E9 FC FE
L_0192:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_019B                          ; 74 03
        jmp     L_0229                          ; E9 8E 00
L_019B:
        mov     word ptr [0x5c], 1              ; C7 06 5C 00 01 00
        mov     word ptr [0x5e], 0              ; C7 06 5E 00 00 00
        cmp     word ptr [0x31e], 0             ; 83 3E 1E 03 00
        jne     L_01D5                          ; 75 27
        push    word ptr [0x780]                ; FF 36 80 07
        call    far USER.UPDATEWINDOW           ; 9A 4C 02 00 00 [FIXUP]
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        push    word ptr [0x1be8]               ; FF 36 E8 1B
        push    word ptr [0x1be6]               ; FF 36 E6 1B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_125                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x31e], 1             ; C7 06 1E 03 01 00
L_01D5:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_143                  ; 9A E9 01 00 00 [FIXUP]
        cmp     word ptr [0x7a8], 0             ; 83 3E A8 07 00
        jne     L_01ED                          ; 75 09
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_143                  ; 9A FF FF 00 00 [FIXUP]
L_01ED:
        cmp     word ptr [0x40], 0              ; 83 3E 40 00 00
        je      L_01F7                          ; 74 03
        jmp     L_008E                          ; E9 97 FE
L_01F7:
        cmp     word ptr [0x7b2], 0             ; 83 3E B2 07 00
        jne     L_0201                          ; 75 03
        jmp     L_008E                          ; E9 8D FE
L_0201:
        push    word ptr [0x13ca]               ; FF 36 CA 13
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x7b2], 0             ; C7 06 B2 07 00 00
        jmp     L_008E                          ; E9 65 FE
L_0229:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x6f6], ax            ; A3 F6 06
        mov     word ptr [0x5c], ax             ; A3 5C 00
        cmp     word ptr [0x79e], ax            ; 39 06 9E 07
        jne     L_023D                          ; 75 06
        push    ax                              ; 50
        call    far _entry_118                  ; 9A FF FF 00 00 [FIXUP]
L_023D:
        cmp     word ptr [0x31e], 0             ; 83 3E 1E 03 00
        jne     L_0247                          ; 75 03
        jmp     L_008E                          ; E9 47 FE
L_0247:
        push    word ptr [0x780]                ; FF 36 80 07
        call    far USER.UPDATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x31e], 0             ; C7 06 1E 03 00 00
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        push    word ptr [0x1be8]               ; FF 36 E8 1B
        push    word ptr [0x1be6]               ; FF 36 E6 1B
        jmp     L_0133                          ; E9 CA FE
L_0269:
        cmp     word ptr [0x5c], 0              ; 83 3E 5C 00 00
        je      L_0280                          ; 74 10
        push    word ptr [0x780]                ; FF 36 80 07
        mov     ax, 1                           ; B8 01 00
L_0277:
        push    ax                              ; 50
        call    far USER.FLASHWINDOW            ; 9A FF FF 00 00 [FIXUP]
        jmp     L_008E                          ; E9 0E FE
L_0280:
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [0x660]                ; FF 36 60 06
        call    far USER.KILLTIMER              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x660], 0             ; C7 06 60 06 00 00
        push    word ptr [0x780]                ; FF 36 80 07
        sub     ax, ax                          ; 2B C0
        jmp     L_0277                          ; EB DC
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _entry_142                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_02AC                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_02AE                          ; EB 02
L_02AC:
        sub     ax, ax                          ; 2B C0
L_02AE:
        sub     dx, dx                          ; 2B D2
        jmp     L_031B                          ; EB 69
        call    far _entry_141                  ; 9A FF FF 00 00 [FIXUP]
        cdq                                     ; 99
        jmp     L_031B                          ; EB 61
L_02BA:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_02C3                          ; 75 03
        jmp     L_008E                          ; E9 CB FD
L_02C3:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_140                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_008E                          ; E9 BF FD
        call    far _entry_139                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00D5                          ; E9 FE FD
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_138                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_008E                          ; E9 A3 FD
L_02EB:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_137                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_008E                          ; E9 8F FD
L_02FF:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 0xf2f0                      ; 3D F0 F2
        je      L_0324                          ; 74 1D
L_0307:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.DEFWINDOWPROC          ; 9A FF FF 00 00 [FIXUP]
L_031B:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        jmp     L_008E                          ; E9 6A FD
L_0324:
        push    word ptr [0x782]                ; FF 36 82 07
        mov     ax, 4                           ; B8 04 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [0x12a0]               ; FF 36 A0 12
        push    word ptr [0x129e]               ; FF 36 9E 12
        call    far _entry_93                   ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        je      L_0345                          ; 74 03
        jmp     L_008E                          ; E9 49 FD
L_0345:
        mov     ax, 0x4002                      ; B8 02 40
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_008E                          ; E9 3D FD
L_0351:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0483                          ; E8 24 01
        jmp     L_008E                          ; E9 2C FD
L_0362:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0565                          ; E8 F7 01
        jmp     L_008E                          ; E9 1D FD
L_0371:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_136                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_008E                          ; E9 0C FD
        add     byte ptr [bx + si], 0xcf        ; 80 00 CF
        add     al, byte ptr [bx]               ; 02 07
        add     ax, word ptr [bx]               ; 03 07
        add     dx, di                          ; 03 D7
        add     bh, byte ptr [bx]               ; 02 3F
        add     word ptr [bx], ax               ; 01 07
        add     ax, word ptr [bx]               ; 03 07
        add     ax, word ptr [bx]               ; 03 07
        add     ax, word ptr [bx]               ; 03 07
        add     ax, word ptr [bx]               ; 03 07
        add     ax, word ptr [bx]               ; 03 07
        add     ax, word ptr [bx]               ; 03 07
        add     ax, word ptr [bx]               ; 03 07
        add     sp, word ptr [bp - 0x6500]      ; 03 A6 00 9B
        add     dh, byte ptr [bp + si + 0x702]  ; 02 B2 02 07
        add     ax, word ptr [bx]               ; 03 07
        add     bp, word ptr [bp + 0x7100]      ; 03 AE 00 71
        add     di, word ptr [di]               ; 03 3D
        adc     al, byte ptr [bx + di]          ; 12 01
        jne     L_03B4                          ; 75 03
        jmp     L_02FF                          ; E9 4B FF
L_03B4:
        ja      L_03E0                          ; 77 2A
        cmp     ax, 0x1c                        ; 3D 1C 00
        jne     L_03BE                          ; 75 03
        jmp     L_0192                          ; E9 D4 FD
L_03BE:
        ja      L_03D0                          ; 77 10
        cmp     ax, 0x1a                        ; 3D 1A 00
        jae     L_03C8                          ; 73 03
        jmp     L_0307                          ; E9 3F FF
L_03C8:
        cmp     ax, 0x1b                        ; 3D 1B 00
        jbe     L_0371                          ; 76 A4
        jmp     L_0307                          ; E9 37 FF
L_03D0:
        cmp     ax, 0x1d                        ; 3D 1D 00
        je      L_0371                          ; 74 9C
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_03DD                          ; 75 03
        jmp     L_02EB                          ; E9 0E FF
L_03DD:
        jmp     L_0307                          ; E9 27 FF
L_03E0:
        cmp     ax, 0x113                       ; 3D 13 01
        jne     L_03E8                          ; 75 03
        jmp     L_0269                          ; E9 81 FE
L_03E8:
        cmp     ax, 0x114                       ; 3D 14 01
        jne     L_03F0                          ; 75 03
        jmp     L_0362                          ; E9 72 FF
L_03F0:
        cmp     ax, 0x115                       ; 3D 15 01
        jne     L_03F8                          ; 75 03
        jmp     L_0351                          ; E9 59 FF
L_03F8:
        cmp     ax, 0x116                       ; 3D 16 01
        jne     L_0400                          ; 75 03
        jmp     L_00E1                          ; E9 E1 FC
L_0400:
        cmp     ax, 0x117                       ; 3D 17 01
        jne     L_0408                          ; 75 03
        jmp     L_00E9                          ; E9 E1 FC
L_0408:
        jmp     L_0307                          ; E9 FC FE
L_040B:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0416 -- offset 0x0416 -- 34 instr
; Funcion mediana (34 instr, 3 calls).
; tags: calls_user, medium
; calls (inter): USER.GETUPDATERECT, USER.UPDATEWINDOW, USER.VALIDATERECT
;----------------------------------------------------------------------
L_0416:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETUPDATERECT          ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x7a6], 0             ; 83 3E A6 07 00
        je      L_043D                          ; 74 09
        push    word ptr [0x7a6]                ; FF 36 A6 07
        call    far USER.UPDATEWINDOW           ; 9A 42 04 00 00 [FIXUP]
L_043D:
        push    word ptr [0x10ae]               ; FF 36 AE 10
        call    far USER.UPDATEWINDOW           ; 9A 4B 04 00 00 [FIXUP]
        push    word ptr [0x10ac]               ; FF 36 AC 10
        call    far USER.UPDATEWINDOW           ; 9A 54 04 00 00 [FIXUP]
        push    word ptr [0xee8]                ; FF 36 E8 0E
        call    far USER.UPDATEWINDOW           ; 9A 5D 04 00 00 [FIXUP]
        push    word ptr [0x13ca]               ; FF 36 CA 13
        call    far USER.UPDATEWINDOW           ; 9A 6D 04 00 00 [FIXUP]
        cmp     word ptr [0x10aa], 0            ; 83 3E AA 10 00
        je      L_0471                          ; 74 09
        push    word ptr [0x10aa]               ; FF 36 AA 10
        call    far USER.UPDATEWINDOW           ; 9A B3 01 00 00 [FIXUP]
L_0471:
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.VALIDATERECT           ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0483 -- offset 0x0483 -- 89 instr
; Dispatcher: tabla de decisiones cmp+jcc (89 instr).
; tags: dispatcher, far
;----------------------------------------------------------------------
L_0483:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 8], 5            ; 83 7E 08 05
        jne     L_0496                          ; 75 03
        jmp     L_055A                          ; E9 C4 00
L_0496:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x744], ax            ; A3 44 07
        mov     word ptr [0x7a], ax             ; A3 7A 00
        cmp     word ptr [bp + 8], 4            ; 83 7E 08 04
        jne     L_0517                          ; 75 73
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     al, byte ptr [bx + 0x20]        ; 8A 47 20
        sub     ah, ah                          ; 2A E4
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jne     L_04B5                          ; 75 03
        jmp     L_055A                          ; E9 A5 00
L_04B5:
        call    far _entry_102                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xff                        ; B8 FF 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        sub     ax, word ptr [bx + 0x18]        ; 2B 47 18
        sbb     dx, word ptr [bx + 0x1a]        ; 1B 57 1A
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_115                  ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_157                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        add     ax, word ptr [bx + 0x18]        ; 03 47 18
        adc     dx, word ptr [bx + 0x1a]        ; 13 57 1A
        mov     word ptr [bx + 0x14], ax        ; 89 47 14
        mov     word ptr [bx + 0x16], dx        ; 89 57 16
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_123                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     word ptr [bx + 8], 0            ; C7 47 08 00 00
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        or      byte ptr [bx], 2                ; 80 0F 02
        push    word ptr [0x322]                ; FF 36 22 03
        call    far _entry_156                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_055A                          ; EB 43
L_0517:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, ax                          ; 0B C0
        je      L_052F                          ; 74 11
        cmp     ax, 1                           ; 3D 01 00
        je      L_053A                          ; 74 17
        cmp     ax, 2                           ; 3D 02 00
        je      L_0545                          ; 74 1D
        cmp     ax, 3                           ; 3D 03 00
        je      L_054C                          ; 74 1F
        jmp     L_0551                          ; EB 22
L_052F:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_155                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0551                          ; EB 17
L_053A:
        mov     ax, 1                           ; B8 01 00
L_053D:
        push    ax                              ; 50
        call    far _entry_154                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0551                          ; EB 0C
L_0545:
        call    far _entry_153                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0551                          ; EB 05
L_054C:
        mov     ax, 0x64                        ; B8 64 00
        jmp     L_053D                          ; EB EC
L_0551:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_152                  ; 9A FF FF 00 00 [FIXUP]
L_055A:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0565 -- offset 0x0565 -- 41 instr
; Dispatcher: tabla de decisiones cmp+jcc (41 instr).
; tags: dispatcher
;----------------------------------------------------------------------
L_0565:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [bp + 6], 5            ; 83 7E 06 05
        je      L_05CA                          ; 74 5C
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x744], ax            ; A3 44 07
        mov     word ptr [0x7a], ax             ; A3 7A 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        je      L_0593                          ; 74 16
        cmp     ax, 1                           ; 3D 01 00
        je      L_059E                          ; 74 1C
        cmp     ax, 2                           ; 3D 02 00
        je      L_05A9                          ; 74 22
        cmp     ax, 3                           ; 3D 03 00
        je      L_05B3                          ; 74 27
        cmp     ax, 4                           ; 3D 04 00
        je      L_05BD                          ; 74 2C
        jmp     L_05CA                          ; EB 37
L_0593:
        push    word ptr [0x1286]               ; FF 36 86 12
L_0597:
        call    far _entry_151                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_05CA                          ; EB 2C
L_059E:
        push    word ptr [0x1286]               ; FF 36 86 12
L_05A2:
        call    far _entry_150                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_05CA                          ; EB 21
L_05A9:
        mov     ax, word ptr [0x1084]           ; A1 84 10
        sub     ax, word ptr [0x1112]           ; 2B 06 12 11
        push    ax                              ; 50
        jmp     L_0597                          ; EB E4
L_05B3:
        mov     ax, word ptr [0x1084]           ; A1 84 10
        sub     ax, word ptr [0x1112]           ; 2B 06 12 11
        push    ax                              ; 50
        jmp     L_05A2                          ; EB E5
L_05BD:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [0x1088]           ; 2B 06 88 10
        push    ax                              ; 50
        call    far _entry_149                  ; 9A FF FF 00 00 [FIXUP]
L_05CA:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        push    es                              ; 06

WRITE_TEXT ENDS

        END
