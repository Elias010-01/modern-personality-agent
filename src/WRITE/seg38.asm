; AUTO-GENERATED from original WRITE segment 38
; segment_size=2577 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

WRITE_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0000 -- offset 0x0000 -- 226 instr
; Dispatcher: tabla de decisiones cmp+jcc (226 instr).
; tags: dispatcher, far
;----------------------------------------------------------------------

L_0000:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x14                        ; 83 EC 14
        mov     ax, word ptr [0x2ca]            ; A1 CA 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        mov     ax, word ptr [0x1bea]           ; A1 EA 1B
        and     ax, 1                           ; 25 01 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A B7 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_0033                          ; 7D 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0035                          ; EB 02
L_0033:
        sub     ax, ax                          ; 2B C0
L_0035:
        or      word ptr [0x7c], ax             ; 09 06 7C 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 0x8027                      ; 3D 27 80
        jne     L_0044                          ; 75 03
        jmp     L_0148                          ; E9 04 01
L_0044:
        jle     L_0049                          ; 7E 03
        jmp     L_0162                          ; E9 19 01
L_0049:
        cmp     ax, 0x8023                      ; 3D 23 80
        je      L_00A3                          ; 74 55
        cmp     ax, 0x8024                      ; 3D 24 80
        je      L_00BB                          ; 74 68
        cmp     ax, 0x8025                      ; 3D 25 80
        jne     L_005B                          ; 75 03
        jmp     L_014D                          ; E9 F2 00
L_005B:
        jmp     L_028C                          ; E9 2E 02
L_005E:
        mov     word ptr [bp - 0xe], 1          ; C7 46 F2 01 00
L_0063:
        mov     word ptr [bp - 4], 4            ; C7 46 FC 04 00
L_0068:
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        cmp     word ptr [0x1be8], dx           ; 39 16 E8 1B
        jne     L_007B                          ; 75 06
        cmp     word ptr [0x1be6], ax           ; 39 06 E6 1B
        je      L_0084                          ; 74 09
L_007B:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_0084                          ; 75 03
        jmp     L_018E                          ; E9 0A 01
L_0084:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jne     L_008D                          ; 75 03
        jmp     L_0185                          ; E9 F8 00
L_008D:
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        jmp     L_01B0                          ; E9 19 01
L_0097:
        mov     word ptr [bp - 0xe], 1          ; C7 46 F2 01 00
L_009C:
        mov     word ptr [bp - 4], 2            ; C7 46 FC 02 00
        jmp     L_0068                          ; EB C5
L_00A3:
        cmp     word ptr [0x7c], 0              ; 83 3E 7C 00 00
        je      L_00B6                          ; 74 0C
        mov     ax, 0x8123                      ; B8 23 81
L_00AD:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0297                          ; E8 E4 01
        jmp     L_028C                          ; E9 D6 01
L_00B6:
        mov     ax, word ptr [0x12ae]           ; A1 AE 12
        jmp     L_00CE                          ; EB 13
L_00BB:
        cmp     word ptr [0x7c], 0              ; 83 3E 7C 00 00
        je      L_00C7                          ; 74 05
        mov     ax, 0x8124                      ; B8 24 81
        jmp     L_00AD                          ; EB E6
L_00C7:
        mov     ax, word ptr [0x1112]           ; A1 12 11
        sub     ax, word ptr [0x1088]           ; 2B 06 88 10
L_00CE:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ax                              ; 50
        call    far _entry_216                  ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_173                  ; 9A 1D 01 00 00 [FIXUP]
        cmp     dx, word ptr [0x1be4]           ; 3B 16 E4 1B
        jne     L_0121                          ; 75 3A
        cmp     ax, word ptr [0x1be2]           ; 3B 06 E2 1B
        jne     L_0121                          ; 75 34
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        cmp     word ptr [0x1be4], dx           ; 39 16 E4 1B
        jl      L_0121                          ; 7C 27
        jg      L_0102                          ; 7F 06
        cmp     word ptr [0x1be2], ax           ; 39 06 E2 1B
        jbe     L_0121                          ; 76 1F
L_0102:
        cmp     word ptr [0x78], 0              ; 83 3E 78 00 00
        je      L_0121                          ; 74 18
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ax                              ; 50
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_173                  ; 9A FF FF 00 00 [FIXUP]
L_0121:
        mov     word ptr [0x100a], 0xffff       ; C7 06 0A 10 FF FF
        mov     word ptr [0x100c], 0xffff       ; C7 06 0C 10 FF FF
        mov     word ptr [0x110a], 0            ; C7 06 0A 11 00 00
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_250                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0280                          ; E9 38 01
L_0148:
        mov     word ptr [bp - 0xe], 1          ; C7 46 F2 01 00
L_014D:
        cmp     word ptr [0x7c], 0              ; 83 3E 7C 00 00
        je      L_0159                          ; 74 05
        mov     ax, 3                           ; B8 03 00
        jmp     L_015C                          ; EB 03
L_0159:
        mov     ax, 1                           ; B8 01 00
L_015C:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_0068                          ; E9 06 FF
L_0162:
        cmp     ax, 0x8125                      ; 3D 25 81
        jne     L_016A                          ; 75 03
        jmp     L_009C                          ; E9 32 FF
L_016A:
        cmp     ax, 0x8127                      ; 3D 27 81
        jne     L_0172                          ; 75 03
        jmp     L_0097                          ; E9 25 FF
L_0172:
        cmp     ax, 0xfffd                      ; 3D FD FF
        jne     L_017A                          ; 75 03
        jmp     L_0063                          ; E9 E9 FE
L_017A:
        cmp     ax, 0xfffe                      ; 3D FE FF
        jne     L_0182                          ; 75 03
        jmp     L_005E                          ; E9 DC FE
L_0182:
        jmp     L_028C                          ; E9 07 01
L_0185:
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        jmp     L_01B0                          ; EB 22
L_018E:
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_01A3                          ; 74 0F
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        jmp     L_01B0                          ; EB 0D
L_01A3:
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
L_01B0:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_01D5                          ; 74 19
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [bp - 8], dx           ; 39 56 F8
        jne     L_01E6                          ; 75 1E
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jne     L_01E6                          ; 75 19
L_01CD:
        call    far _entry_174                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_028C                          ; E9 B7 00
L_01D5:
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        cmp     word ptr [bp - 8], dx           ; 39 56 F8
        jne     L_01E6                          ; 75 05
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        je      L_01CD                          ; 74 E7
L_01E6:
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_0218                          ; 74 2C
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [bp - 8], dx           ; 39 56 F8
        jl      L_0208                          ; 7C 10
        jg      L_01FF                          ; 7F 05
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jb      L_0208                          ; 72 09
L_01FF:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        jmp     L_0241                          ; EB 39
L_0208:
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_100                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0241                          ; EB 29
L_0218:
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        cmp     word ptr [bp - 8], dx           ; 39 56 F8
        jl      L_0233                          ; 7C 0F
        jg      L_022B                          ; 7F 05
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jbe     L_0233                          ; 76 08
L_022B:
        sub     word ptr [bp - 0xa], 1          ; 83 6E F6 01
        sbb     word ptr [bp - 8], 0            ; 83 5E F8 00
L_0233:
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_35                   ; 9A FF FF 00 00 [FIXUP]
L_0241:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0264                          ; 74 17
        push    dx                              ; 52
        push    ax                              ; 50
        cmp     word ptr [bp - 4], 1            ; 83 7E FC 01
        jne     L_0259                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_025C                          ; EB 03
L_0259:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_025C:
        push    ax                              ; 50
        call    far _entry_249                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0280                          ; EB 1C
L_0264:
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_97                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        jne     L_0280                          ; 75 05
        and     byte ptr [0x1bea], 0xfe         ; 80 26 EA 1B FE
L_0280:
        mov     word ptr [0x7a], 1              ; C7 06 7A 00 01 00
        mov     word ptr [0x744], 1             ; C7 06 44 07 01 00
L_028C:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0297 -- offset 0x0297 -- 596 instr
; Dispatcher: tabla de decisiones cmp+jcc (596 instr).
; tags: calls_user, dispatcher, far
; callers: sub_0000
; calls (intra): sub_091B
; calls (inter): USER.GETKEYSTATE
;----------------------------------------------------------------------
L_0297:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x22                        ; 83 EC 22
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [0x2ca]            ; A1 CA 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x10b4]           ; A1 B4 10
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_02C4                          ; 7D 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_02C6                          ; EB 02
L_02C4:
        sub     ax, ax                          ; 2B C0
L_02C6:
        or      word ptr [0x7c], ax             ; 09 06 7C 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 0x8028                      ; 3D 28 80
        je      L_030C                          ; 74 3A
        jg      L_0334                          ; 7F 60
        cmp     ax, 0x8021                      ; 3D 21 80
        je      L_02F6                          ; 74 1D
        cmp     ax, 0x8022                      ; 3D 22 80
        je      L_0318                          ; 74 3A
        cmp     ax, 0x8026                      ; 3D 26 80
        jne     L_0354                          ; 75 71
        cmp     word ptr [0x7c], 0              ; 83 3E 7C 00 00
        je      L_02F6                          ; 74 0C
        mov     ax, 0xfffd                      ; B8 FD FF
L_02ED:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 0D FD
        jmp     L_090E                          ; E9 18 06
L_02F6:
        test    byte ptr [0x1bea], 1            ; F6 06 EA 1B 01
        je      L_0325                          ; 74 28
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0325                          ; 74 22
L_0303:
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        jmp     L_032C                          ; EB 20
L_030C:
        cmp     word ptr [0x7c], 0              ; 83 3E 7C 00 00
        je      L_0318                          ; 74 05
        mov     ax, 0xfffe                      ; B8 FE FF
        jmp     L_02ED                          ; EB D5
L_0318:
        test    byte ptr [0x1bea], 1            ; F6 06 EA 1B 01
        jne     L_0303                          ; 75 E4
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0303                          ; 74 DE
L_0325:
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
L_032C:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        jmp     L_0354                          ; EB 20
L_0334:
        sub     ax, 0x8121                      ; 2D 21 81
        cmp     ax, 7                           ; 3D 07 00
        ja      L_0354                          ; 77 18
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x344]        ; 2E FF A7 44 03
        test    byte ptr [bp + si], 0x18        ; F6 02 18
        add     bx, word ptr [bx + si]          ; 03 18
L_0349:
        add     si, si                          ; 03 F6
        add     dl, byte ptr [si + 3]           ; 02 54 03
        test    byte ptr [bp + si], 0x54        ; F6 02 54
        add     bx, word ptr [bx + si]          ; 03 18
        add     di, di                          ; 03 FF
        jbe     L_0349                          ; 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        cmp     word ptr [0xcc4], 0             ; 83 3E C4 0C 00
        je      L_036A                          ; 74 05
        lea     ax, [bp - 6]                    ; 8D 46 FA
        jmp     L_036D                          ; EB 03
L_036A:
        mov     ax, 0xee6                       ; B8 E6 0E
L_036D:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_091B                          ; E8 A8 05
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_03B0                          ; 74 37
        cmp     word ptr [0x7c], 0              ; 83 3E 7C 00 00
        jne     L_03B0                          ; 75 30
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 0x8021                      ; 3D 21 80
        jne     L_038B                          ; 75 03
        jmp     L_0431                          ; E9 A6 00
L_038B:
        cmp     ax, 0x8022                      ; 3D 22 80
        jne     L_0393                          ; 75 03
        jmp     L_0478                          ; E9 E5 00
L_0393:
        cmp     ax, 0x8026                      ; 3D 26 80
        je      L_03E3                          ; 74 4B
        cmp     ax, 0x8028                      ; 3D 28 80
        jne     L_03A0                          ; 75 03
        jmp     L_0478                          ; E9 D8 00
L_03A0:
        cmp     ax, 0x8126                      ; 3D 26 81
        jne     L_03A8                          ; 75 03
        jmp     L_0431                          ; E9 89 00
L_03A8:
        cmp     ax, 0x8128                      ; 3D 28 81
        jne     L_03B0                          ; 75 03
        jmp     L_0478                          ; E9 C8 00
L_03B0:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 0x8121                      ; 3D 21 81
        jne     L_03BB                          ; 75 03
        jmp     L_088A                          ; E9 CF 04
L_03BB:
        jle     L_03C0                          ; 7E 03
        jmp     L_08DB                          ; E9 1B 05
L_03C0:
        cmp     ax, 0x8021                      ; 3D 21 80
        jne     L_03C8                          ; 75 03
        jmp     L_04E5                          ; E9 1D 01
L_03C8:
        cmp     ax, 0x8022                      ; 3D 22 80
        jne     L_03D0                          ; 75 03
        jmp     L_05DD                          ; E9 0D 02
L_03D0:
        cmp     ax, 0x8026                      ; 3D 26 80
        jne     L_03D8                          ; 75 03
        jmp     L_0667                          ; E9 8F 02
L_03D8:
        cmp     ax, 0x8028                      ; 3D 28 80
L_03DB:
        jne     L_03E0                          ; 75 03
        jmp     L_073B                          ; E9 5B 03
L_03E0:
        jmp     L_090E                          ; E9 2B 05
L_03E3:
        cmp     word ptr [0xcc4], 0             ; 83 3E C4 0C 00
        je      L_0431                          ; 74 47
        mov     ax, word ptr [0x1112]           ; A1 12 11
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jg      L_0431                          ; 7F 3F
        cmp     word ptr [0xee6], ax            ; 39 06 E6 0E
        jle     L_0431                          ; 7E 39
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        cmp     word ptr [bp - 0xe], dx         ; 39 56 F2
        jl      L_0431                          ; 7C 2D
        jg      L_040B                          ; 7F 05
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jbe     L_0431                          ; 76 26
L_040B:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     dx, word ptr [bp - 0xe]         ; 8B 56 F2
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_35                   ; 9A 3D 02 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_091B                          ; E8 EA 04
L_0431:
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        cmp     word ptr [0x1094], dx           ; 39 16 94 10
        je      L_0441                          ; 74 03
        jmp     L_03B0                          ; E9 6F FF
L_0441:
        cmp     word ptr [0x1092], ax           ; 39 06 92 10
        je      L_044A                          ; 74 03
        jmp     L_03B0                          ; E9 66 FF
L_044A:
        cmp     word ptr [bp - 0xe], dx         ; 39 56 F2
        jge     L_0452                          ; 7D 03
        jmp     L_03B0                          ; E9 5E FF
L_0452:
        jg      L_045C                          ; 7F 08
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        ja      L_045C                          ; 77 03
        jmp     L_03B0                          ; E9 54 FF
L_045C:
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        je      L_046C                          ; 74 0A
        cmp     word ptr [bp + 6], 0x8021       ; 81 7E 06 21 80
        je      L_046C                          ; 74 03
        jmp     L_03B0                          ; E9 44 FF
L_046C:
        mov     ax, 0x8124                      ; B8 24 81
L_046F:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0297                          ; E8 22 FE
        jmp     L_090E                          ; E9 96 04
L_0478:
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     si, ax                          ; 03 F0
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        cdq                                     ; 99
        add     ax, word ptr [si + 6]           ; 03 44 06
        adc     dx, word ptr [si + 8]           ; 13 54 08
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [bp - 0x14], dx        ; 39 56 EC
        jge     L_04A5                          ; 7D 03
        jmp     L_03B0                          ; E9 0B FF
L_04A5:
        jg      L_04AF                          ; 7F 08
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jae     L_04AF                          ; 73 03
        jmp     L_03B0                          ; E9 01 FF
L_04AF:
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     dx, word ptr [si + 8]           ; 8B 54 08
        cmp     word ptr [bp - 0xe], dx         ; 39 56 F2
        jge     L_04BD                          ; 7D 03
        jmp     L_03B0                          ; E9 F3 FE
L_04BD:
        jg      L_04C7                          ; 7F 08
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jae     L_04C7                          ; 73 03
        jmp     L_03B0                          ; E9 E9 FE
L_04C7:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [bp - 0xe], dx         ; 39 56 F2
        jle     L_04D6                          ; 7E 03
        jmp     L_03B0                          ; E9 DA FE
L_04D6:
        jl      L_04E0                          ; 7C 08
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jb      L_04E0                          ; 72 03
        jmp     L_03B0                          ; E9 D0 FE
L_04E0:
        mov     ax, 0x8123                      ; B8 23 81
        jmp     L_046F                          ; EB 8A
L_04E5:
        cmp     word ptr [0x7c], 0              ; 83 3E 7C 00 00
        jne     L_04EF                          ; 75 03
        jmp     L_05A9                          ; E9 BA 00
L_04EF:
        mov     word ptr [bp - 8], 0xffff       ; C7 46 F8 FF FF
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        call    far _entry_252                  ; 9A 4F 05 00 00 [FIXUP]
        cmp     word ptr [0x328], -1            ; 83 3E 28 03 FF
        je      L_0542                          ; 74 36
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bx + di + 0x10]   ; 8B 41 10
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     bx, ax                          ; 8B D8
        mov     di, word ptr [bx]               ; 8B 3F
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [0x328]                ; F7 2E 28 03
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        cmp     word ptr [bx + di + 8], dx      ; 39 51 08
        jne     L_053F                          ; 75 05
        cmp     word ptr [bx + di + 6], ax      ; 39 41 06
        je      L_0542                          ; 74 03
L_053F:
        inc     word ptr [bp - 8]               ; FF 46 F8
L_0542:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        call    far _entry_252                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bx + di + 0x10]   ; 8B 41 10
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        cmp     word ptr [0x328], -1            ; 83 3E 28 03 FF
        je      L_0586                          ; 74 17
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [0x328]            ; 03 06 28 03
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        or      ax, ax                          ; 0B C0
        jl      L_0586                          ; 7C 09
        mov     bx, word ptr [bp - 0x1a]        ; 8B 5E E6
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     word ptr [bx], ax               ; 39 07
        jg      L_058E                          ; 7F 08
L_0586:
        call    far _entry_174                  ; 9A F7 06 00 00 [FIXUP]
        jmp     L_090E                          ; E9 80 03
L_058E:
        mov     bx, word ptr [bp - 0x1a]        ; 8B 5E E6
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [bp - 0x18]            ; F7 6E E8
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bx + di + 4]      ; 8B 41 04
        mov     word ptr [0x1038], ax           ; A3 38 10
        call    far _entry_251                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_090E                          ; E9 65 03
L_05A9:
        call    far _entry_153                  ; 9A FF FF 00 00 [FIXUP]
L_05AE:
        mov     word ptr [0x100a], 0xffff       ; C7 06 0A 10 FF FF
        mov     word ptr [0x100c], 0xffff       ; C7 06 0C 10 FF FF
        mov     word ptr [0x110a], 0            ; C7 06 0A 11 00 00
        push    word ptr [bp - 0x12]            ; FF 76 EE
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     di, word ptr [bx]               ; 8B 3F
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        mov     cl, 4                           ; B1 04
        shl     bx, cl                          ; D3 E3
        test    byte ptr [bx + di + 2], 4       ; F6 41 02 04
        jne     L_05D8                          ; 75 03
        jmp     L_08F8                          ; E9 20 03
L_05D8:
        sub     ax, ax                          ; 2B C0
        jmp     L_08FB                          ; E9 1E 03
L_05DD:
        cmp     word ptr [0x7c], 0              ; 83 3E 7C 00 00
        je      L_05EC                          ; 74 08
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
        jmp     L_0542                          ; E9 56 FF
L_05EC:
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        call    far _entry_154                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x100a], 0xffff       ; C7 06 0A 10 FF FF
        mov     word ptr [0x100c], 0xffff       ; C7 06 0C 10 FF FF
        mov     word ptr [0x110a], 0            ; C7 06 0A 11 00 00
        push    word ptr [bp - 0x12]            ; FF 76 EE
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     di, word ptr [bx]               ; 8B 3F
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        mov     cl, 4                           ; B1 04
        shl     bx, cl                          ; D3 E3
        test    byte ptr [bx + di + 2], 4       ; F6 41 02 04
        je      L_0620                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0623                          ; EB 03
L_0620:
        mov     ax, word ptr [0xee6]            ; A1 E6 0E
L_0623:
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_250                  ; 9A 41 01 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_0639                          ; 75 03
        jmp     L_0908                          ; E9 CF 02
L_0639:
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        je      L_0642                          ; 74 03
        jmp     L_0908                          ; E9 C6 02
L_0642:
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [0x1094], dx           ; 39 16 94 10
        je      L_0652                          ; 74 03
        jmp     L_0908                          ; E9 B6 02
L_0652:
        cmp     word ptr [0x1092], ax           ; 39 06 92 10
        je      L_065B                          ; 74 03
        jmp     L_0908                          ; E9 AD 02
L_065B:
        mov     ax, 0x8028                      ; B8 28 80
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0297                          ; E8 33 FC
        jmp     L_0908                          ; E9 A1 02
L_0667:
        push    word ptr [0x322]                ; FF 36 22 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_152                  ; 9A 34 07 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     si, ax                          ; 03 F0
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_06DF                          ; 74 58
        test    byte ptr [0x1bea], 1            ; F6 06 EA 1B 01
        je      L_0697                          ; 74 09
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        jmp     L_069E                          ; EB 07
L_0697:
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
L_069E:
        cmp     dx, word ptr [si + 8]           ; 3B 54 08
        jne     L_06DF                          ; 75 3C
        cmp     ax, word ptr [si + 6]           ; 3B 44 06
        jne     L_06DF                          ; 75 37
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        cmp     word ptr [si + 8], dx           ; 39 54 08
        jl      L_06DF                          ; 7C 2B
        jg      L_06BB                          ; 7F 05
        cmp     word ptr [si + 6], ax           ; 39 44 06
        jbe     L_06DF                          ; 76 24
L_06BB:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     dx, word ptr [si + 8]           ; 8B 54 08
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        test    byte ptr [0xb82], 0x10          ; F6 06 82 0B 10
        je      L_06DF                          ; 74 06
        mov     ax, 0x8025                      ; B8 25 80
        jmp     L_02ED                          ; E9 0E FC
L_06DF:
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        cmp     word ptr [si + 8], dx           ; 39 54 08
        jne     L_0713                          ; 75 28
        cmp     word ptr [si + 6], ax           ; 39 44 06
        jne     L_0713                          ; 75 23
        cmp     byte ptr [si + 1], 0            ; 80 7C 01 00
        jne     L_0713                          ; 75 1D
        call    far _entry_174                  ; 9A CE 01 00 00 [FIXUP]
        push    word ptr [0x13e2]               ; FF 36 E2 13
        push    word ptr [0x13e0]               ; FF 36 E0 13
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
L_070A:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_091B                          ; E8 0B 02
        jmp     L_05AE                          ; E9 9B FE
L_0713:
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        je      L_0723                          ; 74 0A
        cmp     word ptr [bp + 6], 0x8126       ; 81 7E 06 26 81
        je      L_0723                          ; 74 03
        jmp     L_08B9                          ; E9 96 01
L_0723:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_155                  ; 9A FF FF 00 00 [FIXUP]
L_072C:
        push    word ptr [0x322]                ; FF 36 22 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_152                  ; 9A 43 07 00 00 [FIXUP]
        jmp     L_05AE                          ; E9 73 FE
L_073B:
        push    word ptr [0x322]                ; FF 36 22 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_152                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     si, ax                          ; 03 F0
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        cdq                                     ; 99
        add     ax, word ptr [si + 6]           ; 03 44 06
        adc     dx, word ptr [si + 8]           ; 13 54 08
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 0x1e], dx        ; 89 56 E2
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [0x1be4], dx           ; 39 16 E4 1B
        jg      L_07CB                          ; 7F 59
        jl      L_077A                          ; 7C 06
        cmp     word ptr [0x1be2], ax           ; 39 06 E2 1B
        jae     L_07CB                          ; 73 51
L_077A:
        test    byte ptr [0x1bea], 1            ; F6 06 EA 1B 01
        je      L_07CB                          ; 74 4A
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [si + 8], dx           ; 39 54 08
        jne     L_07CB                          ; 75 3E
        cmp     word ptr [si + 6], ax           ; 39 44 06
        jne     L_07CB                          ; 75 39
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [bp - 0x1e], dx        ; 39 56 E2
        jg      L_07CB                          ; 7F 2D
        jl      L_07A5                          ; 7C 05
        cmp     word ptr [bp - 0x20], ax        ; 39 46 E0
        jae     L_07CB                          ; 73 26
L_07A5:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_07AE                          ; 75 03
        jmp     L_05AE                          ; E9 00 FE
L_07AE:
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     cl, 4                           ; B1 04
        shr     ax, cl                          ; D3 E8
        and     ah, 0xf                         ; 80 E4 0F
        add     ax, word ptr [0x1112]           ; 03 06 12 11
        cmp     ax, word ptr [0xee6]            ; 3B 06 E6 0E
        jae     L_07CB                          ; 73 09
        cmp     word ptr [si + 4], 2            ; 83 7C 04 02
        jle     L_07CB                          ; 7E 03
        jmp     L_05AE                          ; E9 E3 FD
L_07CB:
        test    byte ptr [si + 2], 4            ; F6 44 02 04
        je      L_0815                          ; 74 44
        mov     ax, 0x8027                      ; B8 27 80
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 26 F8
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_07E3                          ; 74 03
        jmp     L_0908                          ; E9 25 01
L_07E3:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        call    far _entry_32                   ; 9A CE 06 00 00 [FIXUP]
        test    byte ptr [0xb82], 0x10          ; F6 06 82 0B 10
        jne     L_07FE                          ; 75 03
        jmp     L_0908                          ; E9 0A 01
L_07FE:
        mov     word ptr [0x2ca], 1             ; C7 06 CA 02 01 00
        mov     ax, 0x8027                      ; B8 27 80
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 F3 F7
        call    far _entry_217                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0908                          ; E9 F3 00
L_0815:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [bp - 0x1e], dx        ; 39 56 E2
        jl      L_0865                          ; 7C 44
        jg      L_0828                          ; 7F 05
        cmp     word ptr [bp - 0x20], ax        ; 39 46 E0
        jbe     L_0865                          ; 76 3D
L_0828:
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        cmp     word ptr [0x1be8], dx           ; 39 16 E8 1B
        jne     L_083B                          ; 75 06
        cmp     word ptr [0x1be6], ax           ; 39 06 E6 1B
        je      L_084E                          ; 74 13
L_083B:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [0x1be8], dx           ; 39 16 E8 1B
        jne     L_0853                          ; 75 0B
        cmp     word ptr [0x1be6], ax           ; 39 06 E6 1B
        jne     L_0853                          ; 75 05
L_084E:
        call    far _entry_174                  ; 9A 87 05 00 00 [FIXUP]
L_0853:
        push    word ptr [0x13a8]               ; FF 36 A8 13
        push    word ptr [0x13a6]               ; FF 36 A6 13
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        jmp     L_070A                          ; E9 A5 FE
L_0865:
        mov     al, byte ptr [0x1081]           ; A0 81 10
        sub     ah, ah                          ; 2A E4
        dec     ax                              ; 48
        dec     ax                              ; 48
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jae     L_0878                          ; 73 07
        cmp     word ptr [bp + 6], 0x8128       ; 81 7E 06 28 81
        jne     L_0884                          ; 75 0C
L_0878:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_154                  ; 9A F1 05 00 00 [FIXUP]
        jmp     L_072C                          ; E9 A8 FE
L_0884:
        inc     word ptr [bp - 0x12]            ; FF 46 EE
        jmp     L_05AE                          ; E9 24 FD
L_088A:
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
        jmp     L_05AE                          ; E9 1C FD
L_0892:
        mov     al, byte ptr [0x1081]           ; A0 81 10
        sub     ah, ah                          ; 2A E4
        dec     ax                              ; 48
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        or      ax, ax                          ; 0B C0
        jg      L_08A2                          ; 7F 03
        jmp     L_05AE                          ; E9 0C FD
L_08A2:
        mov     bx, word ptr [0x10b4]           ; 8B 1E B4 10
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     di, ax                          ; 8B F8
        mov     cl, 4                           ; B1 04
        shl     di, cl                          ; D3 E7
        mov     ax, word ptr [0x108a]           ; A1 8A 10
        cmp     word ptr [bx + di + 0xe], ax    ; 39 41 0E
        jge     L_08B9                          ; 7D 03
        jmp     L_05AE                          ; E9 F5 FC
L_08B9:
        dec     word ptr [bp - 0x12]            ; FF 4E EE
        jmp     L_05AE                          ; E9 EF FC
L_08BF:
        push    word ptr [0x13e2]               ; FF 36 E2 13
        push    word ptr [0x13e0]               ; FF 36 E0 13
L_08C7:
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        mov     ax, 0xee6                       ; B8 E6 0E
        jmp     L_070A                          ; E9 39 FE
L_08D1:
        push    word ptr [0x13a8]               ; FF 36 A8 13
        push    word ptr [0x13a6]               ; FF 36 A6 13
        jmp     L_08C7                          ; EB EC
L_08DB:
        cmp     ax, 0x8122                      ; 3D 22 81
        je      L_0892                          ; 74 B2
        cmp     ax, 0x8123                      ; 3D 23 81
        je      L_08D1                          ; 74 EC
        cmp     ax, 0x8124                      ; 3D 24 81
        je      L_08BF                          ; 74 D5
        cmp     ax, 0x8126                      ; 3D 26 81
        jne     L_08F2                          ; 75 03
        jmp     L_0667                          ; E9 75 FD
L_08F2:
        cmp     ax, 0x8128                      ; 3D 28 81
        jmp     L_03DB                          ; E9 E3 FA
L_08F8:
        mov     ax, word ptr [0xee6]            ; A1 E6 0E
L_08FB:
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_250                  ; 9A 2C 06 00 00 [FIXUP]
L_0908:
        mov     word ptr [0xcc4], 1             ; C7 06 C4 0C 01 00
L_090E:
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
; sub_091B -- offset 0x091B -- 93 instr
; Dispatcher: tabla de decisiones cmp+jcc (93 instr).
; tags: dispatcher
; callers: sub_0297
;----------------------------------------------------------------------
L_091B:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        cmp     word ptr [0x78], 0              ; 83 3E 78 00 00
        jne     L_093A                          ; 75 0B
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_99                   ; 9A B7 09 00 00 [FIXUP]
L_093A:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_173                  ; 9A DD 00 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        call    far _entry_102                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        cmp     word ptr [bp + 0xc], dx         ; 39 56 0C
        jne     L_09BD                          ; 75 5E
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jne     L_09BD                          ; 75 59
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [bp + 0xc], dx         ; 39 56 0C
        jne     L_09BD                          ; 75 4D
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jne     L_09BD                          ; 75 48
        cmp     word ptr [0x78], 0              ; 83 3E 78 00 00
        je      L_09BD                          ; 74 41
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        cmp     word ptr [bp + 0xc], dx         ; 39 56 0C
        jl      L_09BD                          ; 7C 35
        jg      L_098F                          ; 7F 05
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jbe     L_09BD                          ; 76 2E
L_098F:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_091B                          ; E8 73 FF
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_99                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0A07                          ; EB 4A
L_09BD:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x13a8]               ; FF 36 A8 13
        push    word ptr [0x13a6]               ; FF 36 A6 13
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far _entry_96                   ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        call    far _entry_172                  ; 9A FF FF 00 00 [FIXUP]
        add     ax, word ptr [0x340]            ; 03 06 40 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        sub     ax, word ptr [0x1088]           ; 2B 06 88 10
        add     ax, word ptr [0x1112]           ; 03 06 12 11
        mov     word ptr [bx], ax               ; 89 07
L_0A07:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      008h                            ; 08

WRITE_TEXT ENDS

        END
