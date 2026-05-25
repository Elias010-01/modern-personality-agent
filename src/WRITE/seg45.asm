; AUTO-GENERATED from original WRITE segment 45
; segment_size=4682 bytes, flags=0xf130
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
        sub     sp, 0x250                       ; 81 EC 50 02
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bx + di + 6]      ; 8B 41 06
        shr     ax, 1                           ; D1 E8
        and     ax, 1                           ; 25 01 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        mov     word ptr [bp - 0x22], 0         ; C7 46 DE 00 00
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _entry_41                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0053                          ; 75 08
        call    far _entry_174                  ; 9A 22 03 00 00 [FIXUP]
        jmp     L_09C9                          ; E9 76 09
L_0053:
        push    word ptr [0x10f4]               ; FF 36 F4 10
        mov     ax, 0x1e36                      ; B8 36 1E
        push    ax                              ; 50
        call    far USER.KILLTIMER              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 0x8008                      ; 3D 08 80
        jne     L_006B                          ; 75 03
        jmp     L_00F6                          ; E9 8B 00
L_006B:
        cmp     ax, 0x802e                      ; 3D 2E 80
        jne     L_0073                          ; 75 03
        jmp     L_010E                          ; E9 9B 00
L_0073:
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        mov     word ptr [0x13a0], ax           ; A3 A0 13
        mov     word ptr [0x13a2], dx           ; 89 16 A2 13
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        mov     word ptr [0x10f0], ax           ; A3 F0 10
        mov     word ptr [0x10f2], dx           ; 89 16 F2 10
        cmp     word ptr [0x1be4], dx           ; 39 16 E4 1B
        jle     L_0098                          ; 7E 03
        jmp     L_0149                          ; E9 B1 00
L_0098:
        jl      L_00A3                          ; 7C 09
        cmp     word ptr [0x1be2], ax           ; 39 06 E2 1B
        jb      L_00A3                          ; 72 03
        jmp     L_0149                          ; E9 A6 00
L_00A3:
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        mov     word ptr [bp - 0x22e], ax       ; 89 86 D2 FD
        mov     word ptr [bp - 0x22c], dx       ; 89 96 D4 FD
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x1014                      ; B8 14 10
        push    ax                              ; 50
        lea     ax, [bp - 0x22a]                ; 8D 86 D6 FD
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 43 01 00 00 [FIXUP]
        call    far _entry_232                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x322]                ; FF 36 22 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_152                  ; 9A B8 01 00 00 [FIXUP]
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_0120                          ; 74 2D
        jmp     L_0969                          ; E9 73 08
L_00F6:
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
L_0106:
        call    far _entry_97                   ; 9A 31 01 00 00 [FIXUP]
        jmp     L_0073                          ; E9 65 FF
L_010E:
        push    word ptr [0x1be8]               ; FF 36 E8 1B
        push    word ptr [0x1be6]               ; FF 36 E6 1B
        push    word ptr [0x1be8]               ; FF 36 E8 1B
        push    word ptr [0x1be6]               ; FF 36 E6 1B
        jmp     L_0106                          ; EB E6
L_0120:
        push    word ptr [bp - 0x22c]           ; FF B6 D4 FD
        push    word ptr [bp - 0x22e]           ; FF B6 D2 FD
        push    word ptr [bp - 0x22c]           ; FF B6 D4 FD
        push    word ptr [bp - 0x22e]           ; FF B6 D2 FD
        call    far _entry_97                   ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x22a]                ; 8D 86 D6 FD
        push    ax                              ; 50
        mov     ax, 0xa5e                       ; B8 5E 0A
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0173                          ; EB 2A
L_0149:
        call    far _entry_39                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x13a2]               ; FF 36 A2 13
        push    word ptr [0x13a0]               ; FF 36 A0 13
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_37                   ; 9A D8 02 00 00 [FIXUP]
L_0173:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09D6                          ; E8 5E 08
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [0x31e], 0             ; C7 06 1E 03 00 00
        mov     word ptr [0x1024], 0            ; C7 06 24 10 00 00
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_0191                          ; 74 03
        jmp     L_0969                          ; E9 D8 07
L_0191:
        or      ax, ax                          ; 0B C0
        je      L_01C8                          ; 74 33
        mov     ax, word ptr [0x139c]           ; A1 9C 13
        mov     dx, word ptr [0x139e]           ; 8B 16 9E 13
        add     ax, 0x20                        ; 05 20 00
        adc     dx, 0                           ; 83 D2 00
        mov     word ptr [0x1be6], ax           ; A3 E6 1B
        mov     word ptr [0x1be8], dx           ; 89 16 E8 1B
        mov     word ptr [0x1be2], ax           ; A3 E2 1B
        mov     word ptr [0x1be4], dx           ; 89 16 E4 1B
        push    word ptr [0x322]                ; FF 36 22 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_152                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0x800d       ; 81 7E 06 0D 80
        jne     L_01C8                          ; 75 05
        mov     word ptr [bp + 6], 0xffff       ; C7 46 06 FF FF
L_01C8:
        mov     ax, word ptr [0xe88]            ; A1 88 0E
        cdq                                     ; 99
        add     ax, word ptr [0x139c]           ; 03 06 9C 13
        adc     dx, word ptr [0x139e]           ; 13 16 9E 13
        mov     word ptr [bp - 0x23c], ax       ; 89 86 C4 FD
        mov     word ptr [bp - 0x23a], dx       ; 89 96 C6 FD
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        cmp     word ptr [0x3c], 0              ; 83 3E 3C 00 00
        jne     L_01F5                          ; 75 07
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        je      L_01FA                          ; 74 05
L_01F5:
        mov     word ptr [bp + 6], 0xffff       ; C7 46 06 FF FF
L_01FA:
        cmp     word ptr [0x1024], 0            ; 83 3E 24 10 00
        jne     L_0206                          ; 75 05
        call    far _entry_287                  ; 9A FF FF 00 00 [FIXUP]
L_0206:
        mov     bx, word ptr [0x10b4]           ; 8B 1E B4 10
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [0x1be0]           ; A1 E0 1B
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     si, ax                          ; 03 F0
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        inc     word ptr [bx + 2]               ; FF 47 02
        lea     ax, [bp - 0x236]                ; 8D 86 CA FD
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [0x100e]           ; A1 0E 10
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        sub     ax, word ptr [si + 0xc]         ; 2B 44 0C
        push    ax                              ; 50
        push    word ptr [0x1084]               ; FF 36 84 10
        mov     ax, word ptr [0x108a]           ; A1 8A 10
        cmp     word ptr [si + 0xe], ax         ; 39 44 0E
        jge     L_024A                          ; 7D 10
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        jmp     L_024D                          ; EB 0E
L_023F:
        call    far _entry_286                  ; 9A FF FF 00 00 [FIXUP]
L_0244:
        mov     word ptr [bp + 6], ax           ; 89 46 06
        jmp     L_01C8                          ; E9 7E FF
L_024A:
        mov     ax, word ptr [0x108a]           ; A1 8A 10
L_024D:
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x33e], 0xffff        ; C7 06 3E 03 FF FF
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jle     L_0262                          ; 7E 03
        jmp     L_07AC                          ; E9 4A 05
L_0262:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 0x8008                      ; 3D 08 80
        jne     L_026D                          ; 75 03
        jmp     L_03E1                          ; E9 74 01
L_026D:
        cmp     ax, 0x8009                      ; 3D 09 80
        jne     L_0275                          ; 75 03
        jmp     L_0873                          ; E9 FE 05
L_0275:
        cmp     ax, 0x800d                      ; 3D 0D 80
        jne     L_027D                          ; 75 03
        jmp     L_078A                          ; E9 0D 05
L_027D:
        cmp     ax, 0x802e                      ; 3D 2E 80
        je      L_02E8                          ; 74 66
        cmp     ax, 0x820d                      ; 3D 0D 82
        jne     L_028A                          ; 75 03
        jmp     L_084E                          ; E9 C4 05
L_028A:
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        dec     word ptr [bx + 2]               ; FF 4F 02
        call    L_0A93                          ; E8 FF 07
        mov     ax, word ptr [0x13a0]           ; A1 A0 13
        mov     dx, word ptr [0x13a2]           ; 8B 16 A2 13
        cmp     word ptr [0xc1e], dx            ; 39 16 1E 0C
        jne     L_02AA                          ; 75 09
        cmp     word ptr [0xc1c], ax            ; 39 06 1C 0C
        jne     L_02AA                          ; 75 03
        jmp     L_0956                          ; E9 AC 06
L_02AA:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x13a2]               ; FF 36 A2 13
        push    word ptr [0x13a0]               ; FF 36 A0 13
        mov     ax, word ptr [0xc1c]            ; A1 1C 0C
        mov     dx, word ptr [0xc1e]            ; 8B 16 1E 0C
        sub     ax, word ptr [0x13a0]           ; 2B 06 A0 13
        sbb     dx, word ptr [0x13a2]           ; 1B 16 A2 13
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_37                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _entry_42                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0987                          ; E9 9F 06
L_02E8:
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        mov     word ptr [bp - 0x242], ax       ; 89 86 BE FD
        mov     word ptr [bp - 0x240], dx       ; 89 96 C0 FD
        cmp     word ptr [bp - 0x22], 0         ; 83 7E DE 00
        je      L_0309                          ; 74 0C
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        cdq                                     ; 99
        add     word ptr [bp - 0x242], ax       ; 01 86 BE FD
        adc     word ptr [bp - 0x240], dx       ; 11 96 C0 FD
L_0309:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [bp - 0x240], dx       ; 39 96 C0 FD
        jge     L_0319                          ; 7D 03
        jmp     L_039D                          ; E9 84 00
L_0319:
        jg      L_0321                          ; 7F 06
        cmp     word ptr [bp - 0x242], ax       ; 39 86 BE FD
        jb      L_039D                          ; 72 7C
L_0321:
        call    far _entry_174                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        dec     word ptr [bx + 2]               ; FF 4F 02
L_032D:
        cmp     word ptr [bp - 0x22], 0         ; 83 7E DE 00
        je      L_0344                          ; 74 11
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x20]            ; FF 76 E0
        call    L_0F03                          ; E8 C4 0B
        mov     word ptr [bp - 0x22], 0         ; C7 46 DE 00 00
L_0344:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jle     L_0352                          ; 7E 06
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_0352:
        cmp     word ptr [bp - 4], 2            ; 83 7E FC 02
        jl      L_035D                          ; 7C 05
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
L_035D:
        mov     bx, word ptr [0x10b4]           ; 8B 1E B4 10
        mov     di, word ptr [bx]               ; 8B 3F
        mov     bx, word ptr [0x1be0]           ; 8B 1E E0 1B
        mov     cl, 4                           ; B1 04
        shl     bx, cl                          ; D3 E3
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        sub     word ptr [bx + di + 4], ax      ; 29 41 04
        mov     ax, word ptr [0x139c]           ; A1 9C 13
        mov     dx, word ptr [0x139e]           ; 8B 16 9E 13
        add     ax, 0x20                        ; 05 20 00
        adc     dx, 0                           ; 83 D2 00
        mov     word ptr [0x1be6], ax           ; A3 E6 1B
        mov     word ptr [0x1be8], dx           ; 89 16 E8 1B
        mov     word ptr [0x1be2], ax           ; A3 E2 1B
        mov     word ptr [0x1be4], dx           ; 89 16 E4 1B
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     dx, word ptr [bp - 0x18]        ; 8B 56 E8
        mov     word ptr [bp - 0x23c], ax       ; 89 86 C4 FD
        mov     word ptr [bp - 0x23a], dx       ; 89 96 C6 FD
        jmp     L_07C6                          ; E9 29 04
L_039D:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0x240]           ; FF B6 C0 FD
        push    word ptr [bp - 0x242]           ; FF B6 BE FD
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A 38 04 00 00 [FIXUP]
        mov     bx, word ptr [0x1022]           ; 8B 1E 22 10
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x246], al       ; 88 86 BA FD
        mov     word ptr [bp - 0x244], 1        ; C7 86 BC FD 01 00
        cmp     al, 0xd                         ; 3C 0D
        je      L_03CC                          ; 74 03
        jmp     L_049C                          ; E9 D0 00
L_03CC:
        cmp     byte ptr [bx + 1], 0xa          ; 80 7F 01 0A
        je      L_03D5                          ; 74 03
        jmp     L_049C                          ; E9 C7 00
L_03D5:
        inc     word ptr [bp - 0x244]           ; FF 86 BC FD
        mov     byte ptr [bp - 0x246], 0xa      ; C6 86 BA FD 0A
        jmp     L_049C                          ; E9 BB 00
L_03E1:
        mov     ax, word ptr [bp - 0x23c]       ; 8B 86 C4 FD
        mov     dx, word ptr [bp - 0x23a]       ; 8B 96 C6 FD
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        mov     word ptr [bp - 0x242], ax       ; 89 86 BE FD
        mov     word ptr [bp - 0x240], dx       ; 89 96 C0 FD
        cmp     word ptr [bp - 0x22], 0         ; 83 7E DE 00
        je      L_0409                          ; 74 0C
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        cdq                                     ; 99
        sub     word ptr [bp - 0x242], ax       ; 29 86 BE FD
        sbb     word ptr [bp - 0x240], dx       ; 19 96 C0 FD
L_0409:
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        cmp     word ptr [bp - 0x240], dx       ; 39 96 C0 FD
        jg      L_0424                          ; 7F 0E
        jge     L_041B                          ; 7D 03
        jmp     L_0321                          ; E9 06 FF
L_041B:
        cmp     word ptr [bp - 0x242], ax       ; 39 86 BE FD
        jae     L_0424                          ; 73 03
        jmp     L_0321                          ; E9 FD FE
L_0424:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0x240]           ; FF B6 C0 FD
        push    word ptr [bp - 0x242]           ; FF B6 BE FD
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A 81 04 00 00 [FIXUP]
        mov     bx, word ptr [0x1022]           ; 8B 1E 22 10
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x246], al       ; 88 86 BA FD
        mov     word ptr [bp - 0x244], 1        ; C7 86 BC FD 01 00
        cmp     al, 0xa                         ; 3C 0A
        jne     L_049C                          ; 75 4C
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        cmp     word ptr [bp - 0x240], dx       ; 39 96 C0 FD
        jl      L_049C                          ; 7C 3F
        jg      L_0465                          ; 7F 06
        cmp     word ptr [bp - 0x242], ax       ; 39 86 BE FD
        jbe     L_049C                          ; 76 37
L_0465:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     ax, word ptr [bp - 0x242]       ; 8B 86 BE FD
        mov     dx, word ptr [bp - 0x240]       ; 8B 96 C0 FD
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A CB 04 00 00 [FIXUP]
        mov     bx, word ptr [0x1022]           ; 8B 1E 22 10
        cmp     byte ptr [bx], 0xd              ; 80 3F 0D
        jne     L_049C                          ; 75 0E
        inc     word ptr [bp - 0x244]           ; FF 86 BC FD
        sub     word ptr [bp - 0x242], 1        ; 83 AE BE FD 01
        sbb     word ptr [bp - 0x240], 0        ; 83 9E C0 FD 00
L_049C:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0x240]           ; FF B6 C0 FD
        push    word ptr [bp - 0x242]           ; FF B6 BE FD
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        test    byte ptr [0xb82], 0x10          ; F6 06 82 0B 10
        je      L_04B7                          ; 74 03
        jmp     L_0321                          ; E9 6A FE
L_04B7:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0x240]           ; FF B6 C0 FD
        push    word ptr [bp - 0x242]           ; FF B6 BE FD
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A C5 00 00 00 [FIXUP]
        and     byte ptr [0x1017], 0xbf         ; 80 26 17 10 BF
        mov     ax, 0x1014                      ; B8 14 10
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B54                          ; E8 77 06
        cmp     word ptr [bp - 0x22], 0         ; 83 7E DE 00
        je      L_050B                          ; 74 28
        mov     ax, word ptr [bp - 0x244]       ; 8B 86 BC FD
        cdq                                     ; 99
        cmp     dx, word ptr [bp - 0x18]        ; 3B 56 E8
        jg      L_0525                          ; 7F 38
        jl      L_04F4                          ; 7C 05
        cmp     ax, word ptr [bp - 0x1a]        ; 3B 46 E6
        ja      L_0525                          ; 77 31
L_04F4:
        mov     ax, word ptr [bp - 0x244]       ; 8B 86 BC FD
        add     word ptr [bp - 0x20], ax        ; 01 46 E0
        cmp     word ptr [bp + 6], 0x8008       ; 81 7E 06 08 80
        jne     L_0525                          ; 75 23
        cdq                                     ; 99
        sub     word ptr [bp - 0x1a], ax        ; 29 46 E6
        sbb     word ptr [bp - 0x18], dx        ; 19 56 E8
        jmp     L_0525                          ; EB 1A
L_050B:
        mov     ax, word ptr [bp - 0x242]       ; 8B 86 BE FD
        mov     dx, word ptr [bp - 0x240]       ; 8B 96 C0 FD
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
        mov     ax, word ptr [bp - 0x244]       ; 8B 86 BC FD
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 0x22], 1         ; C7 46 DE 01 00
L_0525:
        mov     word ptr [bp - 4], 2            ; C7 46 FC 02 00
        mov     ax, word ptr [bp - 0x242]       ; 8B 86 BE FD
        sub     ax, word ptr [si + 6]           ; 2B 44 06
        mov     word ptr [bp - 0x248], ax       ; 89 86 B8 FD
        or      ax, ax                          ; 0B C0
        jge     L_053C                          ; 7D 03
        jmp     L_073A                          ; E9 FE 01
L_053C:
        cmp     byte ptr [bp - 0x246], 0xa      ; 80 BE BA FD 0A
        jne     L_0546                          ; 75 03
        jmp     L_073F                          ; E9 F9 01
L_0546:
        cmp     byte ptr [bp - 0x246], 0xc      ; 80 BE BA FD 0C
        jne     L_0550                          ; 75 03
        jmp     L_073F                          ; E9 EF 01
L_0550:
        cmp     word ptr [0x2c4], -1            ; 83 3E C4 02 FF
        jne     L_0560                          ; 75 09
        test    byte ptr [si + 2], 1            ; F6 44 02 01
        jne     L_0560                          ; 75 03
        jmp     L_073F                          ; E9 DF 01
L_0560:
        cmp     word ptr [bp - 0x12], 2         ; 83 7E EE 02
        jl      L_0569                          ; 7C 03
        jmp     L_073F                          ; E9 D6 01
L_0569:
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        dec     word ptr [bx + 2]               ; FF 4F 02
        call    far _entry_288                  ; 9A 47 07 00 00 [FIXUP]
        mov     word ptr [bp - 0x24c], ax       ; 89 86 B4 FD
        cmp     word ptr [0x2c4], -1            ; 83 3E C4 02 FF
        jne     L_058B                          ; 75 0B
        lea     ax, [bp - 0x220]                ; 8D 86 E0 FD
        push    ax                              ; 50
        call    L_0EB9                          ; E8 31 09
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
L_058B:
        mov     bx, word ptr [0x10b4]           ; 8B 1E B4 10
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [0x1be0]           ; A1 E0 1B
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     si, ax                          ; 03 F0
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        inc     word ptr [bx + 2]               ; FF 47 02
        cmp     word ptr [0x2c2], 0             ; 83 3E C2 02 00
        jle     L_05C8                          ; 7E 20
        cmp     word ptr [bp + 6], 0x8008       ; 81 7E 06 08 80
        jne     L_05C8                          ; 75 19
        dec     word ptr [0x2c2]                ; FF 0E C2 02
        mov     al, byte ptr [bp - 0x246]       ; 8A 86 BA FD
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_290                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x238], ax       ; 89 86 C8 FD
        jmp     L_0630                          ; EB 68
L_05C8:
        mov     ax, word ptr [bp - 0x248]       ; 8B 86 B8 FD
        add     ax, word ptr [bp - 0x244]       ; 03 86 BC FD
        mov     word ptr [bp - 0x24e], ax       ; 89 86 B2 FD
        mov     di, word ptr [bp - 0x248]       ; 8B BE B8 FD
        shl     di, 1                           ; D1 E7
        add     di, bp                          ; 03 FD
        sub     di, 0x220                       ; 81 EF 20 02
        mov     ax, word ptr [di]               ; 8B 05
        mov     word ptr [bp - 0x238], ax       ; 89 86 C8 FD
        cmp     word ptr [0x2c4], 0             ; 83 3E C4 02 00
        jl      L_062A                          ; 7C 3D
        cmp     word ptr [bp - 0x248], 0        ; 83 BE B8 FD 00
        jl      L_062A                          ; 7C 36
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        cmp     word ptr [bp - 0x24e], ax       ; 39 86 B2 FD
        jg      L_062A                          ; 7F 2D
        mov     ax, word ptr [bp - 0x24e]       ; 8B 86 B2 FD
        shl     ax, 1                           ; D1 E0
        add     ax, bp                          ; 03 C5
        sub     ax, 0x220                       ; 2D 20 02
        push    ax                              ; 50
        push    di                              ; 57
        mov     ax, 0xff                        ; B8 FF 00
        sub     ax, word ptr [bp - 0x24e]       ; 2B 86 B2 FD
        push    ax                              ; 50
        call    far _entry_62                   ; 9A D7 00 00 00 [FIXUP]
        mov     ax, word ptr [0x2c4]            ; A1 C4 02
        cmp     word ptr [bp - 0x248], ax       ; 39 86 B8 FD
        jge     L_0630                          ; 7D 10
        mov     ax, word ptr [bp - 0x244]       ; 8B 86 BC FD
        sub     word ptr [0x2c4], ax            ; 29 06 C4 02
        jmp     L_0630                          ; EB 06
L_062A:
        mov     word ptr [0x2c4], 0xffff        ; C7 06 C4 02 FF FF
L_0630:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_063F                          ; 74 09
        mov     ax, word ptr [bp - 0x238]       ; 8B 86 C8 FD
        add     word ptr [bp - 0x1c], ax        ; 01 46 E4
        jmp     L_064B                          ; EB 0C
L_063F:
        mov     ax, word ptr [bp - 0x238]       ; 8B 86 C8 FD
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
L_064B:
        cmp     word ptr [bp - 0x24c], 0        ; 83 BE B4 FD 00
        je      L_0686                          ; 74 34
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        dec     word ptr [bx + 2]               ; FF 4F 02
        mov     word ptr [bp - 0xc], 1          ; C7 46 F4 01 00
        call    far _entry_286                  ; 9A 40 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jne     L_067F                          ; 75 14
L_066B:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jne     L_0674                          ; 75 03
        jmp     L_023F                          ; E9 CB FB
L_0674:
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        jmp     L_0244                          ; E9 C5 FB
L_067F:
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        inc     word ptr [bx + 2]               ; FF 47 02
L_0686:
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        cmp     word ptr [bp - 0x1c], 0         ; 83 7E E4 00
        jle     L_06CF                          ; 7E 3E
        call    far _entry_102                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0x8008       ; 81 7E 06 08 80
        jne     L_06B1                          ; 75 14
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        sub     word ptr [0x100e], ax           ; 29 06 0E 10
        mov     ax, word ptr [0x100e]           ; A1 0E 10
        mov     word ptr [0xc22], ax            ; A3 22 0C
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        sub     word ptr [bp - 0x236], ax       ; 29 86 CA FD
L_06B1:
        lea     ax, [bp - 0x236]                ; 8D 86 CA FD
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_261                  ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_289                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        sub     word ptr [bp - 0x1e], ax        ; 29 46 E2
L_06CF:
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        cdq                                     ; 99
        add     ax, word ptr [si + 6]           ; 03 44 06
        adc     dx, word ptr [si + 8]           ; 13 54 08
        cmp     dx, word ptr [0x13a8]           ; 3B 16 A8 13
        jl      L_06EC                          ; 7C 0D
        jg      L_06E7                          ; 7F 06
        cmp     ax, word ptr [0x13a6]           ; 3B 06 A6 13
        jb      L_06EC                          ; 72 05
L_06E7:
        mov     ax, 1                           ; B8 01 00
        jmp     L_06EE                          ; EB 02
L_06EC:
        sub     ax, ax                          ; 2B C0
L_06EE:
        mov     word ptr [bp - 0x24a], ax       ; 89 86 B6 FD
        cmp     word ptr [bp + 6], 0x802e       ; 81 7E 06 2E 80
        je      L_06FD                          ; 74 04
        or      ax, ax                          ; 0B C0
        jne     L_071C                          ; 75 1F
L_06FD:
        mov     ax, word ptr [bp - 0x248]       ; 8B 86 B8 FD
        add     ax, 4                           ; 05 04 00
        cmp     ax, word ptr [si + 4]           ; 3B 44 04
        jge     L_0721                          ; 7D 18
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        sub     ax, word ptr [0x100e]           ; 2B 06 0E 10
        mov     dx, word ptr [bp - 0x238]       ; 8B 96 C8 FD
        mov     cl, 3                           ; B1 03
        shl     dx, cl                          ; D3 E2
        cmp     ax, dx                          ; 3B C2
        jbe     L_0721                          ; 76 05
L_071C:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_0721:
        cmp     word ptr [bp - 0x24a], 0        ; 83 BE B6 FD 00
        je      L_073F                          ; 74 17
        mov     al, byte ptr [0x1081]           ; A0 81 10
        sub     ah, ah                          ; 2A E4
        dec     ax                              ; 48
        cmp     ax, word ptr [0x1be0]           ; 3B 06 E0 1B
        jbe     L_073F                          ; 76 0B
        test    byte ptr [si + 0x12], 1         ; F6 44 12 01
        jne     L_073F                          ; 75 05
L_073A:
        mov     word ptr [bp - 4], 3            ; C7 46 FC 03 00
L_073F:
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        dec     word ptr [bx + 2]               ; FF 4F 02
        call    far _entry_288                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0752                          ; 75 03
        jmp     L_032D                          ; E9 DB FB
L_0752:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_075B                          ; 74 03
        jmp     L_032D                          ; E9 D2 FB
L_075B:
        mov     word ptr [bp - 0xc], 1          ; C7 46 F4 01 00
        call    far _entry_286                  ; 9A 5F 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        je      L_0770                          ; 74 03
        jmp     L_032D                          ; E9 BD FB
L_0770:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jg      L_077B                          ; 7F 03
        jmp     L_066B                          ; E9 F0 FE
L_077B:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [0x2c4], 0xffff        ; C7 06 C4 02 FF FF
        jmp     L_066B                          ; E9 E1 FE
L_078A:
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        dec     word ptr [bx + 2]               ; FF 4F 02
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        push    ax                              ; 50
        lea     ax, [bp - 0x236]                ; 8D 86 CA FD
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0BDA                          ; E8 3A 04
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        inc     word ptr [bx + 2]               ; FF 47 02
        mov     word ptr [bp + 6], 0xa          ; C7 46 06 0A 00
L_07AC:
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        dec     word ptr [bx + 2]               ; FF 4F 02
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0xe]             ; FF 76 F2
        lea     ax, [bp - 0x236]                ; 8D 86 CA FD
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0BDA                          ; E8 17 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_07C6:
        mov     bx, word ptr [0x10b4]           ; 8B 1E B4 10
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [0x1be0]           ; A1 E0 1B
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     si, ax                          ; 03 F0
        and     byte ptr [si + 2], 0xfe         ; 80 64 02 FE
        or      byte ptr [0x107e], 1            ; 80 0E 7E 10 01
        mov     ax, word ptr [0x1be0]           ; A1 E0 1B
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        or      ax, ax                          ; 0B C0
        je      L_07EB                          ; 74 03
        jmp     L_087B                          ; E9 90 00
L_07EB:
        test    byte ptr [0x107e], 2            ; F6 06 7E 10 02
        jne     L_0815                          ; 75 23
        mov     al, byte ptr [0x1080]           ; A0 80 10
        sub     ah, ah                          ; 2A E4
        sub     dx, dx                          ; 2B D2
        add     ax, word ptr [0x1092]           ; 03 06 92 10
        adc     dx, word ptr [0x1094]           ; 13 16 94 10
        cmp     dx, word ptr [bp - 0x23a]       ; 3B 96 C6 FD
        jae     L_080A                          ; 73 03
        jmp     L_08AB                          ; E9 A1 00
L_080A:
        ja      L_0815                          ; 77 09
        cmp     ax, word ptr [bp - 0x23c]       ; 3B 86 C4 FD
        ja      L_0815                          ; 77 03
        jmp     L_08AB                          ; E9 96 00
L_0815:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_122                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x1098]               ; FF 36 98 10
        push    word ptr [0x1096]               ; FF 36 96 10
        push    word ptr [0x1094]               ; FF 36 94 10
        push    word ptr [0x1092]               ; FF 36 92 10
        call    far _entry_34                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x10b4]           ; 8B 1E B4 10
        mov     di, word ptr [bx]               ; 8B 3F
        mov     bx, word ptr [0x1be0]           ; 8B 1E E0 1B
        mov     cl, 4                           ; B1 04
        shl     bx, cl                          ; D3 E3
        mov     word ptr [bx + di + 6], ax      ; 89 41 06
        mov     word ptr [bx + di + 8], dx      ; 89 51 08
        mov     word ptr [bp - 4], 3            ; C7 46 FC 03 00
        jmp     L_08AB                          ; EB 5D
L_084E:
        mov     word ptr [bp + 6], 0xc          ; C7 46 06 0C 00
        test    byte ptr [0x107f], 1            ; F6 06 7F 10 01
        jne     L_0864                          ; 75 0A
        test    byte ptr [0x107f], 2            ; F6 06 7F 10 02
        jne     L_0864                          ; 75 03
        jmp     L_07AC                          ; E9 48 FF
L_0864:
        call    far _entry_174                  ; 9A 4C 00 00 00 [FIXUP]
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        dec     word ptr [bx + 2]               ; FF 4F 02
        jmp     L_066B                          ; E9 F8 FD
L_0873:
        mov     word ptr [bp + 6], 9            ; C7 46 06 09 00
        jmp     L_07AC                          ; E9 31 FF
L_087B:
        sub     si, 0x10                        ; 83 EE 10
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        cdq                                     ; 99
        add     ax, word ptr [si + 6]           ; 03 44 06
        adc     dx, word ptr [si + 8]           ; 13 54 08
        mov     cl, byte ptr [si]               ; 8A 0C
        sub     ch, ch                          ; 2A ED
        add     ax, cx                          ; 03 C1
        adc     dx, 0                           ; 83 D2 00
        cmp     dx, word ptr [bp - 0x23a]       ; 3B 96 C6 FD
        jb      L_08A8                          ; 72 11
        ja      L_089F                          ; 77 06
        cmp     ax, word ptr [bp - 0x23c]       ; 3B 86 C4 FD
        jbe     L_08A8                          ; 76 09
L_089F:
        and     byte ptr [si + 2], 0xfe         ; 80 64 02 FE
        dec     word ptr [bp - 0x16]            ; FF 4E EA
        jmp     L_08AB                          ; EB 03
L_08A8:
        add     si, 0x10                        ; 83 C6 10
L_08AB:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        or      ax, ax                          ; 0B C0
        jge     L_08B5                          ; 7D 03
        jmp     L_066B                          ; E9 B6 FD
L_08B5:
        cmp     ax, 1                           ; 3D 01 00
        jg      L_08BD                          ; 7F 03
        jmp     L_066B                          ; E9 AE FD
L_08BD:
        cmp     ax, 2                           ; 3D 02 00
        jge     L_08C5                          ; 7D 03
        jmp     L_066B                          ; E9 A6 FD
L_08C5:
        cmp     ax, 3                           ; 3D 03 00
        jle     L_08D2                          ; 7E 08
        cmp     ax, 4                           ; 3D 04 00
        je      L_0929                          ; 74 5A
        jmp     L_066B                          ; E9 99 FD
L_08D2:
        call    far _entry_102                  ; 9A 2A 09 00 00 [FIXUP]
        push    word ptr [bp - 0x16]            ; FF 76 EA
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_110F                          ; E8 30 08
        or      ax, ax                          ; 0B C0
        je      L_093A                          ; 74 57
        cmp     word ptr [bp - 4], 3            ; 83 7E FC 03
        je      L_091D                          ; 74 34
        call    far _entry_288                  ; 9A 71 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_091D                          ; 74 2B
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        mov     bx, word ptr [0x10b4]           ; 8B 1E B4 10
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 0x250], ax       ; 89 86 B0 FD
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        add     ax, word ptr [bx + 6]           ; 03 47 06
        adc     dx, word ptr [bx + 8]           ; 13 57 08
        cmp     dx, word ptr [0x1be4]           ; 3B 16 E4 1B
        jg      L_093A                          ; 7F 25
        jl      L_091D                          ; 7C 06
        cmp     ax, word ptr [0x1be2]           ; 3B 06 E2 1B
        ja      L_093A                          ; 77 1D
L_091D:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        inc     ax                              ; 40
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_110F                          ; E8 E8 07
        jmp     L_093A                          ; EB 11
L_0929:
        call    far _entry_102                  ; 9A AE 09 00 00 [FIXUP]
        push    word ptr [0x322]                ; FF 36 22 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_152                  ; 9A E8 00 00 00 [FIXUP]
L_093A:
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        push    word ptr [0x1be8]               ; FF 36 E8 1B
        push    word ptr [0x1be6]               ; FF 36 E6 1B
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_125                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_066B                          ; E9 15 FD
L_0956:
        mov     ax, word ptr [0x13a0]           ; A1 A0 13
        mov     dx, word ptr [0x13a2]           ; 8B 16 A2 13
        cmp     word ptr [0x10f2], dx           ; 39 16 F2 10
        jne     L_0987                          ; 75 24
        cmp     word ptr [0x10f0], ax           ; 39 06 F0 10
        jne     L_0987                          ; 75 1E
L_0969:
        call    far _entry_39                   ; 9A 4A 01 00 00 [FIXUP]
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_0987                          ; 75 13
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     di, ax                          ; 8B F8
        and     byte ptr [bx + di + 6], 0xfd    ; 80 61 06 FD
L_0987:
        mov     word ptr [0xcc4], 0             ; C7 06 C4 0C 00 00
        cmp     word ptr [0x7ae], 0             ; 83 3E AE 07 00
        je      L_09AD                          ; 74 19
        push    word ptr [0x10f4]               ; FF 36 F4 10
        mov     ax, 0x1e36                      ; B8 36 1E
        push    ax                              ; 50
        call    far USER.GETCARETBLINKTIME      ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SETTIMER               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_09B2                          ; EB 05
L_09AD:
        call    far _entry_102                  ; 9A 92 06 00 00 [FIXUP]
L_09B2:
        mov     ax, 0x102c                      ; B8 2C 10
        push    ax                              ; 50
        mov     ax, 0xa5e                       ; B8 5E 0A
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 13 06 00 00 [FIXUP]
        mov     word ptr [0x7a], 1              ; C7 06 7A 00 01 00
L_09C9:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_09D6 -- offset 0x09D6 -- 74 instr
; Funcion mediana (74 instr, 2 calls).
; tags: calls_user, far, medium
; callers: sub_0BDA
; calls (intra): sub_0B54
; calls (inter): USER.SETCURSOR
;----------------------------------------------------------------------
L_09D6:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [0x139c], ax           ; A3 9C 13
        mov     word ptr [0x139e], dx           ; 89 16 9E 13
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_32                   ; 9A A9 04 00 00 [FIXUP]
        mov     ax, word ptr [0x1c00]           ; A1 00 1C
        mov     dx, word ptr [0x1c02]           ; 8B 16 02 1C
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     ax, word ptr [0xb82]            ; A1 82 0B
        mov     cl, 4                           ; B1 04
        shr     ax, cl                          ; D3 E8
        and     ax, 1                           ; 25 01 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        test    word ptr [0xa5e], 0x200         ; F7 06 5E 0A 00 02
        jne     L_0A29                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0A2B                          ; EB 02
L_0A29:
        sub     ax, ax                          ; 2B C0
L_0A2B:
        mov     word ptr [0x1296], ax           ; A3 96 12
        and     byte ptr [0xa61], 0xbf          ; 80 26 61 0A BF
        mov     ax, 0xa5e                       ; B8 5E 0A
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B54                          ; E8 18 01
        mov     word ptr [0xe88], 0             ; C7 06 88 0E 00 00
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x139e]               ; FF 36 9E 13
        push    word ptr [0x139c]               ; FF 36 9C 13
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x7ffe                      ; B8 FE 7F
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_104                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x139c]           ; A1 9C 13
        mov     dx, word ptr [0x139e]           ; 8B 16 9E 13
        add     ax, 0x20                        ; 05 20 00
        adc     dx, 0                           ; 83 D2 00
        mov     word ptr [0xc1c], ax            ; A3 1C 0C
        mov     word ptr [0xc1e], dx            ; 89 16 1E 0C
        mov     word ptr [0x2c4], 0xffff        ; C7 06 C4 02 FF FF
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0A93 -- offset 0x0A93 -- 67 instr
; Funcion mediana (67 instr, 0 calls).
; tags: medium
; callers: sub_0BDA
;----------------------------------------------------------------------
L_0A93:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     ax, 0x20                        ; B8 20 00
        sub     ax, word ptr [0xe88]            ; 2B 06 88 0E
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 0xe9c                       ; B8 9C 0E
        push    ax                              ; 50
        push    word ptr [0xe88]                ; FF 36 88 0E
        call    far _entry_43                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x139e]               ; FF 36 9E 13
        push    word ptr [0x139c]               ; FF 36 9C 13
        mov     ax, 0x20                        ; B8 20 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, word ptr [0xe88]            ; A1 88 0E
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_291                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x20                        ; B8 20 00
        sub     ax, word ptr [0xe88]            ; 2B 06 88 0E
        cdq                                     ; 99
        sub     word ptr [0xc1c], ax            ; 29 06 1C 0C
        sbb     word ptr [0xc1e], dx            ; 19 16 1E 0C
        mov     word ptr [0x30c], 0             ; C7 06 0C 03 00 00
        mov     word ptr [0x13ae], 0            ; C7 06 AE 13 00 00
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     ax, word ptr [0xe88]            ; A1 88 0E
        cdq                                     ; 99
        add     ax, word ptr [0x139c]           ; 03 06 9C 13
        adc     dx, word ptr [0x139e]           ; 13 16 9E 13
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_31                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x13ae], 0            ; 83 3E AE 13 00
        je      L_0B2A                          ; 74 0A
        mov     bx, word ptr [0x13ae]           ; 8B 1E AE 13
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     word ptr [bx + 4], ax           ; 29 47 04
L_0B2A:
        mov     word ptr [0x30c], 1             ; C7 06 0C 03 01 00
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        mov     word ptr [0x2c6], ax            ; A3 C6 02
        mov     word ptr [0x2c8], dx            ; 89 16 C8 02
        mov     word ptr [0x31a], 0             ; C7 06 1A 03 00 00
        cmp     word ptr [0xf28], 0             ; 83 3E 28 0F 00
        jne     L_0B50                          ; 75 05
        call    far _entry_289                  ; 9A 4A 0D 00 00 [FIXUP]
L_0B50:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0B54 -- offset 0x0B54 -- 56 instr
; Funcion mediana (56 instr, 0 calls).
; tags: far, medium
; callers: sub_09D6
;----------------------------------------------------------------------
L_0B54:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     ax, 0x102c                      ; B8 2C 10
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far _entry_46                   ; 9A 63 0C 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0BCF                          ; 74 5A
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [0x2be]            ; A1 BE 02
        mov     dx, word ptr [0x2c0]            ; 8B 16 C0 02
        cmp     word ptr [bp - 4], dx           ; 39 56 FC
        jne     L_0B97                          ; 75 05
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        je      L_0BBF                          ; 74 28
L_0B97:
        mov     ax, 0x12b8                      ; B8 B8 12
        push    ax                              ; 50
        mov     ax, 0x102c                      ; B8 2C 10
        push    ax                              ; 50
        mov     ax, 0xe7e                       ; B8 7E 0E
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_186                  ; 9A 90 0C 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        mov     word ptr [0x2be], ax            ; A3 BE 02
        mov     word ptr [0x2c0], dx            ; 89 16 C0 02
L_0BBF:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x102c                      ; B8 2C 10
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A A1 0C 00 00 [FIXUP]
L_0BCF:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0BDA -- offset 0x0BDA -- 214 instr
; Dispatcher: tabla de decisiones cmp+jcc (214 instr).
; tags: calls_gdi, dispatcher, far
; calls (intra): sub_09D6, sub_0A93, sub_0E26, sub_1204
; calls (inter): GDI.TEXTOUT
;----------------------------------------------------------------------
L_0BDA:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x6e                        ; 83 EC 6E
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [0xe88], 0x20          ; 83 3E 88 0E 20
        jl      L_0BF3                          ; 7C 03
        call    L_0E26                          ; E8 33 02
L_0BF3:
        mov     bx, word ptr [0xe88]            ; 8B 1E 88 0E
        inc     word ptr [0xe88]                ; FF 06 88 0E
        mov     al, byte ptr [bp + 0xa]         ; 8A 46 0A
        mov     byte ptr [bx + 0xe9c], al       ; 88 87 9C 0E
        cmp     byte ptr [bp + 0xa], 0xa        ; 80 7E 0A 0A
        je      L_0C11                          ; 74 09
        cmp     byte ptr [bp + 0xa], 0xc        ; 80 7E 0A 0C
        je      L_0C11                          ; 74 03
        jmp     L_0CBB                          ; E9 AA 00
L_0C11:
        mov     ax, 0xffff                      ; B8 FF FF
        mov     word ptr [0x33e], ax            ; A3 3E 03
        mov     word ptr [0x2d0], ax            ; A3 D0 02
        dec     word ptr [0xe88]                ; FF 0E 88 0E
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     ax, word ptr [0x139c]           ; A1 9C 13
        mov     dx, word ptr [0x139e]           ; 8B 16 9E 13
        add     ax, 0x20                        ; 05 20 00
        adc     dx, 0                           ; 83 D2 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_32                   ; 9A FE 09 00 00 [FIXUP]
        lea     di, [bp - 0x6e]                 ; 8D 7E 92
        mov     si, 0xb72                       ; BE 72 0B
        push    ss                              ; 16
        pop     es                              ; 07
        mov     cx, 0x33                        ; B9 33 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        inc     word ptr [0xe88]                ; FF 06 88 0E
        call    L_0A93                          ; E8 49 FE
        mov     ax, 0x121c                      ; B8 1C 12
        push    ax                              ; 50
        lea     ax, [bp - 0x6e]                 ; 8D 46 92
        push    ax                              ; 50
        push    word ptr [0x13cc]               ; FF 36 CC 13
        lea     ax, [bp - 0x6e]                 ; 8D 46 92
        push    ax                              ; 50
        mov     ax, 0x1142                      ; B8 42 11
        push    ax                              ; 50
        mov     ax, 0x66                        ; B8 66 00
        push    ax                              ; 50
        call    far _entry_46                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0C77                          ; 75 0C
        cmp     word ptr [0x121c], 0            ; 83 3E 1C 12 00
        je      L_0C77                          ; 74 05
        mov     ax, 0xff9a                      ; B8 9A FF
        jmp     L_0C7A                          ; EB 03
L_0C77:
        mov     ax, 0x66                        ; B8 66 00
L_0C7A:
        push    ax                              ; 50
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [0x2ba], ax            ; A3 BA 02
        mov     word ptr [0x2bc], dx            ; 89 16 BC 02
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_186                  ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x6e]                 ; 8D 46 92
        push    ax                              ; 50
        mov     ax, 0x1142                      ; B8 42 11
        push    ax                              ; 50
        mov     ax, 0x33                        ; B8 33 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A BF 09 00 00 [FIXUP]
        push    word ptr [0x12b4]               ; FF 36 B4 12
        call    far _entry_262                  ; 9A FF FF 00 00 [FIXUP]
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09D6                          ; E8 23 FD
        mov     word ptr [bp - 4], 4            ; C7 46 FC 04 00
        jmp     L_0E16                          ; E9 5B 01
L_0CBB:
        cmp     word ptr [0x1296], 0            ; 83 3E 96 12 00
        jne     L_0CC5                          ; 75 03
        jmp     L_0DBC                          ; E9 F7 00
L_0CC5:
        cmp     byte ptr [bp + 0xa], 0xb        ; 80 7E 0A 0B
        jne     L_0CCE                          ; 75 03
        jmp     L_0DBC                          ; E9 EE 00
L_0CCE:
        cmp     byte ptr [bp + 0xa], 9          ; 80 7E 0A 09
        jne     L_0CD7                          ; 75 03
        jmp     L_0DBC                          ; E9 E5 00
L_0CD7:
        cmp     byte ptr [bp + 0xa], 0x1f       ; 80 7E 0A 1F
        jne     L_0CE0                          ; 75 03
        jmp     L_0DBC                          ; E9 DC 00
L_0CE0:
        cmp     byte ptr [bp + 0xa], 0xd        ; 80 7E 0A 0D
        jne     L_0CE9                          ; 75 03
        jmp     L_0DBC                          ; E9 D3 00
L_0CE9:
        cmp     word ptr [0x1104], 0            ; 83 3E 04 11 00
        je      L_0CF3                          ; 74 03
        jmp     L_0DBC                          ; E9 C9 00
L_0CF3:
        call    far _entry_102                  ; 9A D3 08 00 00 [FIXUP]
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_290                  ; 9A BE 05 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jle     L_0D19                          ; 7E 0C
        push    word ptr [bp + 6]               ; FF 76 06
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_261                  ; 9A C0 06 00 00 [FIXUP]
L_0D19:
        push    word ptr [0x10b0]               ; FF 36 B0 10
        mov     ax, word ptr [0x100e]           ; A1 0E 10
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [0x1102]           ; A1 02 11
        sub     ax, word ptr [0xec6]            ; 2B 06 C6 0E
        push    ax                              ; 50
        lea     ax, [bp + 8]                    ; 8D 46 08
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A FF FF 00 00 [FIXUP]
        inc     word ptr [0x2c2]                ; FF 06 C2 02
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     word ptr [0x100e], ax           ; 01 06 0E 10
        mov     ax, word ptr [0x100e]           ; A1 0E 10
        mov     word ptr [0xc22], ax            ; A3 22 0C
        call    far _entry_289                  ; 9A C5 06 00 00 [FIXUP]
        mov     ax, word ptr [0x1288]           ; A1 88 12
        cmp     word ptr [0x100e], ax           ; 39 06 0E 10
        jl      L_0D5F                          ; 7C 08
        mov     word ptr [bp - 4], 3            ; C7 46 FC 03 00
        jmp     L_0E16                          ; E9 B7 00
L_0D5F:
        call    far _entry_288                  ; 9A A4 0D 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0DB5                          ; 75 4D
        mov     ax, word ptr [0x1be0]           ; A1 E0 1B
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     cl, byte ptr [0x1081]           ; 8A 0E 81 10
        sub     ch, ch                          ; 2A ED
        dec     cx                              ; 49
        cmp     ax, cx                          ; 3B C1
        jb      L_0D7C                          ; 72 03
        jmp     L_0E16                          ; E9 9A 00
L_0D7C:
        mov     word ptr [0x33e], 0xffff        ; C7 06 3E 03 FF FF
        call    L_1204                          ; E8 7F 04
        mov     bx, word ptr [0x10b4]           ; 8B 1E B4 10
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        mov     cl, 4                           ; B1 04
        shl     si, cl                          ; D3 E6
        mov     ax, word ptr [0x330]            ; A1 30 03
        mov     dx, word ptr [0x332]            ; 8B 16 32 03
        cmp     word ptr [bx + si + 0x18], dx   ; 39 50 18
        jne     L_0DA3                          ; 75 05
        cmp     word ptr [bx + si + 0x16], ax   ; 39 40 16
        je      L_0DB1                          ; 74 0E
L_0DA3:
        call    far _entry_288                  ; 9A 03 0E 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0E10                          ; 75 64
        mov     ax, 2                           ; B8 02 00
        jmp     L_0E13                          ; EB 62
L_0DB1:
        sub     ax, ax                          ; 2B C0
        jmp     L_0E13                          ; EB 5E
L_0DB5:
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        jmp     L_0E16                          ; EB 5A
L_0DBC:
        cmp     word ptr [0x1296], 0            ; 83 3E 96 12 00
        je      L_0DCF                          ; 74 0C
        cmp     word ptr [0x1104], 0            ; 83 3E 04 11 00
        je      L_0E0B                          ; 74 41
        mov     ax, 4                           ; B8 04 00
        jmp     L_0E13                          ; EB 44
L_0DCF:
        mov     word ptr [0x33e], 0xffff        ; C7 06 3E 03 FF FF
        call    L_1204                          ; E8 2C 04
        mov     ax, word ptr [0x32a]            ; A1 2A 03
        mov     dx, word ptr [0x32c]            ; 8B 16 2C 03
        cmp     word ptr [0x1be4], dx           ; 39 16 E4 1B
        jl      L_0E0B                          ; 7C 26
        jg      L_0DED                          ; 7F 06
        cmp     word ptr [0x1be2], ax           ; 39 06 E2 1B
        jb      L_0E0B                          ; 72 1E
L_0DED:
        mov     ax, word ptr [0x330]            ; A1 30 03
        mov     dx, word ptr [0x332]            ; 8B 16 32 03
        cmp     word ptr [0x1be4], dx           ; 39 16 E4 1B
        jg      L_0E0B                          ; 7F 11
        jl      L_0E02                          ; 7C 06
        cmp     word ptr [0x1be2], ax           ; 39 06 E2 1B
        jae     L_0E0B                          ; 73 09
L_0E02:
        call    far _entry_288                  ; 9A EA 08 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0E10                          ; 75 05
L_0E0B:
        mov     ax, 3                           ; B8 03 00
        jmp     L_0E13                          ; EB 03
L_0E10:
        mov     ax, 1                           ; B8 01 00
L_0E13:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_0E16:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
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
; sub_0E26 -- offset 0x0E26 -- 50 instr
; Funcion mediana (50 instr, 0 calls).
; tags: medium
; callers: sub_0BDA
;----------------------------------------------------------------------
L_0E26:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, 0xe9c                       ; B8 9C 0E
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far _entry_43                   ; 9A AC 0A 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x139e]               ; FF 36 9E 13
        push    word ptr [0x139c]               ; FF 36 9C 13
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    dx                              ; 52
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x20                        ; B8 20 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_291                  ; 9A D8 0A 00 00 [FIXUP]
        add     word ptr [0xc1c], 0x20          ; 83 06 1C 0C 20
        adc     word ptr [0xc1e], 0             ; 83 16 1E 0C 00
        mov     word ptr [0x30c], 0             ; C7 06 0C 03 00 00
        mov     word ptr [0x13ae], 0            ; C7 06 AE 13 00 00
        push    word ptr [0x12b4]               ; FF 36 B4 12
        add     word ptr [0x139c], 0x20         ; 83 06 9C 13 20
        adc     word ptr [0x139e], 0            ; 83 16 9E 13 00
        push    word ptr [0x139e]               ; FF 36 9E 13
        push    word ptr [0x139c]               ; FF 36 9C 13
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_31                   ; 9A 15 0B 00 00 [FIXUP]
        cmp     word ptr [0x13ae], 0            ; 83 3E AE 13 00
        je      L_0EA9                          ; 74 08
        mov     bx, word ptr [0x13ae]           ; 8B 1E AE 13
        add     word ptr [bx + 4], 0x20         ; 83 47 04 20
L_0EA9:
        mov     word ptr [0x30c], 1             ; C7 06 0C 03 01 00
        mov     word ptr [0xe88], 0             ; C7 06 88 0E 00 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0EB9 -- offset 0x0EB9 -- 25 instr
; Funcion sin clasificar definitiva (25 instr).
; tags: small
; calls (intra): sub_1204
;----------------------------------------------------------------------
L_0EB9:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     word ptr [0x33e], 0xffff        ; C7 06 3E 03 FF FF
        call    L_1204                          ; E8 3C 03
        mov     ax, 0x35a                       ; B8 5A 03
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xff                        ; B8 FF 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A CB 0B 00 00 [FIXUP]
        mov     ax, word ptr [0x342]            ; A1 42 03
        add     ax, word ptr [0x1112]           ; 03 06 12 11
        push    ax                              ; 50
        push    word ptr [0x1084]               ; FF 36 84 10
        call    far _entry_117                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0x139c]           ; A1 9C 13
        sub     ax, word ptr [0x32a]            ; 2B 06 2A 03
        add     ax, word ptr [0xe88]            ; 03 06 88 0E
        mov     word ptr [0x2c4], ax            ; A3 C4 02
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0F03 -- offset 0x0F03 -- 195 instr
; Dispatcher: tabla de decisiones cmp+jcc (195 instr).
; tags: dispatcher
;----------------------------------------------------------------------
L_0F03:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x18                        ; 83 EC 18
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [0xe88]            ; 2B 06 88 0E
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cdq                                     ; 99
        add     ax, word ptr [bp + 6]           ; 03 46 06
        adc     dx, word ptr [bp + 8]           ; 13 56 08
        cmp     dx, word ptr [0x139e]           ; 3B 16 9E 13
        jne     L_0F95                          ; 75 6E
        cmp     ax, word ptr [0x139c]           ; 3B 06 9C 13
        jne     L_0F95                          ; 75 68
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jg      L_0F3D                          ; 7F 0A
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     word ptr [0xe88], ax            ; 29 06 88 0E
        jmp     L_1107                          ; E9 CA 01
L_0F3D:
        mov     word ptr [0xe88], 0             ; C7 06 88 0E 00 00
        mov     ax, word ptr [0x13a0]           ; A1 A0 13
        mov     dx, word ptr [0x13a2]           ; 8B 16 A2 13
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jg      L_0F87                          ; 7F 38
        jl      L_0F56                          ; 7C 05
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jae     L_0F87                          ; 73 31
L_0F56:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x13a0]           ; A1 A0 13
        sub     ax, word ptr [bp + 6]           ; 2B 46 06
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [0x13a0], ax           ; A3 A0 13
        mov     word ptr [0x13a2], dx           ; 89 16 A2 13
        mov     word ptr [0xcb0], ax            ; A3 B0 0C
        mov     word ptr [0xcb2], dx            ; 89 16 B2 0C
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cdq                                     ; 99
        sub     word ptr [0xc1c], ax            ; 29 06 1C 0C
        sbb     word ptr [0xc1e], dx            ; 19 16 1E 0C
L_0F87:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cdq                                     ; 99
        sub     word ptr [0x139c], ax           ; 29 06 9C 13
        sbb     word ptr [0x139e], dx           ; 19 16 9E 13
        jmp     L_0FDD                          ; EB 48
L_0F95:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        add     ax, word ptr [bp + 6]           ; 03 46 06
        adc     dx, word ptr [bp + 8]           ; 13 56 08
        sub     ax, word ptr [0xc1c]            ; 2B 06 1C 0C
        sbb     dx, word ptr [0xc1e]            ; 1B 16 1E 0C
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        or      dx, dx                          ; 0B D2
        jl      L_0FD7                          ; 7C 26
        jg      L_0FB7                          ; 7F 04
        or      ax, ax                          ; 0B C0
        jbe     L_0FD7                          ; 76 20
L_0FB7:
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        call    far _entry_89                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        add     word ptr [0x10f0], ax           ; 01 06 F0 10
        adc     word ptr [0x10f2], dx           ; 11 16 F2 10
L_0FD7:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_0FDD:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jle     L_0FF4                          ; 7E 0F
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        cdq                                     ; 99
        sub     word ptr [0xc1c], ax            ; 29 06 1C 0C
        sbb     word ptr [0xc1e], dx            ; 19 16 1E 0C
L_0FF4:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jg      L_0FFD                          ; 7F 03
        jmp     L_10E8                          ; E9 EB 00
L_0FFD:
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     bx, ax                          ; 8B D8
        mov     di, word ptr [0xf92]            ; 8B 3E 92 0F
        mov     di, word ptr [di]               ; 8B 3D
        mov     ax, word ptr [bx + di]          ; 8B 01
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     bx, ax                          ; 8B D8
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_211                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp - 0x18]            ; F7 6E E8
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        add     si, word ptr [bx]               ; 03 37
        add     si, 4                           ; 83 C6 04
        mov     word ptr [bp - 0x16], si        ; 89 76 EA
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        shr     ax, 1                           ; D1 E8
        and     ah, 0x7f                        ; 80 E4 7F
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     dx, word ptr [si + 8]           ; 8B 54 08
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        cmp     word ptr [si + 0xa], 0          ; 83 7C 0A 00
        jne     L_109E                          ; 75 4B
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cdq                                     ; 99
        mov     cx, word ptr [si + 0xc]         ; 8B 4C 0C
        mov     bx, word ptr [si + 0xe]         ; 8B 5C 0E
        sub     cx, word ptr [bp + 6]           ; 2B 4E 06
        sbb     bx, word ptr [bp + 8]           ; 1B 5E 08
        cmp     bx, dx                          ; 3B DA
        jl      L_109E                          ; 7C 37
        jg      L_106D                          ; 7F 04
        cmp     cx, ax                          ; 3B C8
        jb      L_109E                          ; 72 31
L_106D:
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        add     ax, word ptr [bp + 6]           ; 03 46 06
        adc     dx, word ptr [bp + 8]           ; 13 56 08
        sub     ax, word ptr [si]               ; 2B 04
        sbb     dx, word ptr [si + 2]           ; 1B 54 02
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_104                  ; 9A 03 11 00 00 [FIXUP]
        jmp     L_10C1                          ; EB 23
L_109E:
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_238                  ; 9A FF FF 00 00 [FIXUP]
L_10C1:
        mov     ax, word ptr [0xcac]            ; A1 AC 0C
        cmp     ax, 2                           ; 3D 02 00
        je      L_10DC                          ; 74 13
        cmp     ax, 3                           ; 3D 03 00
        jne     L_10E8                          ; 75 1A
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cdq                                     ; 99
        add     word ptr [0xcb4], ax            ; 01 06 B4 0C
        adc     word ptr [0xcb6], dx            ; 11 16 B6 0C
        jmp     L_10E8                          ; EB 0C
L_10DC:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cdq                                     ; 99
        add     word ptr [0xcbe], ax            ; 01 06 BE 0C
        adc     word ptr [0xcc0], dx            ; 11 16 C0 0C
L_10E8:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_104                  ; 9A 61 0A 00 00 [FIXUP]
L_1107:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_110F -- offset 0x110F -- 93 instr
; Dispatcher: tabla de decisiones cmp+jcc (93 instr).
; tags: calls_user, dispatcher, far
; calls (inter): USER.SETRECT, USER.VALIDATERECT
;----------------------------------------------------------------------
L_110F:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xe                         ; 83 EC 0E
        push    si                              ; 56
        mov     bx, word ptr [0x10b4]           ; 8B 1E B4 10
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     si, ax                          ; 03 F0
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        mov     word ptr [0x33e], 0xffff        ; C7 06 3E 03 FF FF
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [si + 8]               ; FF 74 08
        push    word ptr [si + 6]               ; FF 74 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x109c]               ; FF 36 9C 10
        push    word ptr [0x109a]               ; FF 36 9A 10
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far _entry_96                   ; 9A FF FF 00 00 [FIXUP]
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     cl, 4                           ; B1 04
        shl     si, cl                          ; D3 E6
        add     si, 0x10                        ; 83 C6 10
        mov     bx, word ptr [0x10b4]           ; 8B 1E B4 10
        add     si, word ptr [bx]               ; 03 37
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        inc     ax                              ; 40
        mov     cl, byte ptr [0x1081]           ; 8A 0E 81 10
        sub     ch, ch                          ; 2A ED
        cmp     ax, cx                          ; 3B C1
        jae     L_11B6                          ; 73 43
        test    byte ptr [si + 2], 1            ; F6 44 02 01
        je      L_1195                          ; 74 1C
        mov     ax, word ptr [0x330]            ; A1 30 03
        mov     dx, word ptr [0x332]            ; 8B 16 32 03
        cmp     word ptr [si + 8], dx           ; 39 54 08
        jne     L_1195                          ; 75 10
        cmp     word ptr [si + 6], ax           ; 39 44 06
        jne     L_1195                          ; 75 0B
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        sub     ax, word ptr [si + 0xc]         ; 2B 44 0C
        cmp     ax, word ptr [si - 2]           ; 3B 44 FE
        je      L_11B6                          ; 74 21
L_1195:
        and     byte ptr [si + 2], 0xfe         ; 80 64 02 FE
        mov     ax, word ptr [0x330]            ; A1 30 03
        mov     dx, word ptr [0x332]            ; 8B 16 32 03
        mov     word ptr [si + 6], ax           ; 89 44 06
        mov     word ptr [si + 8], dx           ; 89 54 08
        mov     ax, word ptr [si - 2]           ; 8B 44 FE
        add     ax, word ptr [si + 0xc]         ; 03 44 0C
        mov     word ptr [si + 0xe], ax         ; 89 44 0E
        mov     word ptr [bp - 0xe], 1          ; C7 46 F2 01 00
        jmp     L_11E6                          ; EB 30
L_11B6:
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x1084]               ; FF 36 84 10
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        sub     ax, word ptr [si + 0xc]         ; 2B 44 0C
        push    ax                              ; 50
        push    word ptr [si + 0xe]             ; FF 74 0E
        call    far USER.SETRECT                ; 9A 4F 02 00 00 [FIXUP]
        push    word ptr [0x10aa]               ; FF 36 AA 10
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.VALIDATERECT           ; 9A FF FF 00 00 [FIXUP]
        sub     si, 0x10                        ; 83 EE 10
        or      byte ptr [si + 2], 1            ; 80 4C 02 01
L_11E6:
        push    word ptr [0x322]                ; FF 36 22 03
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_292                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1204 -- offset 0x1204 -- 28 instr
; Funcion sin clasificar definitiva (28 instr).
; tags: small
; callers: sub_0BDA, sub_0EB9
;----------------------------------------------------------------------
L_1204:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     bx, word ptr [0x10b4]           ; 8B 1E B4 10
        mov     si, word ptr [bx]               ; 8B 37
        mov     bx, word ptr [0x1be0]           ; 8B 1E E0 1B
        mov     cl, 4                           ; B1 04
        shl     bx, cl                          ; D3 E3
        push    word ptr [bx + si + 8]          ; FF 70 08
        push    word ptr [bx + si + 6]          ; FF 70 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x109c]               ; FF 36 9C 10
        push    word ptr [0x109a]               ; FF 36 9A 10
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far _entry_96                   ; 9A 51 11 00 00 [FIXUP]
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     ax, 0x102c                      ; B8 2C 10
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_253                  ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3

WRITE_TEXT ENDS

        END
