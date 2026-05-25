; AUTO-GENERATED from original WRITE segment 16
; segment_size=1146 bytes, flags=0xf170
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
        sub     sp, 0x54                        ; 83 EC 54
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        call    far _entry_61                   ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 0x42                        ; 3D 42 00
        jle     L_0024                          ; 7E 05
L_001F:
        sub     ax, ax                          ; 2B C0
        jmp     L_020A                          ; E9 E6 01
L_0024:
        lea     ax, [bp - 0x4c]                 ; 8D 46 B4
        push    ax                              ; 50
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     byte ptr [bx + 1], 0x3a         ; 80 7F 01 3A
        jne     L_0044                          ; 75 13
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_70                   ; 9A D8 03 00 00 [FIXUP]
        sub     ax, 0x40                        ; 2D 40 00
        jmp     L_0046                          ; EB 02
L_0044:
        sub     ax, ax                          ; 2B C0
L_0046:
        push    ax                              ; 50
        call    far _entry_277                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     ax, 3                           ; 3D 03 00
        jge     L_006A                          ; 7D 16
        cmp     ax, 0xfff1                      ; 3D F1 FF
        jne     L_0062                          ; 75 09
        mov     ax, 0x201c                      ; B8 1C 20
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
L_0062:
        mov     word ptr [0xbda], 1             ; C7 06 DA 0B 01 00
        jmp     L_001F                          ; EB B5
L_006A:
        lea     ax, [bp - 0x4c]                 ; 8D 46 B4
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_03B6                          ; E8 3C 03
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        lea     ax, [bp - 0x4a]                 ; 8D 46 B6
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
        sub     word ptr [bp - 0xa], 2          ; 83 6E F6 02
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x50], al        ; 88 46 B0
        cmp     al, 0x5c                        ; 3C 5C
        je      L_009F                          ; 74 04
        cmp     al, 0x2f                        ; 3C 2F
        jne     L_00B0                          ; 75 11
L_009F:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     byte ptr [bx], 0x5c             ; C6 07 5C
        jmp     L_00C5                          ; EB 15
L_00B0:
        push    word ptr [bp - 0x4e]            ; FF 76 B2
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_03B6                          ; E8 F8 02
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        dec     ax                              ; 48
        add     word ptr [bp - 8], ax           ; 01 46 F8
L_00C5:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x52], al        ; 88 46 AE
        or      al, al                          ; 0A C0
        je      L_00E4                          ; 74 10
        cmp     al, 0x2c                        ; 3C 2C
        je      L_00E4                          ; 74 0C
        cmp     al, 0x20                        ; 3C 20
        je      L_00E4                          ; 74 08
        cmp     al, 0x2b                        ; 3C 2B
        je      L_00E4                          ; 74 04
        cmp     al, 9                           ; 3C 09
        jne     L_0102                          ; 75 1E
L_00E4:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     byte ptr [bx], 0                ; C6 07 00
L_00EA:
        dec     word ptr [bp - 4]               ; FF 4E FC
L_00ED:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x54], al        ; 88 46 AC
        or      al, al                          ; 0A C0
        je      L_00FF                          ; 74 03
        jmp     L_01F2                          ; E9 F3 00
L_00FF:
        jmp     L_0207                          ; E9 05 01
L_0102:
        cmp     byte ptr [bp - 0x52], 0x2e      ; 80 7E AE 2E
        jne     L_014E                          ; 75 46
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x52], al        ; 88 46 AE
        cmp     al, 0x5c                        ; 3C 5C
        je      L_00C5                          ; 74 AE
        cmp     al, 0x2f                        ; 3C 2F
        je      L_00C5                          ; 74 AA
        cmp     al, 0x2e                        ; 3C 2E
        je      L_0122                          ; 74 03
        jmp     L_001F                          ; E9 FD FE
L_0122:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x52], al        ; 88 46 AE
        cmp     al, 0x5c                        ; 3C 5C
        je      L_0138                          ; 74 07
        cmp     al, 0x2f                        ; 3C 2F
        je      L_0138                          ; 74 03
        jmp     L_001F                          ; E9 E7 FE
L_0138:
        dec     word ptr [bp - 8]               ; FF 4E F8
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        cmp     byte ptr [bx - 1], 0x5c         ; 80 7F FF 5C
        je      L_00C5                          ; 74 81
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     bx, ax                          ; 3B D8
        ja      L_0138                          ; 77 ED
        jmp     L_001F                          ; E9 D1 FE
L_014E:
        mov     si, 1                           ; BE 01 00
        jmp     L_0183                          ; EB 30
L_0153:
        cmp     byte ptr [bp - 0x52], 0x2c      ; 80 7E AE 2C
        je      L_0189                          ; 74 30
        cmp     byte ptr [bp - 0x52], 0x20      ; 80 7E AE 20
        je      L_0189                          ; 74 2A
        cmp     byte ptr [bp - 0x52], 0x2b      ; 80 7E AE 2B
        je      L_0189                          ; 74 24
        cmp     byte ptr [bp - 0x52], 9         ; 80 7E AE 09
        je      L_0189                          ; 74 1E
        cmp     byte ptr [bp - 0x52], 0x5c      ; 80 7E AE 5C
        je      L_0189                          ; 74 18
        cmp     byte ptr [bp - 0x52], 0x2f      ; 80 7E AE 2F
        je      L_0189                          ; 74 12
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x52], al        ; 88 46 AE
        inc     si                              ; 46
L_0183:
        cmp     byte ptr [bp - 0x52], 0         ; 80 7E AE 00
        jne     L_0153                          ; 75 CA
L_0189:
        cmp     si, 0xd                         ; 83 FE 0D
        jle     L_0191                          ; 7E 03
        jmp     L_001F                          ; E9 8E FE
L_0191:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, si                          ; 2B C6
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_03B6                          ; E8 16 02
        add     word ptr [bp - 8], si           ; 01 76 F8
        cmp     byte ptr [bp - 0x52], 0x2f      ; 80 7E AE 2F
        jne     L_01B3                          ; 75 0A
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     byte ptr [bx - 1], 0x5c         ; C6 47 FF 5C
        jmp     L_00C5                          ; E9 12 FF
L_01B3:
        cmp     byte ptr [bp - 0x52], 0         ; 80 7E AE 00
        je      L_01D4                          ; 74 1B
        cmp     byte ptr [bp - 0x52], 0x2c      ; 80 7E AE 2C
        je      L_01D4                          ; 74 15
        cmp     byte ptr [bp - 0x52], 0x20      ; 80 7E AE 20
        je      L_01D4                          ; 74 0F
        cmp     byte ptr [bp - 0x52], 0x2b      ; 80 7E AE 2B
        je      L_01D4                          ; 74 09
        cmp     byte ptr [bp - 0x52], 9         ; 80 7E AE 09
        je      L_01D4                          ; 74 03
        jmp     L_00C5                          ; E9 F1 FE
L_01D4:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     byte ptr [bx - 1], 0            ; C6 47 FF 00
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0xb8]            ; FF B7 B8 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_03F7                          ; E8 08 02
        jmp     L_00EA                          ; E9 F8 FE
L_01F2:
        cmp     byte ptr [bp - 0x54], 0x20      ; 80 7E AC 20
        jne     L_01FB                          ; 75 03
        jmp     L_00ED                          ; E9 F2 FE
L_01FB:
        cmp     byte ptr [bp - 0x54], 9         ; 80 7E AC 09
        je      L_0204                          ; 74 03
        jmp     L_001F                          ; E9 1B FE
L_0204:
        jmp     L_00ED                          ; E9 E6 FE
L_0207:
        mov     ax, 1                           ; B8 01 00
L_020A:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     word ptr [bp - 8], 0xffff       ; C7 46 F8 FF FF
        sub     di, di                          ; 2B FF
        jmp     L_027D                          ; EB 4C
L_0231:
        mov     bx, di                          ; 8B DF
        add     bx, si                          ; 03 DE
        cmp     byte ptr [bx], 0x2e             ; 80 3F 2E
        jne     L_0253                          ; 75 19
        mov     bx, di                          ; 8B DF
        add     bx, si                          ; 03 DE
        cmp     byte ptr [bx + 1], 0x5c         ; 80 7F 01 5C
        je      L_024E                          ; 74 0A
        mov     bx, di                          ; 8B DF
        add     bx, si                          ; 03 DE
        cmp     byte ptr [bx + 1], 0x2f         ; 80 7F 01 2F
        jne     L_0253                          ; 75 05
L_024E:
        add     di, 2                           ; 83 C7 02
        jmp     L_027D                          ; EB 2A
L_0253:
        mov     bx, di                          ; 8B DF
        add     bx, si                          ; 03 DE
        cmp     byte ptr [bx], 0x2e             ; 80 3F 2E
        jne     L_0282                          ; 75 26
        mov     bx, di                          ; 8B DF
        add     bx, si                          ; 03 DE
        cmp     byte ptr [bx + 1], 0x2e         ; 80 7F 01 2E
        jne     L_0282                          ; 75 1C
        mov     bx, di                          ; 8B DF
        add     bx, si                          ; 03 DE
        cmp     byte ptr [bx + 2], 0x5c         ; 80 7F 02 5C
        je      L_027A                          ; 74 0A
        mov     bx, di                          ; 8B DF
        add     bx, si                          ; 03 DE
        cmp     byte ptr [bx + 2], 0x2f         ; 80 7F 02 2F
        jne     L_0282                          ; 75 08
L_027A:
        add     di, 3                           ; 83 C7 03
L_027D:
        cmp     word ptr [bp + 8], di           ; 39 7E 08
        jg      L_0231                          ; 7F AF
L_0282:
        mov     word ptr [bp - 0xc], di         ; 89 7E F4
        cmp     word ptr [bp + 8], di           ; 39 7E 08
        jg      L_029A                          ; 7F 10
        mov     word ptr [bp - 4], di           ; 89 7E FC
L_028D:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     word ptr [bx], ax               ; 01 07
        sub     ax, ax                          ; 2B C0
        jmp     L_03A9                          ; E9 0F 01
L_029A:
        mov     word ptr [bp - 4], di           ; 89 7E FC
L_029D:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_02A8                          ; 7C 03
        jmp     L_0368                          ; E9 C0 00
L_02A8:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     al, byte ptr [bx + si]          ; 8A 00
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        cmp     al, 0x80                        ; 3C 80
        jb      L_02B7                          ; 72 03
        jmp     L_034B                          ; E9 94 00
L_02B7:
        cmp     al, 0x21                        ; 3C 21
        jb      L_028D                          ; 72 D2
        cmp     al, 0x7e                        ; 3C 7E
        ja      L_028D                          ; 77 CE
        sub     ah, ah                          ; 2A E4
        cmp     ax, 0x3a                        ; 3D 3A 00
        je      L_02EE                          ; 74 28
        ja      L_0334                          ; 77 6C
        sub     ax, 0x22                        ; 2D 22 00
        cmp     ax, 0xd                         ; 3D 0D 00
        ja      L_034B                          ; 77 7B
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x318]        ; 2E FF A7 18 03
        cmp     word ptr [bp - 8], -1           ; 83 7E F8 FF
        jne     L_028D                          ; 75 AF
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        je      L_028D                          ; 74 A7
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_034B                          ; EB 5D
L_02EE:
        cmp     word ptr [bp - 4], 1            ; 83 7E FC 01
        jne     L_028D                          ; 75 99
        mov     al, byte ptr [si]               ; 8A 04
        cwde                                    ; 98
        push    ax                              ; 50
        call    far _entry_276                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_028D                          ; 74 8C
L_0301:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        inc     ax                              ; 40
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        je      L_028D                          ; 74 83
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        inc     ax                              ; 40
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 8], 0xffff       ; C7 46 F8 FF FF
        jmp     L_034B                          ; EB 33
        lea     ax, [bp + si]                   ; 8D 02
        lea     ax, [bp + si]                   ; 8D 02
        dec     bx                              ; 4B
        add     cx, word ptr [bp + di + 3]      ; 03 4B 03
        dec     bx                              ; 4B
        add     cx, word ptr [bp + di + 3]      ; 03 4B 03
        dec     bx                              ; 4B
        add     cx, word ptr [bp + di + 3]      ; 03 4B 03
        lea     ax, [bp + si]                   ; 8D 02
        lea     ax, [bp + si]                   ; 8D 02
        lea     ax, [bp + si]                   ; 8D 02
        dec     bx                              ; 4B
        add     bx, ax                          ; 03 D8
        add     al, byte ptr [bx + di]          ; 02 01
        add     di, word ptr [di]               ; 03 3D
        pop     bx                              ; 5B
        add     byte ptr [di + 3], dh           ; 00 75 03
        jmp     L_028D                          ; E9 51 FF
        ja      L_0351                          ; 77 13
        cmp     ax, 0x3b                        ; 3D 3B 00
        jb      L_034B                          ; 72 08
        cmp     ax, 0x3f                        ; 3D 3F 00
        ja      L_034B                          ; 77 03
        jmp     L_028D                          ; E9 42 FF
L_034B:
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_029D                          ; E9 4C FF
L_0351:
        cmp     ax, 0x5c                        ; 3D 5C 00
        je      L_0301                          ; 74 AB
        cmp     ax, 0x5d                        ; 3D 5D 00
        jne     L_035E                          ; 75 03
        jmp     L_028D                          ; E9 2F FF
L_035E:
        cmp     ax, 0x7c                        ; 3D 7C 00
        jne     L_0366                          ; 75 03
        jmp     L_028D                          ; E9 27 FF
L_0366:
        jmp     L_034B                          ; EB E3
L_0368:
        cmp     word ptr [bp - 8], -1           ; 83 7E F8 FF
        jne     L_0373                          ; 75 05
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        jmp     L_0376                          ; EB 03
L_0373:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
L_0376:
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        cmp     ax, 8                           ; 3D 08 00
        jle     L_038A                          ; 7E 0C
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, 8                           ; 05 08 00
L_0384:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_028D                          ; E9 03 FF
L_038A:
        cmp     word ptr [bp - 8], -1           ; 83 7E F8 FF
        jne     L_0395                          ; 75 05
L_0390:
        mov     ax, 1                           ; B8 01 00
        jmp     L_03A9                          ; EB 14
L_0395:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        dec     ax                              ; 48
        cmp     ax, 3                           ; 3D 03 00
        jle     L_0390                          ; 7E EF
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, 4                           ; 05 04 00
        jmp     L_0384                          ; EB DB
L_03A9:
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
; sub_03B6 -- offset 0x03B6 -- 33 instr
; Funcion mediana (33 instr, 0 calls).
; tags: far, medium
;----------------------------------------------------------------------
L_03B6:
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
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        jmp     L_03E4                          ; EB 1B
L_03C9:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        inc     word ptr [bp + 0xa]             ; FF 46 0A
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_70                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     byte ptr [bx], al               ; 88 07
L_03E4:
        mov     ax, si                          ; 8B C6
        dec     si                              ; 4E
        or      ax, ax                          ; 0B C0
        jne     L_03C9                          ; 75 DE
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03F7 -- offset 0x03F7 -- 59 instr
; Dispatcher: tabla de decisiones cmp+jcc (59 instr).
; tags: dispatcher
;----------------------------------------------------------------------
L_03F7:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_61                   ; 9A 46 04 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        dec     si                              ; 4E
        mov     word ptr [bp - 8], si           ; 89 76 F8
L_0419:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, 5                           ; 2D 05 00
        dec     si                              ; 4E
        cmp     ax, si                          ; 3B C6
        jge     L_0439                          ; 7D 15
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + si]          ; 8A 00
        sub     ah, ah                          ; 2A E4
        mov     di, ax                          ; 8B F8
        cmp     di, 0x2e                        ; 83 FF 2E
        jne     L_0451                          ; 75 1F
        mov     ax, bx                          ; 8B C3
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_0439:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_045D                          ; 75 1E
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_61                   ; 9A 16 00 00 00 [FIXUP]
        add     ax, word ptr [bp + 0xa]         ; 03 46 0A
        dec     ax                              ; 48
        push    ax                              ; 50
        jmp     L_0469                          ; EB 18
L_0451:
        cmp     di, 0x5c                        ; 83 FF 5C
        je      L_0439                          ; 74 E3
        cmp     di, 0x2f                        ; 83 FF 2F
        jne     L_0419                          ; 75 BE
        jmp     L_0439                          ; EB DC
L_045D:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_046E                          ; 74 0B
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0xa]             ; FF 76 F6
L_0469:
        call    far _entry_180                  ; 9A FF FF 00 00 [FIXUP]
L_046E:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        push    es                              ; 06

WRITE_TEXT ENDS

        END
