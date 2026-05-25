; AUTO-GENERATED from original WRITE segment 62
; segment_size=2212 bytes, flags=0xf130
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
        sub     sp, 0xe                         ; 83 EC 0E
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     word ptr [bp - 4], si           ; 89 76 FC
        or      si, si                          ; 0B F6
        jne     L_001C                          ; 75 03
        mov     si, 0xe7e                       ; BE 7E 0E
L_001C:
        mov     al, byte ptr [si + 2]           ; 8A 44 02
        sub     ah, ah                          ; 2A E4
        mov     cl, 8                           ; B1 08
        shl     ax, cl                          ; D3 E0
        mov     cx, word ptr [bp - 0xa]         ; 8B 4E F6
        and     ch, 0                           ; 80 E5 00
        or      ax, cx                          ; 0B C1
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        and     al, 0                           ; 24 00
        mov     dx, word ptr [si]               ; 8B 14
        mov     cl, 0xa                         ; B1 0A
        shr     dx, cl                          ; D3 EA
        and     dx, 0x3f                        ; 81 E2 3F 00
        or      ax, dx                          ; 0B C2
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        and     ax, 0xf                         ; 25 0F 00
        mov     cx, word ptr [bp - 8]           ; 8B 4E F8
        and     cl, 0xf0                        ; 80 E1 F0
        or      ax, cx                          ; 0B C1
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        shr     ax, 1                           ; D1 E8
        mov     di, ax                          ; 8B F8
        and     di, 0x7f                        ; 81 E7 7F 00
        add     di, 0xf80                       ; 81 C7 80 0F
        test    word ptr [si], 0x200            ; F7 04 00 02
        jne     L_006B                          ; 75 04
        and     di, 0xfbff                      ; 81 E7 FF FB
L_006B:
        test    word ptr [si], 0x100            ; F7 04 00 01
        jne     L_0075                          ; 75 04
        and     di, 0xfdff                      ; 81 E7 FF FD
L_0075:
        test    word ptr [si + 2], 0x100        ; F7 44 02 00 01
        jne     L_0080                          ; 75 04
        and     di, 0xfeff                      ; 81 E7 FF FE
L_0080:
        test    byte ptr [si + 6], 1            ; F6 44 06 01
        jne     L_008A                          ; 75 04
        and     di, 0xff7f                      ; 81 E7 7F FF
L_008A:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        and     ax, 0xf                         ; 25 0F 00
        mov     dx, di                          ; 8B D7
        and     dh, 0xf                         ; 80 E6 0F
        mov     cl, 4                           ; B1 04
        shl     dx, cl                          ; D3 E2
        or      ax, dx                          ; 0B C2
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        je      L_00C9                          ; 74 24
        cmp     ax, 1                           ; 3D 01 00
        je      L_00B4                          ; 74 0A
        cmp     ax, 2                           ; 3D 02 00
        je      L_00B9                          ; 74 0A
        cmp     ax, 3                           ; 3D 03 00
        jne     L_00F3                          ; 75 3F
L_00B4:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_00B9:
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_0100                          ; E8 3D 00
        cmp     word ptr [bp + 6], 3            ; 83 7E 06 03
        je      L_00F3                          ; 74 2A
L_00C9:
        lea     bx, [bp - 8]                    ; 8D 5E F8
        mov     word ptr [bp - 0xc], bx         ; 89 5E F4
        mov     ax, word ptr [bx]               ; 8B 07
        mov     cl, 4                           ; B1 04
        shr     ax, cl                          ; D3 E8
        and     ah, 7                           ; 80 E4 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        and     word ptr [bx], 0xf              ; 81 27 0F 00
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        shl     ax, cl                          ; D3 E0
        or      word ptr [bx], ax               ; 09 07
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0100                          ; E8 0D 00
L_00F3:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0100 -- offset 0x0100 -- 365 instr
; Dispatcher: tabla de decisiones cmp+jcc (365 instr).
; tags: calls_gdi, dispatcher
; calls (intra): sub_0712
; calls (inter): GDI.CREATEFONTINDIRECT, GDI.GETTEXTEXTENT, GDI.GETTEXTFACE, GDI.GETTEXTMETRICS, GDI.SETTEXTJUSTIFICATION
;----------------------------------------------------------------------
L_0100:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc0                        ; 81 EC C0 00
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     cl, 4                           ; B1 04
        shr     ax, cl                          ; D3 E8
        and     ax, 0x800                       ; 25 00 08
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_0139                          ; 74 1C
        mov     ax, word ptr [0xe8a]            ; A1 8A 0E
        mov     dx, word ptr [0xe8c]            ; 8B 16 8C 0E
        cmp     word ptr [bx + 2], dx           ; 39 57 02
        jne     L_0152                          ; 75 29
        cmp     word ptr [bx], ax               ; 39 07
        jne     L_0152                          ; 75 25
        mov     si, word ptr [0x1078]           ; 8B 36 78 10
L_0131:
        mov     word ptr [bp - 0x3c], 1         ; C7 46 C4 01 00
        jmp     L_0315                          ; E9 DC 01
L_0139:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [0x1bf8]           ; A1 F8 1B
        mov     dx, word ptr [0x1bfa]           ; 8B 16 FA 1B
        cmp     word ptr [bx + 2], dx           ; 39 57 02
        jne     L_0152                          ; 75 0A
        cmp     word ptr [bx], ax               ; 39 07
        jne     L_0152                          ; 75 06
        mov     si, word ptr [0xe10]            ; 8B 36 10 0E
        jmp     L_0131                          ; EB DF
L_0152:
        mov     word ptr [bp - 0x3c], 0         ; C7 46 C4 00 00
        mov     si, word ptr [0x13b6]           ; 8B 36 B6 13
L_015B:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     dx, word ptr [si + 6]           ; 8B 54 06
        cmp     word ptr [bx + 2], dx           ; 39 57 02
        jne     L_0175                          ; 75 0C
        cmp     word ptr [bx], ax               ; 39 07
        jne     L_0175                          ; 75 08
        mov     word ptr [bp - 0x3a], 0         ; C7 46 C6 00 00
        jmp     L_0315                          ; E9 A0 01
L_0175:
        mov     si, word ptr [si]               ; 8B 34
        cmp     word ptr [0x13b6], si           ; 39 36 B6 13
        jne     L_015B                          ; 75 DE
        mov     word ptr [bp - 0x3a], 1         ; C7 46 C6 01 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_367                  ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        jne     L_0195                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0197                          ; EB 02
L_0195:
        sub     ax, ax                          ; 2B C0
L_0197:
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        or      ax, ax                          ; 0B C0
        jne     L_01A1                          ; 75 03
        jmp     L_0315                          ; E9 74 01
L_01A1:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     cl, 4                           ; B1 04
        shr     ax, cl                          ; D3 E8
        and     ah, 0xf                         ; 80 E4 0F
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        call    far _entry_366                  ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        lea     ax, [bp - 0x34]                 ; 8D 46 CC
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x32                        ; B8 32 00
        push    ax                              ; 50
        call    far _entry_114                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx]               ; 8B 07
        mov     cl, 8                           ; B1 08
        shr     ax, cl                          ; D3 E8
        sub     ah, ah                          ; 2A E4
        mov     cx, 0xa                         ; B9 0A 00
        mul     cx                              ; F7 E1
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_01F6                          ; 74 15
        push    ax                              ; 50
        push    word ptr [0x10fe]               ; FF 36 FE 10
        push    word ptr [0xa6c]                ; FF 36 6C 0A
        call    far _entry_94                   ; 9A 02 02 00 00 [FIXUP]
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        jmp     L_022D                          ; EB 37
L_01F6:
        push    word ptr [bp - 0x44]            ; FF 76 BC
        push    word ptr [0xe16]                ; FF 36 16 0E
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        call    far _entry_94                   ; 9A 26 02 00 00 [FIXUP]
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        test    byte ptr [bp - 0x48], 0x7f      ; F6 46 B8 7F
        je      L_022D                          ; 74 1C
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        and     ax, 0x7f                        ; 25 7F 00
        mov     cx, 0x14                        ; B9 14 00
        imul    cx                              ; F7 E9
        push    ax                              ; 50
        push    word ptr [0xe0e]                ; FF 36 0E 0E
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        call    far _entry_94                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
L_022D:
        test    word ptr [bp - 0x48], 0x400     ; F7 46 B8 00 04
        je      L_0238                          ; 74 04
        mov     byte ptr [bp - 0x2a], 1         ; C6 46 D6 01
L_0238:
        test    word ptr [bp - 0x48], 0x100     ; F7 46 B8 00 01
        je      L_0243                          ; 74 04
        mov     byte ptr [bp - 0x29], 1         ; C6 46 D7 01
L_0243:
        test    word ptr [bp - 0x48], 0x200     ; F7 46 B8 00 02
        je      L_024F                          ; 74 05
        mov     ax, 0x2bc                       ; B8 BC 02
        jmp     L_0252                          ; EB 03
L_024F:
        mov     ax, 0x190                       ; B8 90 01
L_0252:
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_302                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        test    word ptr [bp - 0x48], 0x800     ; F7 46 B8 00 08
        je      L_026B                          ; 74 04
        sub     al, al                          ; 2A C0
        jmp     L_0277                          ; EB 0C
L_026B:
        test    byte ptr [bp - 0x48], 0x80      ; F6 46 B8 80
        je      L_0275                          ; 74 04
        mov     al, 1                           ; B0 01
        jmp     L_0277                          ; EB 02
L_0275:
        mov     al, 2                           ; B0 02
L_0277:
        mov     bx, word ptr [bp - 0x36]        ; 8B 5E CA
        mov     bx, word ptr [bx]               ; 8B 1F
        or      al, byte ptr [bx]               ; 0A 07
        mov     byte ptr [bp - 0x23], al        ; 88 46 DD
        mov     word ptr [bp - 0x40], 0         ; C7 46 C0 00 00
        mov     bx, word ptr [bp - 0x36]        ; 8B 5E CA
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx + 1], 3            ; 80 7F 01 03
        jne     L_0294                          ; 75 03
        inc     word ptr [bp - 0x40]            ; FF 46 C0
L_0294:
        mov     bx, word ptr [bp - 0x36]        ; 8B 5E CA
        mov     ax, word ptr [bx]               ; 8B 07
        add     ax, word ptr [bp - 0x40]        ; 03 46 C0
        inc     ax                              ; 40
        push    ax                              ; 50
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x34]                 ; 8D 46 CC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.CREATEFONTINDIRECT      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 0x1c], ax        ; 89 44 1C
        or      ax, ax                          ; 0B C0
        jne     L_02C4                          ; 75 08
        call    far _entry_254                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_070A                          ; E9 46 04
L_02C4:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [si + 4], ax           ; 89 44 04
        mov     word ptr [si + 6], dx           ; 89 54 06
        mov     bx, word ptr [bp - 0x36]        ; 8B 5E CA
        mov     ax, word ptr [bx]               ; 8B 07
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far _entry_61                   ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        inc     ax                              ; 40
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        push    ax                              ; 50
        call    far _entry_64                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
        inc     ax                              ; 40
        jne     L_02FD                          ; 75 09
        push    si                              ; 56
        call    far _entry_365                  ; 9A 6B 03 00 00 [FIXUP]
        jmp     L_070A                          ; E9 0D 04
L_02FD:
        mov     bx, word ptr [bp - 0x36]        ; 8B 5E CA
        push    word ptr [bx]                   ; FF 37
        mov     bx, word ptr [bp - 0x46]        ; 8B 5E BA
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp - 0x42]            ; FF 76 BE
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x46]        ; 8B 46 BA
        mov     word ptr [si + 0xc], ax         ; 89 44 0C
L_0315:
        cmp     word ptr [0x13b6], si           ; 39 36 B6 13
        je      L_036F                          ; 74 54
        mov     bx, word ptr [0x13b6]           ; 8B 1E B6 13
        cmp     word ptr [bx], si               ; 39 37
        je      L_036F                          ; 74 4C
        mov     bx, word ptr [si]               ; 8B 1C
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     bx, word ptr [si + 2]           ; 8B 5C 02
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [0x13b6]           ; A1 B6 13
        mov     word ptr [si], ax               ; 89 04
        mov     bx, word ptr [0x13b6]           ; 8B 1E B6 13
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     word ptr [si + 2], ax           ; 89 44 02
        mov     bx, word ptr [si]               ; 8B 1C
        mov     word ptr [bx + 2], si           ; 89 77 02
        mov     bx, word ptr [si + 2]           ; 8B 5C 02
        mov     word ptr [bx], si               ; 89 37
        mov     word ptr [0x13b6], si           ; 89 36 B6 13
        mov     bx, word ptr [si]               ; 8B 1C
        mov     di, word ptr [bx]               ; 8B 3F
        cmp     word ptr [di + 6], -1           ; 83 7D 06 FF
        jne     L_035F                          ; 75 06
        cmp     word ptr [di + 4], -1           ; 83 7D 04 FF
        je      L_036F                          ; 74 10
L_035F:
        mov     ax, word ptr [di + 8]           ; 8B 45 08
        and     al, 0                           ; 24 00
        cmp     ax, 0x3000                      ; 3D 00 30
        jbe     L_036F                          ; 76 06
        push    di                              ; 57
        call    far _entry_365                  ; 9A FF FF 00 00 [FIXUP]
L_036F:
        cmp     word ptr [bp - 0x3c], 0         ; 83 7E C4 00
        je      L_0378                          ; 74 03
        jmp     L_0652                          ; E9 DA 02
L_0378:
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [si + 0x1c]            ; FF 74 1C
        call    L_0712                          ; E8 91 03
        or      ax, ax                          ; 0B C0
        jne     L_0388                          ; 75 03
        jmp     L_070A                          ; E9 82 03
L_0388:
        cmp     word ptr [bp - 0x3a], 0         ; 83 7E C6 00
        jne     L_0391                          ; 75 03
        jmp     L_05AC                          ; E9 1B 02
L_0391:
        mov     di, si                          ; 8B FE
        add     di, 8                           ; 83 C7 08
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_03A1                          ; 74 05
        mov     ax, word ptr [0x79e]            ; A1 9E 07
        jmp     L_03A4                          ; EB 03
L_03A1:
        mov     ax, word ptr [0x798]            ; A1 98 07
L_03A4:
        mov     word ptr [bp - 0x6e], ax        ; 89 46 92
        push    ax                              ; 50
        lea     ax, [bp - 0x6a]                 ; 8D 46 96
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x38], 0         ; 83 7E C8 00
        jne     L_03BB                          ; 75 03
        jmp     L_0555                          ; E9 9A 01
L_03BB:
        push    word ptr [bp - 0x6e]            ; FF 76 92
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.SETTEXTJUSTIFICATION    ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x51]        ; 8B 46 AF
        mov     word ptr [si + 0x12], ax        ; 89 44 12
        push    word ptr [bp - 0x6e]            ; FF 76 92
        mov     ax, 0x7e4                       ; B8 E4 07
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.GETTEXTEXTENT           ; 9A FF FF 00 00 [FIXUP]
        sub     ax, word ptr [bp - 0x51]        ; 2B 46 AF
        mov     word ptr [si + 0x10], ax        ; 89 44 10
        mov     ax, word ptr [bp - 0x68]        ; 8B 46 98
        mov     word ptr [si + 0x14], ax        ; 89 44 14
        mov     ax, word ptr [bp - 0x66]        ; 8B 46 9A
        mov     word ptr [si + 0x16], ax        ; 89 44 16
        mov     ax, word ptr [bp - 0x68]        ; 8B 46 98
        mov     word ptr [si + 0x18], ax        ; 89 44 18
        mov     ax, word ptr [bp - 0x62]        ; 8B 46 9E
        mov     word ptr [si + 0x1a], ax        ; 89 44 1A
        test    byte ptr [bp - 0x53], 1         ; F6 46 AD 01
        jne     L_0409                          ; 75 07
        cmp     word ptr [bp - 0x60], 0xff      ; 81 7E A0 FF 00
        jl      L_040E                          ; 7C 05
L_0409:
        mov     ax, 0xff                        ; B8 FF 00
        jmp     L_0411                          ; EB 03
L_040E:
        mov     ax, word ptr [bp - 0x60]        ; 8B 46 A0
L_0411:
        mov     word ptr [bp - 0x70], ax        ; 89 46 90
        lea     ax, [si + 0x1e]                 ; 8D 44 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x70]            ; FF 76 90
        mov     ax, 0x60                        ; B8 60 00
        push    ax                              ; 50
        call    far _entry_114                  ; 9A C4 01 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x36]        ; 8B 5E CA
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0467                          ; 75 39
        test    byte ptr [bp - 0x53], 0xf0      ; F6 46 AD F0
        je      L_0467                          ; 74 33
        push    word ptr [bp - 0x6e]            ; FF 76 92
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        lea     ax, [bp - 0x94]                 ; 8D 86 6C FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTFACE             ; 9A 84 05 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x36]        ; 8B 5E CA
        mov     ax, word ptr [bx]               ; 8B 07
        inc     ax                              ; 40
        push    ax                              ; 50
        lea     ax, [bp - 0x94]                 ; 8D 86 6C FF
        push    ax                              ; 50
        call    far _entry_71                   ; 9A 96 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0467                          ; 75 0C
        mov     bx, word ptr [bp - 0x36]        ; 8B 5E CA
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     al, byte ptr [bp - 0x53]        ; 8A 46 AD
        and     al, 0xf0                        ; 24 F0
        mov     byte ptr [bx], al               ; 88 07
L_0467:
        mov     ax, word ptr [bp - 0x6a]        ; 8B 46 96
        sub     ax, word ptr [bp - 0x64]        ; 2B 46 9C
        mov     word ptr [bp - 0x74], ax        ; 89 46 8C
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_04DF                          ; 74 69
        push    ax                              ; 50
        push    word ptr [0xa6c]                ; FF 36 6C 0A
        push    word ptr [0x10fe]               ; FF 36 FE 10
        call    far _entry_94                   ; 9A BB 04 00 00 [FIXUP]
        add     ax, 5                           ; 05 05 00
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        mov     ax, 0xff                        ; B8 FF 00
        push    ax                              ; 50
        call    far _entry_117                  ; 9A CE 04 00 00 [FIXUP]
        sub     ah, ah                          ; 2A E4
        mov     cl, 8                           ; B1 08
        shl     ax, cl                          ; D3 E0
        mov     cx, word ptr [di]               ; 8B 0D
        and     ch, 0                           ; 80 E5 00
        or      ax, cx                          ; 0B C1
        mov     word ptr [di], ax               ; 89 05
        mov     al, byte ptr [bp - 0x53]        ; 8A 46 AD
        and     al, 9                           ; 24 09
        cmp     al, 8                           ; 3C 08
        jne     L_04D4                          ; 75 25
        push    word ptr [bp - 0x60]            ; FF 76 A0
        push    word ptr [0xa5a]                ; FF 36 5A 0A
        push    word ptr [0x10ee]               ; FF 36 EE 10
        call    far _entry_94                   ; 9A EB 04 00 00 [FIXUP]
        add     ax, 0xa                         ; 05 0A 00
        cdq                                     ; 99
        mov     cx, 0x14                        ; B9 14 00
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        mov     ax, 0x7f                        ; B8 7F 00
        push    ax                              ; 50
        call    far _entry_117                  ; 9A FE 04 00 00 [FIXUP]
        jmp     L_04D6                          ; EB 02
L_04D4:
        sub     ax, ax                          ; 2B C0
L_04D6:
        mov     word ptr [bp - 0x72], ax        ; 89 46 8E
        or      byte ptr [bp - 0x71], 8         ; 80 4E 8F 08
        jmp     L_0516                          ; EB 37
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_04DF -- offset 0x04DF -- 198 instr
; Dispatcher: tabla de decisiones cmp+jcc (198 instr).
; tags: calls_gdi, dispatcher
; calls (inter): GDI.GETTEXTFACE
;----------------------------------------------------------------------
L_04DF:
        push    word ptr [bp - 0x74]            ; FF 76 8C
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        push    word ptr [0xe16]                ; FF 36 16 0E
        call    far _entry_94                   ; 9A EB 01 00 00 [FIXUP]
        add     ax, 5                           ; 05 05 00
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        mov     ax, 0xff                        ; B8 FF 00
        push    ax                              ; 50
        call    far _entry_117                  ; 9A FF FF 00 00 [FIXUP]
        sub     ah, ah                          ; 2A E4
        mov     cl, 8                           ; B1 08
        shl     ax, cl                          ; D3 E0
        mov     cx, word ptr [di]               ; 8B 0D
        and     ch, 0                           ; 80 E5 00
        or      ax, cx                          ; 0B C1
        mov     word ptr [di], ax               ; 89 05
        mov     word ptr [bp - 0x72], 0         ; C7 46 8E 00 00
L_0516:
        cmp     word ptr [bp - 0x5c], 0x226     ; 81 7E A4 26 02
        jle     L_0521                          ; 7E 04
        or      byte ptr [bp - 0x71], 2         ; 80 4E 8F 02
L_0521:
        cmp     byte ptr [bp - 0x5a], 0         ; 80 7E A6 00
        je      L_052B                          ; 74 04
        or      byte ptr [bp - 0x71], 4         ; 80 4E 8F 04
L_052B:
        cmp     byte ptr [bp - 0x59], 0         ; 80 7E A7 00
        je      L_0535                          ; 74 04
        or      byte ptr [bp - 0x71], 1         ; 80 4E 8F 01
L_0535:
        test    byte ptr [bp - 0x53], 1         ; F6 46 AD 01
        jne     L_053F                          ; 75 04
        or      byte ptr [bp - 0x72], 0x80      ; 80 4E 8E 80
L_053F:
        mov     ax, word ptr [bp - 0x72]        ; 8B 46 8E
        and     ah, 0xf                         ; 80 E4 0F
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        mov     cx, word ptr [di + 2]           ; 8B 4D 02
        and     cx, 0xf                         ; 81 E1 0F 00
        or      ax, cx                          ; 0B C1
        mov     word ptr [di + 2], ax           ; 89 45 02
L_0555:
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        and     al, 0xf0                        ; 24 F0
        mov     cx, word ptr [si + 6]           ; 8B 4C 06
        and     cx, 0xf                         ; 81 E1 0F 00
        or      ax, cx                          ; 0B C1
        mov     word ptr [di + 2], ax           ; 89 45 02
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_059E                          ; 74 32
        lea     ax, [bp - 0xb6]                 ; 8D 86 4A FF
        mov     word ptr [bp - 0xb8], ax        ; 89 86 48 FF
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xb8]        ; 8B 86 48 FF
        inc     ax                              ; 40
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far GDI.GETTEXTFACE             ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xb8]        ; 8B 86 48 FF
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     bx, word ptr [bp - 0x36]        ; 8B 5E CA
        mov     ax, word ptr [bx]               ; 8B 07
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far _entry_71                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_05CC                          ; 75 2E
L_059E:
        mov     al, byte ptr [si + 4]           ; 8A 44 04
        sub     ah, ah                          ; 2A E4
        mov     cx, word ptr [di]               ; 8B 0D
        and     cl, 0                           ; 80 E1 00
L_05A8:
        or      ax, cx                          ; 0B C1
        mov     word ptr [di], ax               ; 89 05
L_05AC:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_0630                          ; 74 7E
        mov     word ptr [0x1078], si           ; 89 36 78 10
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     dx, word ptr [si + 6]           ; 8B 54 06
        mov     word ptr [0xe8a], ax            ; A3 8A 0E
        mov     word ptr [0xe8c], dx            ; 89 16 8C 0E
        lea     ax, [si + 0xe]                  ; 8D 44 0E
        push    ax                              ; 50
        mov     ax, 0x1226                      ; B8 26 12
        jmp     L_0648                          ; EB 7C
L_05CC:
        mov     bx, word ptr [bp - 0xb8]        ; 8B 9E 48 FF
        mov     al, byte ptr [bp - 0x53]        ; 8A 46 AD
        and     al, 0xf0                        ; 24 F0
        mov     byte ptr [bx], al               ; 88 07
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        and     ax, 0xf                         ; 25 0F 00
        push    ax                              ; 50
        push    word ptr [bp - 0xb8]            ; FF B6 48 FF
        call    far _entry_331                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xba], ax        ; 89 86 46 FF
        cmp     ax, 0xff                        ; 3D FF 00
        jne     L_0622                          ; 75 32
        mov     ax, word ptr [bp - 0xb8]        ; 8B 86 48 FF
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xb8]        ; 8B 86 48 FF
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 4E 06 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0xb8]        ; 8B 9E 48 FF
        mov     byte ptr [bx + 1], 3            ; C6 47 01 03
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        and     ax, 0xf                         ; 25 0F 00
        push    ax                              ; 50
        push    word ptr [bp - 0xb8]            ; FF B6 48 FF
        call    far _entry_108                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xba], ax        ; 89 86 46 FF
L_0622:
        mov     al, byte ptr [bp - 0xba]        ; 8A 86 46 FF
        sub     ah, ah                          ; 2A E4
        mov     cx, word ptr [di]               ; 8B 0D
        and     cl, 0                           ; 80 E1 00
        jmp     L_05A8                          ; E9 78 FF
L_0630:
        mov     word ptr [0xe10], si            ; 89 36 10 0E
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     dx, word ptr [si + 6]           ; 8B 54 06
        mov     word ptr [0x1bf8], ax           ; A3 F8 1B
        mov     word ptr [0x1bfa], dx           ; 89 16 FA 1B
        lea     ax, [si + 0xe]                  ; 8D 44 0E
        push    ax                              ; 50
        mov     ax, 0xebc                       ; B8 BC 0E
L_0648:
        push    ax                              ; 50
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A A7 02 00 00 [FIXUP]
L_0652:
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        mov     dx, word ptr [si + 0xa]         ; 8B 54 0A
        cmp     word ptr [si + 6], dx           ; 39 54 06
        jne     L_0665                          ; 75 08
        cmp     word ptr [si + 4], ax           ; 39 44 04
        jne     L_0665                          ; 75 03
        jmp     L_070A                          ; E9 A5 00
L_0665:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        mov     dx, word ptr [si + 0xa]         ; 8B 54 0A
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [bx + 2], dx           ; 89 57 02
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_067C                          ; 75 03
        jmp     L_070A                          ; E9 8E 00
L_067C:
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     cl, 4                           ; B1 04
        shr     ax, cl                          ; D3 E8
        and     ah, 0xf                         ; 80 E4 0F
        mov     word ptr [bp - 0xbe], ax        ; 89 86 42 FF
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xc0], ax        ; 89 86 40 FF
        and     ax, 0x3f                        ; 25 3F 00
        mov     cl, 0xa                         ; B1 0A
        shl     ax, cl                          ; D3 E0
        mov     cx, word ptr [di]               ; 8B 0D
        and     ch, 3                           ; 80 E5 03
        or      ax, cx                          ; 0B C1
        mov     word ptr [di], ax               ; 89 05
        mov     al, byte ptr [bp - 0xbf]        ; 8A 86 41 FF
        sub     ah, ah                          ; 2A E4
        mov     cx, word ptr [di + 2]           ; 8B 4D 02
        and     cl, 0                           ; 80 E1 00
        or      ax, cx                          ; 0B C1
        mov     word ptr [di + 2], ax           ; 89 45 02
        mov     ax, word ptr [bp - 0xbe]        ; 8B 86 42 FF
        and     ax, 0x7f                        ; 25 7F 00
        shl     ax, 1                           ; D1 E0
        mov     cx, word ptr [di + 6]           ; 8B 4D 06
        and     cl, 1                           ; 80 E1 01
        or      ax, cx                          ; 0B C1
        mov     word ptr [di + 6], ax           ; 89 45 06
        and     byte ptr [di + 6], 0xfe         ; 80 65 06 FE
        and     byte ptr [di + 3], 0xfe         ; 80 65 03 FE
        and     byte ptr [di + 1], 0xfd         ; 80 65 01 FD
        and     byte ptr [di + 1], 0xfe         ; 80 65 01 FE
        test    word ptr [bp - 0xbe], 0x200     ; F7 86 42 FF 00 02
        je      L_06E7                          ; 74 04
        or      byte ptr [di + 1], 1            ; 80 4D 01 01
L_06E7:
        test    word ptr [bp - 0xbe], 0x400     ; F7 86 42 FF 00 04
        je      L_06F3                          ; 74 04
        or      byte ptr [di + 1], 2            ; 80 4D 01 02
L_06F3:
        test    word ptr [bp - 0xbe], 0x100     ; F7 86 42 FF 00 01
        je      L_06FF                          ; 74 04
        or      byte ptr [di + 3], 1            ; 80 4D 03 01
L_06FF:
        test    byte ptr [bp - 0xbe], 0x80      ; F6 86 42 FF 80
        je      L_070A                          ; 74 04
        or      byte ptr [di + 6], 1            ; 80 4D 06 01
L_070A:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0712 -- offset 0x0712 -- 136 instr
; Dispatcher: tabla de decisiones cmp+jcc (136 instr).
; tags: calls_gdi, calls_user, dispatcher
; callers: sub_0100
; calls (inter): GDI.DELETEDC, GDI.GETSTOCKOBJECT, GDI.SELECTOBJECT, USER.RELEASEDC
;----------------------------------------------------------------------
L_0712:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_079D                          ; 74 7D
        cmp     word ptr [0x79e], 0             ; 83 3E 9E 07 00
        jne     L_072C                          ; 75 05
L_0727:
        sub     ax, ax                          ; 2B C0
        jmp     L_083A                          ; E9 0E 01
L_072C:
        push    word ptr [0x79e]                ; FF 36 9E 07
        push    word ptr [bp + 4]               ; FF 76 04
        call    far GDI.SELECTOBJECT            ; 9A 5A 07 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_073F                          ; 74 03
        jmp     L_0837                          ; E9 F8 00
L_073F:
        push    word ptr [0x79e]                ; FF 36 9E 07
        cmp     word ptr [0x31c], 0             ; 83 3E 1C 03 00
        je      L_074F                          ; 74 05
        mov     ax, 0xe                         ; B8 0E 00
        jmp     L_0752                          ; EB 03
L_074F:
        mov     ax, 0xd                         ; B8 0D 00
L_0752:
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A BD 07 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A AC 07 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0787                          ; 75 25
        cmp     word ptr [0x31c], 0             ; 83 3E 1C 03 00
        je      L_0774                          ; 74 0B
        push    word ptr [0x79e]                ; FF 36 9E 07
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0781                          ; EB 0D
L_0774:
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [0x79e]                ; FF 36 9E 07
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
L_0781:
        mov     word ptr [0x79e], 0             ; C7 06 9E 07 00 00
L_0787:
        call    far _entry_254                  ; 9A BD 02 00 00 [FIXUP]
        cmp     word ptr [0x79e], 0             ; 83 3E 9E 07 00
        jne     L_0727                          ; 75 94
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_118                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0727                          ; EB 8A
L_079D:
        cmp     word ptr [0x798], 0             ; 83 3E 98 07 00
        je      L_0727                          ; 74 83
        push    word ptr [0x798]                ; FF 36 98 07
        push    word ptr [bp + 4]               ; FF 76 04
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_07CF                          ; 75 1B
        push    word ptr [0x798]                ; FF 36 98 07
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A E7 07 00 00 [FIXUP]
L_07C7:
        call    far _entry_254                  ; 9A 88 07 00 00 [FIXUP]
        jmp     L_0727                          ; E9 58 FF
L_07CF:
        sub     si, si                          ; 2B F6
        mov     di, 0x107e                      ; BF 7E 10
L_07D4:
        cmp     word ptr [0x320], si            ; 39 36 20 03
        jle     L_0837                          ; 7E 5D
        cmp     word ptr [di + 0x32], 0         ; 83 7D 32 00
        je      L_0831                          ; 74 51
        push    word ptr [di + 0x32]            ; FF 75 32
        push    word ptr [bp + 4]               ; FF 76 04
        call    far GDI.SELECTOBJECT            ; 9A 01 08 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0831                          ; 75 42
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 66 08 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [0x798]                ; FF 36 98 07
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 24 08 00 00 [FIXUP]
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 0xa], 0x107e     ; C7 46 F6 7E 10
L_080F:
        cmp     word ptr [bp - 6], si           ; 39 76 FA
        jg      L_07C7                          ; 7F B3
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        cmp     word ptr [bx + 0x32], 0         ; 83 7F 32 00
        je      L_0828                          ; 74 0B
        push    word ptr [bx + 0x32]            ; FF 77 32
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far GDI.SELECTOBJECT            ; 9A 34 07 00 00 [FIXUP]
L_0828:
        inc     word ptr [bp - 6]               ; FF 46 FA
        add     word ptr [bp - 0xa], 0x38       ; 83 46 F6 38
        jmp     L_080F                          ; EB DE
L_0831:
        inc     si                              ; 46
        add     di, 0x38                        ; 83 C7 38
        jmp     L_07D4                          ; EB 9D
L_0837:
        mov     ax, 1                           ; B8 01 00
L_083A:
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        push    word ptr [bp + 6]               ; FF 76 06
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0861                          ; 74 0C
        cmp     word ptr [0x31c], 0             ; 83 3E 1C 03 00
        je      L_0861                          ; 74 05
        mov     ax, 0xe                         ; B8 0E 00
        jmp     L_0864                          ; EB 03
L_0861:
        mov     ax, 0xd                         ; B8 0D 00
L_0864:
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 54 07 00 00 [FIXUP]
        push    ax                              ; 50
        call    L_0712                          ; E8 A4 FE
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0888                          ; 74 14
        mov     word ptr [0x1078], 0            ; C7 06 78 10 00 00
        mov     word ptr [0xe8a], 0xffff        ; C7 06 8A 0E FF FF
        mov     word ptr [0xe8c], 0xffff        ; C7 06 8C 0E FF FF
        jmp     L_089A                          ; EB 12
L_0888:
        mov     word ptr [0xe10], 0             ; C7 06 10 0E 00 00
        mov     word ptr [0x1bf8], 0xffff       ; C7 06 F8 1B FF FF
        mov     word ptr [0x1bfa], 0xffff       ; C7 06 FA 1B FF FF
L_089A:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

WRITE_TEXT ENDS

        END
