; AUTO-GENERATED from original USER segment 19
; segment_size=1383 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

USER_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x4e                        ; 83 EC 4E
        push    si                              ; 56
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        mov     word ptr [bp - 0x4e], 0         ; C7 46 B2 00 00
        cmp     word ptr [bp + 0xa], 0x114      ; 81 7E 0A 14 01
        je      L_002C                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_002E                          ; EB 02
L_002C:
        sub     ax, ax                          ; 2B C0
L_002E:
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x2e], 0         ; C7 46 D2 00 00
        mov     word ptr [bp - 0x24], 0         ; C7 46 DC 00 00
        mov     word ptr [bp - 0x4c], 0         ; C7 46 B4 00 00
        mov     word ptr [bp - 0x30], 0         ; C7 46 D0 00 00
        cmp     word ptr [si + 0xa], 0          ; 83 7C 0A 00
        je      L_0051                          ; 74 06
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        mov     word ptr [si + 0x26], ax        ; 89 44 26
L_0051:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 2                           ; 3D 02 00
        je      L_00CF                          ; 74 76
        jle     L_005E                          ; 7E 03
        jmp     L_0139                          ; E9 DB 00
L_005E:
        or      ax, ax                          ; 0B C0
        je      L_00BF                          ; 74 5D
        cmp     ax, 1                           ; 3D 01 00
        je      L_006A                          ; 74 03
        jmp     L_014D                          ; E9 E3 00
L_006A:
        mov     word ptr [bp - 0x4e], 1         ; C7 46 B2 01 00
L_006F:
        push    word ptr [si + 2]               ; FF 74 02
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_6121                  ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [si + 0x16]                 ; 8D 44 16
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_656B                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 8], 4            ; 83 7E 08 04
        jne     L_0099                          ; 75 03
        jmp     L_017F                          ; E9 E6 00
L_0099:
        cmp     word ptr [bp + 0xa], 0x115      ; 81 7E 0A 15 01
        je      L_00A3                          ; 74 03
        jmp     L_0153                          ; E9 B0 00
L_00A3:
        mov     ax, word ptr [si + 0x24]        ; 8B 44 24
        add     ax, word ptr [bp - 0x4e]        ; 03 46 B2
        mov     cx, word ptr [si + 0x20]        ; 8B 4C 20
        dec     cx                              ; 49
        dec     cx                              ; 49
        cmp     ax, cx                          ; 3B C1
        jge     L_00B5                          ; 7D 03
        jmp     L_0172                          ; E9 BD 00
L_00B5:
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        sub     ax, word ptr [si + 0x24]        ; 2B 44 24
        dec     ax                              ; 48
        jmp     L_016E                          ; E9 AF 00
L_00BF:
        mov     word ptr [bp - 0x4e], 0xffff    ; C7 46 B2 FF FF
        jmp     L_006F                          ; EB A9
L_00C6:
        mov     ax, word ptr [si + 0x22]        ; 8B 44 22
        dec     ax                              ; 48
L_00CA:
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
        jmp     L_006F                          ; EB A0
L_00CF:
        mov     ax, 1                           ; B8 01 00
        sub     ax, word ptr [si + 0x22]        ; 2B 44 22
        jmp     L_00CA                          ; EB F3
L_00D7:
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    L_041F                          ; E8 3E 03
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     word ptr [bp + 0xa], 0x115      ; 81 7E 0A 15 01
        jne     L_00F0                          ; 75 05
        mov     cx, word ptr [si + 0xe]         ; 8B 4C 0E
        jmp     L_00F3                          ; EB 03
L_00F0:
        mov     cx, word ptr [si + 0x1e]        ; 8B 4C 1E
L_00F3:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        neg     ax                              ; F7 D8
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        jmp     L_00CA                          ; EB CD
L_00FD:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
        or      ax, ax                          ; 0B C0
        jne     L_010A                          ; 75 03
        jmp     L_006F                          ; E9 65 FF
L_010A:
        cmp     word ptr [bp + 0xa], 0x115      ; 81 7E 0A 15 01
        jne     L_0116                          ; 75 05
        mov     ax, 0x28                        ; B8 28 00
        jmp     L_0119                          ; EB 03
L_0116:
        mov     ax, 0x27                        ; B8 27 00
L_0119:
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        cmp     word ptr [bp - 0x4e], 0         ; 83 7E B2 00
        jl      L_0125                          ; 7C 03
        jmp     L_006F                          ; E9 4A FF
L_0125:
        sub     word ptr [bp - 0x4c], 2         ; 83 6E B4 02
        jmp     L_006F                          ; E9 43 FF
L_012C:
        push    si                              ; 56
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    L_0481                          ; E8 4E 03
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
        jmp     L_0405                          ; E9 CC 02
L_0139:
        cmp     ax, 3                           ; 3D 03 00
        je      L_00C6                          ; 74 88
        cmp     ax, 4                           ; 3D 04 00
        je      L_00D7                          ; 74 94
        cmp     ax, 0x406                       ; 3D 06 04
        je      L_00FD                          ; 74 B5
        cmp     ax, 0x40e                       ; 3D 0E 04
        je      L_012C                          ; 74 DF
L_014D:
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_0413                          ; E9 C0 02
L_0153:
        cmp     word ptr [bp + 0xa], 0x114      ; 81 7E 0A 14 01
        jne     L_0172                          ; 75 18
        mov     ax, word ptr [si + 0x2a]        ; 8B 44 2A
        add     ax, word ptr [bp - 0x4e]        ; 03 46 B2
        mov     cx, word ptr [si + 0x26]        ; 8B 4C 26
        dec     cx                              ; 49
        cmp     ax, cx                          ; 3B C1
        jl      L_0172                          ; 7C 0A
        mov     ax, word ptr [si + 0x26]        ; 8B 44 26
        sub     ax, word ptr [si + 0x2a]        ; 2B 44 2A
L_016E:
        dec     ax                              ; 48
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
L_0172:
        push    si                              ; 56
        push    word ptr [bp - 0x4e]            ; FF 76 B2
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_04D0                          ; E8 54 03
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
L_017F:
        push    word ptr [si + 2]               ; FF 74 02
        cmp     word ptr [bp - 0x16], 0         ; 83 7E EA 00
        je      L_018D                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_018F                          ; EB 02
L_018D:
        sub     ax, ax                          ; 2B C0
L_018F:
        push    ax                              ; 50
        push    si                              ; 56
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    L_0481                          ; E8 EA 02
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x16], 0         ; 83 7E EA 00
        jne     L_01B2                          ; 75 0B
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
L_01B2:
        call    far _SEG1_07D8                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_01C2                          ; 75 07
        test    word ptr [si + 6], 0x2000       ; F7 44 06 00 20
        je      L_01C7                          ; 74 05
L_01C2:
        mov     ax, 1                           ; B8 01 00
        jmp     L_01C9                          ; EB 02
L_01C7:
        sub     ax, ax                          ; 2B C0
L_01C9:
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        or      ax, ax                          ; 0B C0
        jne     L_01D8                          ; 75 08
        push    word ptr [si + 2]               ; FF 74 02
        call    far _SEG1_34BF                  ; 9A 53 02 00 00 [FIXUP]
L_01D8:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     word ptr [si + 0x16], ax        ; 01 44 16
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        add     word ptr [si + 0x18], ax        ; 01 44 18
        test    byte ptr [si + 6], 4            ; F6 44 06 04
        je      L_01ED                          ; 74 03
        jmp     L_0405                          ; E9 18 02
L_01ED:
        push    word ptr [si + 4]               ; FF 74 04
        mov     ax, 0x111                       ; B8 11 01
        push    ax                              ; 50
        push    word ptr [si + 2]               ; FF 74 02
        mov     ax, 0xfff4                      ; B8 F4 FF
        push    ax                              ; 50
        call    far _SEG1_6221                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        cmp     word ptr [bp - 0x16], 0         ; 83 7E EA 00
        je      L_020C                          ; 74 05
        mov     ax, 0x602                       ; B8 02 06
        jmp     L_020F                          ; EB 03
L_020C:
        mov     ax, 0x601                       ; B8 01 06
L_020F:
        sub     dx, dx                          ; 2B D2
        mov     dx, ax                          ; 8B D0
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x22], 0         ; 83 7E DE 00
        je      L_025A                          ; 74 35
        test    byte ptr [si + 6], 0x80         ; F6 44 06 80
        je      L_0237                          ; 74 0C
        mov     ax, word ptr [si + 0x1e]        ; 8B 44 1E
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        dec     ax                              ; 48
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
L_0237:
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0x10]            ; FF 76 F0
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_4709                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [si + 2]               ; FF 74 02
        call    far _SEG1_34BF                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0358                          ; E9 FE 00
L_025A:
        cmp     word ptr [bp - 0x2e], 0         ; 83 7E D2 00
        jne     L_0269                          ; 75 09
        push    si                              ; 56
        call    far _entry_511                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
L_0269:
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        add     ax, word ptr [bp - 0x10]        ; 03 46 F0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        sub     ax, word ptr [bp - 0x1e]        ; 2B 46 E2
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
        push    ax                              ; 50
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [si + 0xa], 0          ; 83 7C 0A 00
        je      L_02B4                          ; 74 10
        push    si                              ; 56
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_519                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0358                          ; E9 A4 00
L_02B4:
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        jge     L_02CB                          ; 7D 11
        mov     ax, word ptr [si + 0x24]        ; 8B 44 24
        add     ax, word ptr [si + 0x22]        ; 03 44 22
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        sub     ax, word ptr [bp - 0x4e]        ; 2B 46 B2
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        jmp     L_02D7                          ; EB 0C
L_02CB:
        mov     ax, word ptr [si + 0x24]        ; 8B 44 24
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        sub     ax, word ptr [bp - 0x4e]        ; 2B 46 B2
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
L_02D7:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_032D                          ; 74 50
        mov     ax, word ptr [si + 0x24]        ; 8B 44 24
        add     ax, word ptr [si + 0x22]        ; 03 44 22
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        call    far GDI.SAVEDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jge     L_0315                          ; 7D 1E
        mov     ax, word ptr [si + 0x2a]        ; 8B 44 2A
        add     ax, word ptr [si + 0x28]        ; 03 44 28
        sub     ax, word ptr [bp - 0x4e]        ; 2B 46 B2
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        push    ax                              ; 50
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        jmp     L_0325                          ; EB 10
L_0315:
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        push    ax                              ; 50
L_0325:
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far GDI.INTERSECTCLIPRECT       ; 9A FF FF 00 00 [FIXUP]
L_032D:
        push    si                              ; 56
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x24]            ; FF 76 DC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_523                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x30], 0         ; 83 7E D0 00
        je      L_0358                          ; 74 10
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        push    word ptr [bp - 0x30]            ; FF 76 D0
        call    far GDI.RESTOREDC               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x30], 0         ; C7 46 D0 00 00
L_0358:
        lea     ax, [bp - 0x42]                 ; 8D 46 BE
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_22B8                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        jne     L_037F                          ; 75 10
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_2E78                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_037F                          ; 7D 03
        jmp     L_0099                          ; E9 1A FD
L_037F:
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_0393                          ; 74 0E
        push    word ptr [bp - 0x4c]            ; FF 76 B4
        lea     ax, [bp - 0x42]                 ; 8D 46 BE
        push    ax                              ; 50
        call    L_0525                          ; E8 96 01
        or      ax, ax                          ; 0B C0
        je      L_03FA                          ; 74 67
L_0393:
        mov     ax, word ptr [si + 0x14]        ; 8B 44 14
        cmp     word ptr [si + 0x10], ax        ; 39 44 10
        jne     L_03A0                          ; 75 05
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        jmp     L_03A3                          ; EB 03
L_03A0:
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
L_03A3:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [si + 0xa], 0          ; 83 7C 0A 00
        je      L_03BA                          ; 74 0E
        push    si                              ; 56
        push    ax                              ; 50
        lea     ax, [bp - 0x48]                 ; 8D 46 B8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_507                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_03C8                          ; EB 0E
L_03BA:
        push    si                              ; 56
        push    word ptr [bp - 4]               ; FF 76 FC
        lea     ax, [bp - 0x48]                 ; 8D 46 B8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_506                  ; 9A FF FF 00 00 [FIXUP]
L_03C8:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     word ptr [bp - 0x48], ax        ; 29 46 B8
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        sub     word ptr [bp - 0x46], ax        ; 29 46 BA
        push    si                              ; 56
        test    byte ptr [si + 6], 0x40         ; F6 44 06 40
        je      L_03E0                          ; 74 05
        mov     ax, 0x410                       ; B8 10 04
        jmp     L_03E3                          ; EB 03
L_03E0:
        mov     ax, 0x100                       ; B8 00 01
L_03E3:
        push    ax                              ; 50
        push    word ptr [bp - 0x46]            ; FF 76 BA
        push    word ptr [bp - 0x48]            ; FF 76 B8
        call    far _entry_515                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [si + 2]               ; FF 74 02
        call    far _SEG1_8551                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0099                          ; E9 9F FC
L_03FA:
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        call    far _entry_508                  ; 9A FF FF 00 00 [FIXUP]
L_0405:
        mov     ax, word ptr [bp - 0x4e]        ; 8B 46 B2
        sub     dx, dx                          ; 2B D2
        or      dl, 1                           ; 80 CA 01
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
L_0413:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_041F -- offset 0x041F -- 39 instr
; Funcion mediana (39 instr, 0 calls).
; tags: medium
;----------------------------------------------------------------------
L_041F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_0454                          ; 74 25
        mov     ax, word ptr [si + 0x24]        ; 8B 44 24
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        dec     ax                              ; 48
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        call    far _SEG1_520B                  ; 9A 67 04 00 00 [FIXUP]
        mov     word ptr [si + 0x24], ax        ; 89 44 24
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [si + 0x24]        ; 2B 44 24
        imul    word ptr [si + 0xe]             ; F7 6C 0E
        jmp     L_0477                          ; EB 23
L_0454:
        mov     ax, word ptr [si + 0x2a]        ; 8B 44 2A
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [si + 0x26]        ; 8B 44 26
        dec     ax                              ; 48
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        call    far _SEG1_520B                  ; 9A C5 04 00 00 [FIXUP]
        mov     word ptr [si + 0x2a], ax        ; 89 44 2A
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [si + 0x2a]        ; 2B 44 2A
        imul    word ptr [si + 0x1e]            ; F7 6C 1E
L_0477:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0481 -- offset 0x0481 -- 32 instr
; Funcion mediana (32 instr, 0 calls).
; tags: medium
;----------------------------------------------------------------------
L_0481:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_04A7                          ; 74 16
        cmp     word ptr [si + 0x20], 3         ; 83 7C 20 03
        jge     L_049B                          ; 7D 04
L_0497:
        sub     ax, ax                          ; 2B C0
        jmp     L_04C9                          ; EB 2E
L_049B:
        mov     ax, word ptr [si + 0x24]        ; 8B 44 24
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        dec     ax                              ; 48
        jmp     L_04B6                          ; EB 0F
L_04A7:
        cmp     word ptr [si + 0x26], 2         ; 83 7C 26 02
        jl      L_0497                          ; 7C EA
        mov     ax, word ptr [si + 0x2a]        ; 8B 44 2A
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [si + 0x26]        ; 8B 44 26
L_04B6:
        dec     ax                              ; 48
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _SEG1_520B                  ; 9A FF FF 00 00 [FIXUP]
L_04C9:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_04D0 -- offset 0x04D0 -- 31 instr
; Funcion mediana (31 instr, 0 calls).
; tags: medium
;----------------------------------------------------------------------
L_04D0:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        cmp     word ptr [bp + 4], 0x114        ; 81 7E 04 14 01
        je      L_04FF                          ; 74 21
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     word ptr [si + 0x24], ax        ; 01 44 24
        cmp     word ptr [si + 0x24], 0         ; 83 7C 24 00
        jge     L_04F5                          ; 7D 0B
        mov     ax, word ptr [si + 0x24]        ; 8B 44 24
        sub     word ptr [bp + 6], ax           ; 29 46 06
        mov     word ptr [si + 0x24], 0         ; C7 44 24 00 00
L_04F5:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        neg     ax                              ; F7 D8
        imul    word ptr [si + 0xe]             ; F7 6C 0E
        jmp     L_051E                          ; EB 1F
L_04FF:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     word ptr [si + 0x2a], ax        ; 01 44 2A
        cmp     word ptr [si + 0x2a], 0         ; 83 7C 2A 00
        jge     L_0516                          ; 7D 0B
        mov     ax, word ptr [si + 0x2a]        ; 8B 44 2A
        sub     word ptr [bp + 6], ax           ; 29 46 06
        mov     word ptr [si + 0x2a], 0         ; C7 44 2A 00 00
L_0516:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        neg     ax                              ; F7 D8
        imul    word ptr [si + 0x1e]            ; F7 6C 1E
L_051E:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0525 -- offset 0x0525 -- 30 instr
; Funcion sin clasificar definitiva (30 instr).
; tags: small
;----------------------------------------------------------------------
L_0525:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_2E78                  ; 9A 74 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jl      L_0538                          ; 7C 04
L_0534:
        sub     ax, ax                          ; 2B C0
        jmp     L_0562                          ; EB 2A
L_0538:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        cmp     word ptr [bx + 2], 0x100        ; 81 7F 02 00 01
        jne     L_0534                          ; 75 F2
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bx + 4], ax           ; 39 47 04
        jne     L_0534                          ; 75 EA
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_22B8                  ; 9A 64 03 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_0562:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      004h                            ; 04

USER_TEXT ENDS

        END
