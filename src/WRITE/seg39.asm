; AUTO-GENERATED from original WRITE segment 39
; segment_size=5486 bytes, flags=0xf130
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
; sub_0000 -- offset 0x0000 -- 796 instr
; Iterador con instrucciones de string (movsb/scasb/...) (796 instr).
; tags: complex_iterator, far, string_op
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
        sub     sp, 0x56                        ; 83 EC 56
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        mov     di, ax                          ; 8B F8
        add     di, 0x107e                      ; 81 C7 7E 10
        mov     word ptr [bp - 0x2e], di        ; 89 7E D2
        mov     ax, word ptr [di + 0x32]        ; 8B 45 32
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     ax, word ptr [di + 0xa]         ; 8B 45 0A
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     ax, word ptr [di + 6]           ; 8B 45 06
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     word ptr [bp - 0x20], 0         ; C7 46 E0 00 00
        mov     byte ptr [bp - 0x18], 0         ; C6 46 E8 00
        cmp     word ptr [0x356], 0             ; 83 3E 56 03 00
        jl      L_0045                          ; 7C 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0047                          ; EB 02
L_0045:
        sub     ax, ax                          ; 2B C0
L_0047:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0x1a], 0         ; C7 46 E6 00 00
        mov     bx, word ptr [di + 0x36]        ; 8B 5D 36
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     si, ax                          ; 03 F0
        mov     ax, word ptr [0x1be0]           ; A1 E0 1B
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jne     L_0071                          ; 75 0C
        mov     word ptr [0x2c2], 0             ; C7 06 C2 02 00 00
        mov     word ptr [0x2c4], 0xffff        ; C7 06 C4 02 FF FF
L_0071:
        mov     ax, word ptr [0x340]            ; A1 40 03
        and     ah, 0xf                         ; 80 E4 0F
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        mov     cx, word ptr [si + 2]           ; 8B 4C 02
        and     cx, 0xf                         ; 81 E1 0F 00
        or      ax, cx                          ; 0B C1
        mov     word ptr [si + 2], ax           ; 89 44 02
        mov     ax, word ptr [0x344]            ; A1 44 03
        mov     word ptr [si + 0xa], ax         ; 89 44 0A
        mov     ax, word ptr [0x32a]            ; A1 2A 03
        mov     dx, word ptr [0x32c]            ; 8B 16 2C 03
        mov     word ptr [si + 6], ax           ; 89 44 06
        mov     word ptr [si + 8], dx           ; 89 54 08
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     word ptr [bp - 0x22], dx        ; 89 56 DE
        mov     ax, word ptr [0x330]            ; A1 30 03
        mov     dx, word ptr [0x332]            ; 8B 16 32 03
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        sub     ax, word ptr [bp - 0x24]        ; 2B 46 DC
        mov     word ptr [si + 4], ax           ; 89 44 04
        mov     ax, word ptr [0x34c]            ; A1 4C 03
        mov     word ptr [si + 0xc], ax         ; 89 44 0C
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     al, byte ptr [0x32e]            ; A0 2E 03
        mov     byte ptr [si + 1], al           ; 88 44 01
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        cmp     word ptr [bp - 0x22], dx        ; 39 56 DE
        jne     L_00D6                          ; 75 09
        cmp     word ptr [bp - 0x24], ax        ; 39 46 DC
        jne     L_00D6                          ; 75 04
        mov     al, 0xff                        ; B0 FF
        jmp     L_00D9                          ; EB 03
L_00D6:
        mov     al, byte ptr [0x338]            ; A0 38 03
L_00D9:
        mov     byte ptr [si], al               ; 88 04
        or      byte ptr [si + 2], 1            ; 80 4C 02 01
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        and     al, 0xfb                        ; 24 FB
        mov     cx, word ptr [0x348]            ; 8B 0E 48 03
        and     cx, 1                           ; 81 E1 01 00
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        or      ax, cx                          ; 0B C1
        mov     word ptr [si + 2], ax           ; 89 44 02
        and     al, 0xfd                        ; 24 FD
        mov     cx, word ptr [0x33a]            ; 8B 0E 3A 03
        and     cx, 1                           ; 81 E1 01 00
        shl     cx, 1                           ; D1 E1
        or      ax, cx                          ; 0B C1
        mov     word ptr [si + 2], ax           ; 89 44 02
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_0114                          ; 75 08
        mov     bx, word ptr [bp - 0x2e]        ; 8B 5E D2
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        jmp     L_0117                          ; EB 03
L_0114:
        mov     ax, word ptr [si - 2]           ; 8B 44 FE
L_0117:
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        add     ax, word ptr [bp - 0x14]        ; 03 46 EC
        mov     word ptr [si + 0xe], ax         ; 89 44 0E
        cmp     word ptr [0x334], 0             ; 83 3E 34 03 00
        je      L_012C                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_012E                          ; EB 02
L_012C:
        sub     ax, ax                          ; 2B C0
L_012E:
        and     ax, 1                           ; 25 01 00
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        and     al, 0xf7                        ; 24 F7
        mov     dx, word ptr [bp - 0x32]        ; 8B 56 CE
        mov     cl, 3                           ; B1 03
        shl     dx, cl                          ; D3 E2
        or      ax, dx                          ; 0B C2
        mov     word ptr [si + 2], ax           ; 89 44 02
        cmp     word ptr [bp - 0x32], 0         ; 83 7E CE 00
        je      L_0153                          ; 74 08
        add     word ptr [bp - 8], 1            ; 83 46 F8 01
        adc     word ptr [bp - 6], 0            ; 83 56 FA 00
L_0153:
        cmp     word ptr [0x33e], -1            ; 83 3E 3E 03 FF
        jne     L_0179                          ; 75 1F
        push    word ptr [bp - 0x26]            ; FF 76 DA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        push    word ptr [bp - 0x2c]            ; FF 76 D4
L_0166:
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [0x790]                ; FF 36 90 07
        push    word ptr [0x78e]                ; FF 36 8E 07
        call    far GDI.PATBLT                  ; 9A 3C 02 00 00 [FIXUP]
        jmp     L_08A2                          ; E9 29 07
L_0179:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        cmp     word ptr [bp - 0x22], dx        ; 39 56 DE
        jne     L_018C                          ; 75 08
        cmp     word ptr [bp - 0x24], ax        ; 39 46 DC
        jne     L_018C                          ; 75 03
        jmp     L_0216                          ; E9 8A 00
L_018C:
        test    byte ptr [0xb82], 0xf           ; F6 06 82 0B 0F
        je      L_0196                          ; 74 03
        jmp     L_0216                          ; E9 80 00
L_0196:
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x33e]                ; F7 2E 3E 03
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bx + si + 0x10], 0    ; 83 78 10 00
        je      L_0216                          ; 74 6B
        mov     ax, word ptr [0x1bf0]           ; A1 F0 1B
        cmp     word ptr [0x33e], ax            ; 39 06 3E 03
        jne     L_01DA                          ; 75 26
        mov     ax, word ptr [0xb6e]            ; A1 6E 0B
        mov     dx, word ptr [0xb70]            ; 8B 16 70 0B
        cmp     word ptr [bp - 6], dx           ; 39 56 FA
        jg      L_01DA                          ; 7F 1A
        jl      L_01C7                          ; 7C 05
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        ja      L_01DA                          ; 77 13
L_01C7:
        mov     ax, word ptr [0xece]            ; A1 CE 0E
        mov     dx, word ptr [0xed0]            ; 8B 16 D0 0E
        cmp     word ptr [bp - 6], dx           ; 39 56 FA
        jg      L_01F1                          ; 7F 1E
        jl      L_01DA                          ; 7C 05
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        ja      L_01F1                          ; 77 17
L_01DA:
        push    word ptr [0x33e]                ; FF 36 3E 03
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_252                  ; 9A FF FF 00 00 [FIXUP]
L_01F1:
        mov     ax, word ptr [0xece]            ; A1 CE 0E
        mov     dx, word ptr [0xed0]            ; 8B 16 D0 0E
        cmp     word ptr [bp - 0x22], dx        ; 39 56 DE
        jg      L_0216                          ; 7F 19
        jl      L_0204                          ; 7C 05
        cmp     word ptr [bp - 0x24], ax        ; 39 46 DC
        ja      L_0216                          ; 77 12
L_0204:
        cmp     byte ptr [0x348], 0             ; 80 3E 48 03 00
        je      L_0212                          ; 74 07
        cmp     word ptr [0x32e], 0             ; 83 3E 2E 03 00
        jne     L_0216                          ; 75 04
L_0212:
        mov     byte ptr [bp - 0x18], 0xbb      ; C6 46 E8 BB
L_0216:
        cmp     byte ptr [0x348], 0             ; 80 3E 48 03 00
        jne     L_0223                          ; 75 06
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0243                          ; 74 20
L_0223:
        push    word ptr [bp - 0x26]            ; FF 76 DA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        push    word ptr [0x1112]               ; FF 36 12 11
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [0x790]                ; FF 36 90 07
        push    word ptr [0x78e]                ; FF 36 8E 07
        call    far GDI.PATBLT                  ; 9A FB 02 00 00 [FIXUP]
        jmp     L_0857                          ; E9 14 06
L_0243:
        call    far _entry_255                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x798], 0             ; 83 3E 98 07 00
        jne     L_0268                          ; 75 19
L_024F:
        call    far _entry_254                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x26]            ; FF 76 DA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        sub     ax, word ptr [0x1112]           ; 2B 06 12 11
        push    ax                              ; 50
        jmp     L_0166                          ; E9 FE FE
L_0268:
        mov     ax, word ptr [0x79a]            ; A1 9A 07
        cmp     word ptr [bp - 0x2c], ax        ; 39 46 D4
        jg      L_0278                          ; 7F 08
        mov     ax, word ptr [0x79c]            ; A1 9C 07
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jle     L_02D2                          ; 7E 5A
L_0278:
        cmp     word ptr [0x79a], 0             ; 83 3E 9A 07 00
        jne     L_0286                          ; 75 07
        cmp     word ptr [0x79c], 0             ; 83 3E 9C 07 00
        je      L_0299                          ; 74 13
L_0286:
        push    word ptr [0x798]                ; FF 36 98 07
        push    word ptr [0xe06]                ; FF 36 06 0E
        call    far GDI.SELECTOBJECT            ; 9A CE 02 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
L_0299:
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        mov     word ptr [0x79a], ax            ; A3 9A 07
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [0x79c], ax            ; A3 9C 07
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        or      ax, ax                          ; 0B C0
        jne     L_02C6                          ; 75 0A
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x79c], ax            ; A3 9C 07
        mov     word ptr [0x79a], ax            ; A3 9A 07
        jmp     L_024F                          ; EB 89
L_02C6:
        push    word ptr [0x798]                ; FF 36 98 07
        push    word ptr [bp - 0x32]            ; FF 76 CE
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
L_02D2:
        push    word ptr [0x798]                ; FF 36 98 07
        push    word ptr [0x1112]               ; FF 36 12 11
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        push    word ptr [bp - 0x14]            ; FF 76 EC
        cmp     word ptr [0x792], ax            ; 39 06 92 07
        je      L_02F2                          ; 74 09
        mov     ax, word ptr [0x78e]            ; A1 8E 07
        mov     dx, word ptr [0x790]            ; 8B 16 90 07
        jmp     L_02F8                          ; EB 06
L_02F2:
        mov     ax, 0x62                        ; B8 62 00
        mov     dx, 0xff                        ; BA FF 00
L_02F8:
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
        cmp     byte ptr [0x33a], 0             ; 80 3E 3A 03 00
        je      L_030B                          ; 74 05
        mov     ax, word ptr [0x336]            ; A1 36 03
        jmp     L_030E                          ; EB 03
L_030B:
        mov     ax, word ptr [0x33c]            ; A1 3C 03
L_030E:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     bx, word ptr [0x1072]           ; 8B 1E 72 10
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     ax, word ptr [0x340]            ; A1 40 03
        sub     ax, word ptr [bp - 0x1e]        ; 2B 46 E2
        add     ax, word ptr [0x1112]           ; 03 06 12 11
        inc     ax                              ; 40
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0332                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0335                          ; EB 03
L_0332:
        mov     ax, word ptr [0x34a]            ; A1 4A 03
L_0335:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
L_033D:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jl      L_0348                          ; 7C 03
        jmp     L_05B4                          ; E9 6C 02
L_0348:
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        mov     al, byte ptr [bx + 8]           ; 8A 47 08
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     al, byte ptr [bx + 9]           ; 8A 47 09
        add     word ptr [bp - 0x16], ax        ; 01 46 EA
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jle     L_0367                          ; 7E 03
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
L_0367:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        sub     ax, word ptr [bp - 0x34]        ; 2B 46 CC
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        mov     di, ax                          ; 8B F8
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        mov     si, word ptr [bp - 0x34]        ; 8B 76 CC
        shl     si, 1                           ; D1 E6
        add     si, 0x35a                       ; 81 C6 5A 03
        jmp     L_0386                          ; EB 04
L_0382:
        lodsw   ax, word ptr [si]               ; AD
        add     word ptr [bp - 0x10], ax        ; 01 46 F0
L_0386:
        mov     ax, di                          ; 8B C7
        dec     di                              ; 4F
        or      ax, ax                          ; 0B C0
        jg      L_0382                          ; 7F F5
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        jg      L_0396                          ; 7F 03
        jmp     L_0521                          ; E9 8B 01
L_0396:
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        add     ax, 0x558                       ; 05 58 05
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        push    word ptr [0x33e]                ; FF 36 3E 03
        push    word ptr [bp - 0x28]            ; FF 76 D8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_253                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        test    word ptr [bx + 4], 0xff00       ; F7 47 04 00 FF
        je      L_03CF                          ; 74 17
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        mov     cl, 8                           ; B1 08
        shr     ax, cl                          ; D3 E8
        cmp     al, 0x80                        ; 3C 80
        jae     L_03C8                          ; 73 05
        mov     ax, word ptr [0xa56]            ; A1 56 0A
        jmp     L_03D1                          ; EB 09
L_03C8:
        mov     ax, word ptr [0xa56]            ; A1 56 0A
        neg     ax                              ; F7 D8
        jmp     L_03D1                          ; EB 02
L_03CF:
        sub     ax, ax                          ; 2B C0
L_03D1:
        mov     cx, word ptr [bp - 0x14]        ; 8B 4E EC
        sub     cx, ax                          ; 2B C8
        sub     cx, word ptr [0x352]            ; 2B 0E 52 03
        sub     cx, word ptr [0xec6]            ; 2B 0E C6 0E
        mov     word ptr [bp - 0x12], cx        ; 89 4E EE
        push    word ptr [0x798]                ; FF 36 98 07
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETTEXTJUSTIFICATION    ; 9A 45 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x3e], 0         ; C7 46 C2 00 00
        jmp     L_0516                          ; E9 1D 01
L_03F9:
        test    word ptr [0x348], 0xff00        ; F7 06 48 03 00 FF
        jne     L_0404                          ; 75 03
        jmp     L_0486                          ; E9 82 00
L_0404:
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        add     ax, word ptr [bp - 0x36]        ; 03 46 CA
        mov     cl, 8                           ; B1 08
        shl     ax, cl                          ; D3 E0
        mov     cx, word ptr [0x33a]            ; 8B 0E 3A 03
        and     cl, 0                           ; 80 E1 00
        cmp     ax, cx                          ; 3B C1
        jbe     L_0486                          ; 76 6D
        mov     al, byte ptr [0x33b]            ; A0 3B 03
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        add     ax, word ptr [bp - 0x3e]        ; 03 46 C2
        mov     di, ax                          ; 8B F8
        cmp     di, si                          ; 3B FE
        ja      L_0486                          ; 77 5A
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        cmp     di, si                          ; 3B FE
        jne     L_0457                          ; 75 21
        push    word ptr [0x798]                ; FF 36 98 07
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETTEXTJUSTIFICATION    ; 9A D8 04 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x36]        ; 8B 46 CA
        sub     ax, word ptr [bp - 0x3e]        ; 2B 46 C2
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     ax, word ptr [bp - 0x36]        ; 8B 46 CA
        jmp     L_0462                          ; EB 0B
L_0457:
        mov     al, byte ptr [0x33b]            ; A0 3B 03
        sub     ah, ah                          ; 2A E4
        sub     ax, word ptr [bp - 0x34]        ; 2B 46 CC
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
L_0462:
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     di, word ptr [bp - 0x40]        ; 8B 7E C0
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        mov     si, word ptr [bp - 0x34]        ; 8B 76 CC
        add     si, word ptr [bp - 0x42]        ; 03 76 BE
        shl     si, 1                           ; D1 E6
        add     si, 0x35a                       ; 81 C6 5A 03
L_0479:
        mov     ax, di                          ; 8B C7
        dec     di                              ; 4F
        or      ax, ax                          ; 0B C0
        jle     L_048F                          ; 7E 0F
        lodsw   ax, word ptr [si]               ; AD
        add     word ptr [bp - 0x10], ax        ; 01 46 F0
        jmp     L_0479                          ; EB F3
L_0486:
        mov     ax, word ptr [bp - 0x36]        ; 8B 46 CA
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
L_048F:
        cmp     word ptr [bp - 0x40], 0         ; 83 7E C0 00
        jle     L_04F3                          ; 7E 5E
        mov     bx, word ptr [bp - 0x3c]        ; 8B 5E C4
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        cmp     ax, 1                           ; 3D 01 00
        jne     L_04A4                          ; 75 03
        jmp     L_0528                          ; E9 84 00
L_04A4:
        cmp     ax, 5                           ; 3D 05 00
        je      L_0528                          ; 74 7F
        cmp     ax, 9                           ; 3D 09 00
        jne     L_04F3                          ; 75 45
        mov     bx, word ptr [bp - 0x34]        ; 8B 5E CC
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x35a]       ; 8B 87 5A 03
        add     word ptr [bp - 0xc], ax         ; 01 46 F4
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_04E1                          ; 74 21
        mov     ax, word ptr [0x356]            ; A1 56 03
        cmp     word ptr [bp - 0x34], ax        ; 39 46 CC
        jl      L_04E1                          ; 7C 19
        push    word ptr [0x798]                ; FF 36 98 07
        mov     ax, word ptr [0x34a]            ; A1 4A 03
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETTEXTJUSTIFICATION    ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_04E1:
        mov     bx, word ptr [bp - 0x34]        ; 8B 5E CC
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x35a]       ; 8B 87 5A 03
        sub     word ptr [bp - 0x10], ax        ; 29 46 F0
        inc     word ptr [bp - 0x3c]            ; FF 46 C4
        dec     word ptr [bp - 0x40]            ; FF 4E C0
L_04F3:
        push    word ptr [0x798]                ; FF 36 98 07
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0x12]            ; FF 76 EE
        mov     ax, word ptr [bp - 0x3c]        ; 8B 46 C4
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x40]            ; FF 76 C0
        call    far GDI.TEXTOUT                 ; 9A 8C 05 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        add     word ptr [bp - 0xc], ax         ; 01 46 F4
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        add     word ptr [bp - 0x3c], ax        ; 01 46 C4
L_0516:
        mov     ax, word ptr [bp - 0x36]        ; 8B 46 CA
        cmp     word ptr [bp - 0x3e], ax        ; 39 46 C2
        jge     L_0521                          ; 7D 03
        jmp     L_03F9                          ; E9 D8 FE
L_0521:
        add     word ptr [bp - 0x28], 0xa       ; 83 46 D8 0A
        jmp     L_033D                          ; E9 15 FE
L_0528:
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        test    word ptr [bx + 2], 0x4000       ; F7 47 02 00 40
        je      L_04F3                          ; 74 C1
        mov     bx, word ptr [bp - 0x3c]        ; 8B 5E C4
        cmp     byte ptr [bx], 1                ; 80 3F 01
        jne     L_0562                          ; 75 28
        test    byte ptr [0x107f], 1            ; F6 06 7F 10 01
        jne     L_0548                          ; 75 07
        test    byte ptr [0x107f], 2            ; F6 06 7F 10 02
        je      L_0562                          ; 74 1A
L_0548:
        mov     ax, 0xa6f                       ; B8 6F 0A
        push    ax                              ; 50
        push    word ptr [0xeea]                ; FF 36 EA 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        mov     ax, 0xff                        ; B8 FF 00
        push    ax                              ; 50
        call    far _entry_257                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0573                          ; EB 11
L_0562:
        mov     ax, 0xa6f                       ; B8 6F 0A
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        mov     ax, 0xff                        ; B8 FF 00
        push    ax                              ; 50
        call    far _entry_256                  ; 9A FF FF 00 00 [FIXUP]
L_0573:
        mov     byte ptr [0xa6e], al            ; A2 6E 0A
        push    word ptr [0x798]                ; FF 36 98 07
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0x12]            ; FF 76 EE
        mov     ax, 0xa6f                       ; B8 6F 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0xa6e]            ; A0 6E 0A
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x34]        ; 8B 5E CC
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x35a]       ; 8B 87 5A 03
        sub     word ptr [bp - 0x10], ax        ; 29 46 F0
        mov     bx, word ptr [bp - 0x34]        ; 8B 5E CC
        inc     word ptr [bp - 0x34]            ; FF 46 CC
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x35a]       ; 8B 87 5A 03
        add     word ptr [bp - 0xc], ax         ; 01 46 F4
        inc     word ptr [bp - 0x3c]            ; FF 46 C4
        dec     word ptr [bp - 0x40]            ; FF 4E C0
        jmp     L_048F                          ; E9 DB FE
L_05B4:
        mov     word ptr [0x1024], 0            ; C7 06 24 10 00 00
        mov     ax, word ptr [0x322]            ; A1 22 03
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        je      L_05C5                          ; 74 03
        jmp     L_078E                          ; E9 C9 01
L_05C5:
        mov     bx, word ptr [bp - 0x2e]        ; 8B 5E D2
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        sub     ah, ah                          ; 2A E4
        cmp     ax, word ptr [0xc20]            ; 3B 06 20 0C
        jne     L_05D6                          ; 75 03
        jmp     L_078E                          ; E9 B8 01
L_05D6:
        cmp     word ptr [0x31e], 0             ; 83 3E 1E 03 00
        je      L_05E0                          ; 74 03
        jmp     L_078E                          ; E9 AE 01
L_05E0:
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [bp - 0x22], dx        ; 39 56 DE
        jle     L_05EF                          ; 7E 03
        jmp     L_078E                          ; E9 9F 01
L_05EF:
        jl      L_05F9                          ; 7C 08
        cmp     word ptr [bp - 0x24], ax        ; 39 46 DC
        jbe     L_05F9                          ; 76 03
        jmp     L_078E                          ; E9 95 01
L_05F9:
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        cmp     word ptr [bp - 6], dx           ; 39 56 FA
        jge     L_0608                          ; 7D 03
        jmp     L_078E                          ; E9 86 01
L_0608:
        jg      L_0612                          ; 7F 08
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jae     L_0612                          ; 73 03
        jmp     L_078E                          ; E9 7C 01
L_0612:
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        cmp     word ptr [bp - 0x22], dx        ; 39 56 DE
        jl      L_0644                          ; 7C 26
        jg      L_0625                          ; 7F 05
        cmp     word ptr [bp - 0x24], ax        ; 39 46 DC
        jb      L_0644                          ; 72 1F
L_0625:
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [bp - 6], dx           ; 39 56 FA
        jg      L_0644                          ; 7F 13
        jl      L_0638                          ; 7C 05
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        ja      L_0644                          ; 77 0C
L_0638:
        mov     ax, word ptr [0x340]            ; A1 40 03
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        mov     ax, word ptr [0x344]            ; A1 44 03
        jmp     L_06DA                          ; E9 96 00
L_0644:
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        cmp     word ptr [bp - 6], dx           ; 39 56 FA
        jg      L_0678                          ; 7F 28
        jl      L_0657                          ; 7C 05
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        ja      L_0678                          ; 77 21
L_0657:
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [bp - 6], dx           ; 39 56 FA
        je      L_0666                          ; 74 03
        jmp     L_078E                          ; E9 28 01
L_0666:
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        je      L_066E                          ; 74 03
        jmp     L_078E                          ; E9 20 01
L_066E:
        cmp     word ptr [0x78], 0              ; 83 3E 78 00 00
        jne     L_0678                          ; 75 03
        jmp     L_078E                          ; E9 16 01
L_0678:
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp - 0x24]            ; FF 76 DC
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        call    far _entry_34                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x52], ax        ; 89 46 AE
        mov     word ptr [bp - 0x50], dx        ; 89 56 B0
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [0x1be8]               ; FF 36 E8 1B
        push    word ptr [0x1be6]               ; FF 36 E6 1B
        call    far _entry_175                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        mov     word ptr [bp - 0x54], dx        ; 89 56 AC
        mov     ax, word ptr [bp - 0x52]        ; 8B 46 AE
        sub     ax, word ptr [bp - 0x24]        ; 2B 46 DC
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x56]        ; 8B 46 AA
        sub     ax, word ptr [bp - 0x52]        ; 2B 46 AE
        push    ax                              ; 50
        lea     ax, [bp - 0x4c]                 ; 8D 46 B4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_08AF                          ; E8 EE 01
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     si, word ptr [bp - 0x1e]        ; 8B 76 E2
        add     si, word ptr [0x344]            ; 03 36 44 03
        mov     di, word ptr [bp - 0x4c]        ; 8B 7E B4
        add     di, ax                          ; 03 F8
        cmp     di, si                          ; 3B FE
        jle     L_06D8                          ; 7E 04
        mov     ax, si                          ; 8B C6
        jmp     L_06DA                          ; EB 02
L_06D8:
        mov     ax, di                          ; 8B C7
L_06DA:
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
        mov     si, word ptr [bp - 0x4c]        ; 8B 76 B4
        sub     si, word ptr [bp - 0x1e]        ; 2B 76 E2
        or      si, si                          ; 0B F6
        jle     L_06EB                          ; 7E 04
        mov     ax, si                          ; 8B C6
        jmp     L_06ED                          ; EB 02
L_06EB:
        sub     ax, ax                          ; 2B C0
L_06ED:
        add     ax, word ptr [0x1112]           ; 03 06 12 11
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [bp - 0x4c]        ; 8B 46 B4
        cmp     word ptr [bp - 0x4e], ax        ; 39 46 B2
        jle     L_0731                          ; 7E 35
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        cmp     word ptr [bp - 0x4c], ax        ; 39 46 B4
        jle     L_0709                          ; 7E 05
        mov     ax, word ptr [bp - 0x4c]        ; 8B 46 B4
        jmp     L_070C                          ; EB 03
L_0709:
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
L_070C:
        cmp     word ptr [bp - 0x4e], ax        ; 39 46 B2
        jle     L_072A                          ; 7E 19
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        cmp     word ptr [bp - 0x4c], ax        ; 39 46 B4
        jle     L_071E                          ; 7E 05
        mov     ax, word ptr [bp - 0x4c]        ; 8B 46 B4
        jmp     L_0721                          ; EB 03
L_071E:
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
L_0721:
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 0x4e]        ; 8B 46 B2
        sub     ax, cx                          ; 2B C1
        jmp     L_072C                          ; EB 02
L_072A:
        sub     ax, ax                          ; 2B C0
L_072C:
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        jmp     L_078E                          ; EB 5D
L_0731:
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [0x1be4], dx           ; 39 16 E4 1B
        jne     L_078E                          ; 75 50
        cmp     word ptr [0x1be2], ax           ; 39 06 E2 1B
        jne     L_078E                          ; 75 4A
        cmp     word ptr [bp - 6], dx           ; 39 56 FA
        jne     L_074E                          ; 75 05
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        je      L_0753                          ; 74 05
L_074E:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0755                          ; EB 02
L_0753:
        sub     ax, ax                          ; 2B C0
L_0755:
        xor     ax, word ptr [0x78]             ; 33 06 78 00
        je      L_078E                          ; 74 33
        mov     word ptr [0xf28], 0             ; C7 06 28 0F 00 00
        mov     ax, word ptr [0x350]            ; A1 50 03
        mov     word ptr [0x1290], ax           ; A3 90 12
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        add     ax, word ptr [bp - 0x14]        ; 03 46 EC
        mov     word ptr [0xc2c], ax            ; A3 2C 0C
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        mov     word ptr [0xc22], ax            ; A3 22 0C
        mov     word ptr [0x7ac], 1             ; C7 06 AC 07 01 00
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        cmp     word ptr [bp - 0x4c], ax        ; 39 46 B4
        jl      L_0789                          ; 7C 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_078B                          ; EB 02
L_0789:
        sub     ax, ax                          ; 2B C0
L_078B:
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
L_078E:
        push    word ptr [0x798]                ; FF 36 98 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x1112]               ; FF 36 12 11
        push    word ptr [bp - 0x14]            ; FF 76 EC
        cmp     word ptr [0x792], ax            ; 39 06 92 07
        je      L_07AC                          ; 74 09
        mov     ax, word ptr [0x78e]            ; A1 8E 07
        mov     dx, word ptr [0x790]            ; 8B 16 90 07
        jmp     L_07B2                          ; EB 06
L_07AC:
        mov     ax, 0x62                        ; B8 62 00
        mov     dx, 0xff                        ; BA FF 00
L_07B2:
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 72 01 00 00 [FIXUP]
        cmp     word ptr [bp - 0x20], 0         ; 83 7E E0 00
        jne     L_07D5                          ; 75 16
        push    word ptr [bp - 0x26]            ; FF 76 DA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [0x798]                ; FF 36 98 07
        push    ax                              ; 50
        jmp     L_083C                          ; EB 67
L_07D5:
        push    word ptr [bp - 0x26]            ; FF 76 DA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [0x798]                ; FF 36 98 07
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 19 08 00 00 [FIXUP]
        push    word ptr [bp - 0x26]            ; FF 76 DA
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [0x798]                ; FF 36 98 07
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        mov     dx, 0x33                        ; BA 33 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 48 08 00 00 [FIXUP]
        mov     si, word ptr [bp - 0x1c]        ; 8B 76 E4
        add     si, word ptr [bp - 0x20]        ; 03 76 E0
        push    word ptr [bp - 0x26]            ; FF 76 DA
        push    si                              ; 56
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
        sub     ax, word ptr [bp - 0x20]        ; 2B 46 E0
        push    ax                              ; 50
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [0x798]                ; FF 36 98 07
        push    si                              ; 56
L_083C:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        je      L_0857                          ; 74 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14F2                          ; E8 9B 0C
L_0857:
        cmp     byte ptr [bp - 0x18], 0         ; 80 7E E8 00
        je      L_088D                          ; 74 30
        push    word ptr [0x33e]                ; FF 36 3E 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_253                  ; 9A AA 03 00 00 [FIXUP]
        push    word ptr [bp - 0x26]            ; FF 76 DA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        add     ax, word ptr [bp - 0x14]        ; 03 46 EC
        sub     ax, word ptr [0x352]            ; 2B 06 52 03
        sub     ax, word ptr [0xec6]            ; 2B 06 C6 0E
        push    ax                              ; 50
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A 06 05 00 00 [FIXUP]
L_088D:
        cmp     byte ptr [0x348], 0             ; 80 3E 48 03 00
        je      L_08A2                          ; 74 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_259                  ; 9A FF FF 00 00 [FIXUP]
L_08A2:
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
; sub_08AF -- offset 0x08AF -- 79 instr
; Iterador con instrucciones de string (movsb/scasb/...) (79 instr).
; tags: complex_iterator, far, string_op
; callers: sub_0000, sub_1077
; calls (intra): sub_095B
;----------------------------------------------------------------------
L_08AF:
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
        mov     si, 0x35a                       ; BE 5A 03
        mov     ax, word ptr [0x340]            ; A1 40 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x336]            ; A1 36 03
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jge     L_08DE                          ; 7D 06
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp + 8], ax           ; 89 46 08
L_08DE:
        sub     di, di                          ; 2B FF
        jmp     L_08E7                          ; EB 05
L_08E2:
        lodsw   ax, word ptr [si]               ; AD
        add     word ptr [bp - 4], ax           ; 01 46 FC
        inc     di                              ; 47
L_08E7:
        cmp     word ptr [bp + 0xa], di         ; 39 7E 0A
        jg      L_08E2                          ; 7F F6
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        sub     di, di                          ; 2B FF
        jmp     L_0902                          ; EB 05
L_08FD:
        lodsw   ax, word ptr [si]               ; AD
        add     word ptr [bp - 4], ax           ; 01 46 FC
        inc     di                              ; 47
L_0902:
        cmp     word ptr [bp + 8], di           ; 39 7E 08
        jg      L_08FD                          ; 7F F6
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [0x320], 0             ; 83 3E 20 03 00
        jle     L_0950                          ; 7E 25
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_095B                          ; E8 25 00
        test    byte ptr [0x107e], 1            ; F6 06 7E 10 01
        jne     L_0950                          ; 75 13
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        jne     L_0950                          ; 75 0C
        test    byte ptr [0x107e], 0x80         ; F6 06 7E 10 80
        je      L_0950                          ; 74 05
        call    far _entry_124                  ; 9A FF FF 00 00 [FIXUP]
L_0950:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_095B -- offset 0x095B -- 386 instr
; Dispatcher: tabla de decisiones cmp+jcc (386 instr).
; tags: dispatcher, far
; callers: sub_08AF, sub_0ED1
; calls (intra): sub_0D60, sub_0ED1
;----------------------------------------------------------------------
L_095B:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x2e                        ; 83 EC 2E
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [bp + 8]               ; F7 6E 08
        mov     si, ax                          ; 8B F0
        add     si, 0x107e                      ; 81 C6 7E 10
        mov     al, byte ptr [si + 3]           ; 8A 44 03
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     ax, word ptr [si + 0x36]        ; 8B 44 36
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        test    byte ptr [si], 1                ; F6 04 01
        jne     L_0992                          ; 75 03
        jmp     L_0D53                          ; E9 C1 03
L_0992:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_09A4                          ; 74 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0ED1                          ; E8 34 05
        or      ax, ax                          ; 0B C0
        je      L_09A4                          ; 74 03
        jmp     L_0D53                          ; E9 AF 03
L_09A4:
        mov     word ptr [0x33e], 0xffff        ; C7 06 3E 03 FF FF
        call    far _entry_133                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        call    far _entry_255                  ; 9A 44 02 00 00 [FIXUP]
        cmp     word ptr [0x798], 0             ; 83 3E 98 07 00
        jne     L_09C9                          ; 75 08
        call    far _entry_254                  ; 9A 50 02 00 00 [FIXUP]
        jmp     L_0D53                          ; E9 8A 03
L_09C9:
        mov     al, byte ptr [si + 5]           ; 8A 44 05
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [0x33e], 0xffff        ; C7 06 3E 03 FF FF
        test    byte ptr [si], 2                ; F6 04 02
        je      L_09F7                          ; 74 1B
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_09EE                          ; 74 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0ED1                          ; E8 EA 04
        or      ax, ax                          ; 0B C0
        je      L_09EE                          ; 74 03
        jmp     L_0D53                          ; E9 65 03
L_09EE:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_122                  ; 9A FF FF 00 00 [FIXUP]
L_09F7:
        mov     word ptr [0x80e], 1             ; C7 06 0E 08 01 00
        mov     word ptr [bp - 0x1e], 0         ; C7 46 E2 00 00
        push    word ptr [si + 0x1a]            ; FF 74 1A
        push    word ptr [si + 0x18]            ; FF 74 18
        push    word ptr [si + 0x16]            ; FF 74 16
        push    word ptr [si + 0x14]            ; FF 74 14
        call    far _entry_34                   ; 9A 87 06 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     ax, word ptr [si + 0x1c]        ; 8B 44 1C
        mov     dx, word ptr [si + 0x1e]        ; 8B 54 1E
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_0A33:
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jl      L_0A41                          ; 7C 06
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_0A6B                          ; 75 2A
L_0A41:
        mov     al, byte ptr [si + 4]           ; 8A 44 04
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 0x28], ax        ; 39 46 D8
        jg      L_0A91                          ; 7F 40
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        mov     ax, word ptr [bp - 0x28]        ; 8B 46 D8
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, 0x28                        ; 05 28 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_95                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0A8D                          ; 75 22
L_0A6B:
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        mov     byte ptr [si + 3], al           ; 88 44 03
        call    far _entry_258                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1024], 0            ; C7 06 24 10 00 00
        and     byte ptr [si], 0xfe             ; 80 24 FE
        mov     ax, word ptr [0x13a4]           ; A1 A4 13
        mov     word ptr [si + 0x10], ax        ; 89 44 10
        mov     word ptr [si + 0x12], 0         ; C7 44 12 00 00
        jmp     L_0D53                          ; E9 C6 02
L_0A8D:
        add     byte ptr [si + 4], 5            ; 80 44 04 05
L_0A91:
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jl      L_0A9C                          ; 7C 03
        jmp     L_0BFC                          ; E9 60 01
L_0A9C:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0AB4                          ; 74 12
        cmp     word ptr [bp - 0x1e], 0         ; 83 7E E2 00
        jne     L_0AB4                          ; 75 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0ED1                          ; E8 24 04
        or      ax, ax                          ; 0B C0
        je      L_0AB4                          ; 74 03
        jmp     L_0C11                          ; E9 5D 01
L_0AB4:
        mov     bx, word ptr [bp - 0x1a]        ; 8B 5E E6
        mov     di, word ptr [bx]               ; 8B 3F
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     di, ax                          ; 03 F8
        mov     ax, word ptr [di + 0xe]         ; 8B 45 0E
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        test    byte ptr [di + 2], 1            ; F6 45 02 01
        je      L_0B20                          ; 74 52
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jl      L_0B20                          ; 7C 4A
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        cmp     word ptr [di + 8], dx           ; 39 55 08
        jl      L_0B20                          ; 7C 3F
        jg      L_0AE8                          ; 7F 05
        cmp     word ptr [di + 6], ax           ; 39 45 06
        jb      L_0B20                          ; 72 38
L_0AE8:
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        sub     ax, word ptr [di + 0xc]         ; 2B 45 0C
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        cmp     ax, word ptr [bp - 8]           ; 3B 46 F8
        jl      L_0B20                          ; 7C 2A
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        cmp     word ptr [bp - 0x2a], ax        ; 39 46 D6
        jl      L_0B06                          ; 7C 08
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        cmp     word ptr [bp - 0x28], ax        ; 39 46 D8
        jle     L_0B20                          ; 7E 1A
L_0B06:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        cmp     word ptr [di + 8], dx           ; 39 55 08
        jne     L_0B26                          ; 75 15
        cmp     word ptr [di + 6], ax           ; 39 45 06
        jne     L_0B26                          ; 75 10
        mov     al, byte ptr [di + 1]           ; 8A 45 01
        sub     ah, ah                          ; 2A E4
        cmp     ax, word ptr [bp - 0x12]        ; 3B 46 EE
        jae     L_0B26                          ; 73 06
L_0B20:
        inc     word ptr [bp - 6]               ; FF 46 FA
        jmp     L_0A91                          ; E9 6B FF
L_0B26:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        cmp     word ptr [di + 8], dx           ; 39 55 08
        je      L_0B34                          ; 74 03
        jmp     L_0BFC                          ; E9 C8 00
L_0B34:
        cmp     word ptr [di + 6], ax           ; 39 45 06
        je      L_0B3C                          ; 74 03
        jmp     L_0BFC                          ; E9 C0 00
L_0B3C:
        mov     al, byte ptr [di + 1]           ; 8A 45 01
        sub     ah, ah                          ; 2A E4
        cmp     ax, word ptr [bp - 0x12]        ; 3B 46 EE
        je      L_0B49                          ; 74 03
        jmp     L_0BFC                          ; E9 B3 00
L_0B49:
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        cmp     word ptr [bp - 0x2a], ax        ; 39 46 D6
        jle     L_0B5C                          ; 7E 0B
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 0x28], ax        ; 39 46 D8
        jle     L_0B5C                          ; 7E 03
        jmp     L_0BFC                          ; E9 A0 00
L_0B5C:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        cmp     word ptr [bp - 0x1e], 0         ; 83 7E E2 00
        je      L_0B89                          ; 74 21
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        dec     ax                              ; 48
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 85 F4
        mov     bx, word ptr [bp - 0x1a]        ; 8B 5E E6
        mov     di, word ptr [bx]               ; 8B 3F
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     di, ax                          ; 03 F8
L_0B89:
        mov     ax, word ptr [di + 4]           ; 8B 45 04
        cdq                                     ; 99
        add     ax, word ptr [di + 6]           ; 03 45 06
        adc     dx, word ptr [di + 8]           ; 13 55 08
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        test    byte ptr [di + 2], 8            ; F6 45 02 08
        je      L_0BA7                          ; 74 08
        mov     al, byte ptr [di + 1]           ; 8A 45 01
        sub     ah, ah                          ; 2A E4
        inc     ax                              ; 40
        jmp     L_0BA9                          ; EB 02
L_0BA7:
        sub     ax, ax                          ; 2B C0
L_0BA9:
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [di + 0xc]         ; 8B 45 0C
        add     word ptr [bp - 8], ax           ; 01 46 F8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jne     L_0BC2                          ; 75 08
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        cmp     word ptr [bp - 0x28], ax        ; 39 46 D8
        je      L_0BF2                          ; 74 30
L_0BC2:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        push    ax                              ; 50
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0D60                          ; E8 89 01
        cmp     word ptr [0x1026], 0            ; 83 3E 26 10 00
        je      L_0BE9                          ; 74 0B
        mov     bx, word ptr [bp - 0x1a]        ; 8B 5E E6
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_0CFC                          ; E9 13 01
L_0BE9:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        add     word ptr [bp - 0x24], ax        ; 01 46 DC
L_0BF2:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        inc     ax                              ; 40
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_0D4D                          ; E9 51 01
L_0BFC:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0C41                          ; 74 3F
        cmp     word ptr [bp - 0x1e], 0         ; 83 7E E2 00
        jne     L_0C41                          ; 75 39
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0ED1                          ; E8 C4 02
        or      ax, ax                          ; 0B C0
        je      L_0C41                          ; 74 30
L_0C11:
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jl      L_0C1C                          ; 7C 03
        jmp     L_0D53                          ; E9 37 01
L_0C1C:
        mov     bx, word ptr [bp - 0x1a]        ; 8B 5E E6
        mov     di, word ptr [bx]               ; 8B 3F
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     di, ax                          ; 03 F8
        mov     ax, word ptr [di + 0xe]         ; 8B 45 0E
        sub     ax, word ptr [di + 0xc]         ; 2B 45 0C
        cmp     ax, word ptr [bp - 8]           ; 3B 46 F8
        jl      L_0C38                          ; 7C 03
        jmp     L_0D53                          ; E9 1B 01
L_0C38:
        and     byte ptr [di + 2], 0xfe         ; 80 65 02 FE
        inc     word ptr [bp - 6]               ; FF 46 FA
        jmp     L_0C11                          ; EB D0
L_0C41:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far _entry_96                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        jne     L_0C11                          ; 75 AE
        mov     ax, word ptr [0x334]            ; A1 34 03
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [0x330]            ; A1 30 03
        mov     dx, word ptr [0x332]            ; 8B 16 32 03
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     ax, word ptr [0x34c]            ; A1 4C 03
        add     word ptr [bp - 8], ax           ; 01 46 F8
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [si + 0x10], ax        ; 89 44 10
        mov     bx, word ptr [bp - 0x1a]        ; 8B 5E E6
        mov     di, word ptr [bx]               ; 8B 3F
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     di, ax                          ; 03 F8
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jl      L_0C9B                          ; 7C 03
        jmp     L_0D21                          ; E9 86 00
L_0C9B:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        cmp     word ptr [di + 8], dx           ; 39 55 08
        jne     L_0D21                          ; 75 7B
        cmp     word ptr [di + 6], ax           ; 39 45 06
        jne     L_0D21                          ; 75 76
        mov     al, byte ptr [di + 1]           ; 8A 45 01
        sub     ah, ah                          ; 2A E4
        cmp     ax, word ptr [bp - 0x12]        ; 3B 46 EE
        jne     L_0D21                          ; 75 6C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jne     L_0CDC                          ; 75 19
        mov     ax, word ptr [di + 0xe]         ; 8B 45 0E
        sub     ax, word ptr [di + 0xc]         ; 2B 45 0C
        cmp     ax, word ptr [bp - 8]           ; 3B 46 F8
        jg      L_0CDC                          ; 7F 0E
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 6]               ; FF 76 FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     ax, 1                           ; B8 01 00
        jmp     L_0CE4                          ; EB 08
L_0CDC:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
L_0CE4:
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0D60                          ; E8 73 00
        cmp     word ptr [0x1026], 0            ; 83 3E 26 10 00
        je      L_0D21                          ; 74 2D
        mov     bx, word ptr [bp - 0x1a]        ; 8B 5E E6
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
L_0CFC:
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     bx, ax                          ; 03 D8
        and     byte ptr [bx + 2], 0xfe         ; 80 67 02 FE
        cmp     word ptr [bp - 0x1e], 0         ; 83 7E E2 00
        je      L_0D12                          ; 74 06
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        mov     word ptr [si + 0x10], ax        ; 89 44 10
L_0D12:
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_09F7                          ; E9 D6 FC
L_0D21:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 4]               ; FF 76 FC
        cmp     byte ptr [0x348], 0             ; 80 3E 48 03 00
        je      L_0D42                          ; 74 14
        cmp     word ptr [0x334], 0             ; 83 3E 34 03 00
        je      L_0D42                          ; 74 0D
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_0D42                          ; 7D 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0D44                          ; EB 02
L_0D42:
        sub     ax, ax                          ; 2B C0
L_0D44:
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 B3 F2
L_0D4D:
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_0A33                          ; E9 E0 FC
L_0D53:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0D60 -- offset 0x0D60 -- 146 instr
; Dispatcher: tabla de decisiones cmp+jcc (146 instr).
; tags: calls_user, dispatcher, far
; callers: sub_095B
; calls (inter): USER.SETRECT
;----------------------------------------------------------------------
L_0D60:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x20                        ; 83 EC 20
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [bp + 0xc]             ; F7 6E 0C
        mov     si, ax                          ; 8B F0
        add     si, 0x107e                      ; 81 C6 7E 10
        mov     bx, word ptr [si + 0x36]        ; 8B 5C 36
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [0x1026], 0            ; C7 06 26 10 00 00
        mov     al, byte ptr [si + 3]           ; 8A 44 03
        sub     ah, ah                          ; 2A E4
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     al, byte ptr [si + 3]           ; 8A 44 03
        sub     ah, ah                          ; 2A E4
        add     ax, word ptr [bp + 8]           ; 03 46 08
        mov     cl, byte ptr [si + 4]           ; 8A 4C 04
        sub     ch, ch                          ; 2A ED
        cmp     ax, cx                          ; 3B C1
        jae     L_0DAD                          ; 73 08
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        add     al, byte ptr [si + 3]           ; 02 44 03
        jmp     L_0DB0                          ; EB 03
L_0DAD:
        mov     al, byte ptr [si + 4]           ; 8A 44 04
L_0DB0:
        mov     byte ptr [si + 3], al           ; 88 44 03
        sub     ah, ah                          ; 2A E4
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        cmp     ax, word ptr [bp - 0xe]         ; 3B 46 F2
        jbe     L_0DC5                          ; 76 05
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        jmp     L_0DD0                          ; EB 0B
L_0DC5:
        mov     al, byte ptr [si + 3]           ; 8A 44 03
        sub     ah, ah                          ; 2A E4
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
L_0DD0:
        or      ax, ax                          ; 0B C0
        jae     L_0DD8                          ; 73 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0DF8                          ; EB 20
L_0DD8:
        mov     al, byte ptr [si + 3]           ; 8A 44 03
        sub     ah, ah                          ; 2A E4
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        cmp     ax, word ptr [bp - 0xe]         ; 3B 46 F2
        jbe     L_0DED                          ; 76 05
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        jmp     L_0DF8                          ; EB 0B
L_0DED:
        mov     al, byte ptr [si + 3]           ; 8A 44 03
        sub     ah, ah                          ; 2A E4
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
L_0DF8:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     di, word ptr [bp + 0xa]         ; 8B 7E 0A
        mov     cl, 4                           ; B1 04
        shl     di, cl                          ; D3 E7
        add     di, word ptr [bp - 4]           ; 03 7E FC
        mov     word ptr [bp - 0x10], di        ; 89 7E F0
        mov     ax, word ptr [di + 0xe]         ; 8B 45 0E
        sub     ax, word ptr [di + 0xc]         ; 2B 45 0C
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp - 0x12]        ; 2B 46 EE
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        jle     L_0E88                          ; 7E 68
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, word ptr [bp + 8]           ; 03 46 08
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0E4F                          ; 74 0F
        push    di                              ; 57
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
L_0E4F:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_0E55:
        mov     al, byte ptr [si + 3]           ; 8A 44 03
        sub     ah, ah                          ; 2A E4
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jae     L_0E88                          ; 73 29
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jge     L_0E76                          ; 7D 11
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cmp     word ptr [bx + 0xe], ax         ; 39 47 0E
        jle     L_0E76                          ; 7E 06
        and     byte ptr [bx + 2], 0xfe         ; 80 67 02 FE
        jmp     L_0E7F                          ; EB 09
L_0E76:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     word ptr [bx + 0xe], ax         ; 01 47 0E
L_0E7F:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        add     word ptr [bp - 0x10], 0x10      ; 83 46 F0 10
        jmp     L_0E55                          ; EB CD
L_0E88:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0EC1                          ; 74 33
        lea     ax, [bp - 0x20]                 ; 8D 46 E0
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jge     L_0EA3                          ; 7D 05
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        jmp     L_0EA6                          ; EB 03
L_0EA3:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
L_0EA6:
        push    ax                              ; 50
        push    word ptr [si + 6]               ; FF 74 06
        push    word ptr [si + 0xc]             ; FF 74 0C
        call    far USER.SETRECT                ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x20]                 ; 8D 46 E0
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_261                  ; 9A FF FF 00 00 [FIXUP]
L_0EC1:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0ED1 -- offset 0x0ED1 -- 179 instr
; Dispatcher: tabla de decisiones cmp+jcc (179 instr).
; tags: calls_user, dispatcher, far
; callers: sub_095B
; calls (intra): sub_095B
; calls (inter): USER.DISPATCHMESSAGE, USER.GETMESSAGE, USER.PEEKMESSAGE, USER.TRANSLATEMESSAGE
;----------------------------------------------------------------------
L_0ED1:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        jmp     L_0F59                          ; EB 7C
L_0EDD:
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ax                              ; 50
        call    far _entry_260                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0EFB                          ; 75 11
        cmp     word ptr [0xbe4], 0x101         ; 81 3E E4 0B 01 01
        jne     L_0F29                          ; 75 37
        mov     ax, word ptr [0xbe2]            ; A1 E2 0B
        cmp     word ptr [0x10aa], ax           ; 39 06 AA 10
        jne     L_0F29                          ; 75 2E
L_0EFB:
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.GETMESSAGE             ; 9A 55 0F 00 00 [FIXUP]
        mov     ax, word ptr [0xbe2]            ; A1 E2 0B
        cmp     word ptr [0x10aa], ax           ; 39 06 AA 10
        je      L_0F59                          ; 74 46
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.DISPATCHMESSAGE        ; 9A 46 0F 00 00 [FIXUP]
        jmp     L_0F59                          ; EB 30
L_0F29:
        mov     ax, word ptr [0xbe4]            ; A1 E4 0B
        cmp     ax, 0x113                       ; 3D 13 01
        je      L_0F4A                          ; 74 19
        cmp     ax, 0x118                       ; 3D 18 01
        je      L_0F4A                          ; 74 14
        cmp     ax, 0x200                       ; 3D 00 02
        je      L_0F40                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0F72                          ; EB 32
L_0F40:
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
L_0F4A:
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.GETMESSAGE             ; 9A FF FF 00 00 [FIXUP]
L_0F59:
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.PEEKMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0F70                          ; 74 03
        jmp     L_0EDD                          ; E9 6D FF
L_0F70:
        sub     ax, ax                          ; 2B C0
L_0F72:
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
        sub     sp, 0x10                        ; 83 EC 10
        push    si                              ; 56
L_0F89:
        push    word ptr [0x322]                ; FF 36 22 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_095B                          ; E8 C6 F9
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_215                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        test    byte ptr [bx], 1                ; F6 07 01
        je      L_0FB0                          ; 74 07
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        je      L_0F89                          ; 74 D9
L_0FB0:
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     bx, word ptr [bx + 0x36]        ; 8B 5F 36
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     al, byte ptr [bx + 3]           ; 8A 47 03
        sub     ah, ah                          ; 2A E4
L_0FCA:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_0FCD:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        inc     ax                              ; 40
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        jge     L_104B                          ; 7D 75
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        mov     dx, word ptr [bx + 8]           ; 8B 57 08
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        cmp     dx, word ptr [bp + 8]           ; 3B 56 08
        jg      L_1065                          ; 7F 67
        jl      L_1005                          ; 7C 05
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        ja      L_1065                          ; 77 60
L_1005:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        cmp     word ptr [bp - 8], dx           ; 39 56 F8
        jne     L_101E                          ; 75 0E
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jne     L_101E                          ; 75 09
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        cmp     byte ptr [bx + 1], 0            ; 80 7F 01 00
        jne     L_1065                          ; 75 47
L_101E:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jne     L_0FCD                          ; 75 9E
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_0FCD                          ; 75 99
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        add     ax, word ptr [bx + 6]           ; 03 47 06
        adc     dx, word ptr [bx + 8]           ; 13 57 08
        cmp     dx, word ptr [bp + 8]           ; 3B 56 08
        jne     L_104B                          ; 75 05
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        je      L_0FCD                          ; 74 82
L_104B:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bx], ax               ; 89 07
        mov     si, word ptr [bp - 0xc]         ; 8B 76 F4
        mov     cl, 4                           ; B1 04
        shl     si, cl                          ; D3 E6
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + si + 6]      ; 8B 40 06
        mov     dx, word ptr [bx + si + 8]      ; 8B 50 08
        jmp     L_106B                          ; EB 06
L_1065:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        jmp     L_0FCA                          ; E9 5F FF
L_106B:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1077 -- offset 0x1077 -- 334 instr
; Dispatcher: tabla de decisiones cmp+jcc (334 instr).
; tags: calls_user, dispatcher, far
; callers: sub_1440
; calls (intra): sub_08AF, sub_14F2
; calls (inter): USER.INVERTRECT
;----------------------------------------------------------------------
L_1077:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x2c                        ; 83 EC 2C
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        cmp     word ptr [bp + 0xe], dx         ; 39 56 0E
        jne     L_109A                          ; 75 0A
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        jne     L_109A                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_109C                          ; EB 02
L_109A:
        sub     ax, ax                          ; 2B C0
L_109C:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     word ptr [0x31e], 0             ; 83 3E 1E 03 00
        je      L_10A9                          ; 74 03
        jmp     L_1409                          ; E9 60 03
L_10A9:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        cmp     word ptr [bp + 0xe], dx         ; 39 56 0E
        jle     L_10B7                          ; 7E 03
        jmp     L_1409                          ; E9 52 03
L_10B7:
        jl      L_10C1                          ; 7C 08
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        jbe     L_10C1                          ; 76 03
        jmp     L_1409                          ; E9 48 03
L_10C1:
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        cmp     word ptr [bp + 0xa], dx         ; 39 56 0A
        jge     L_10D0                          ; 7D 03
        jmp     L_1409                          ; E9 39 03
L_10D0:
        jg      L_10DA                          ; 7F 08
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jae     L_10DA                          ; 73 03
        jmp     L_1409                          ; E9 2F 03
L_10DA:
        cmp     word ptr [0x706], 0             ; 83 3E 06 07 00
        je      L_10E4                          ; 74 03
        jmp     L_1409                          ; E9 25 03
L_10E4:
        cmp     word ptr [0x13de], 0            ; 83 3E DE 13 00
        je      L_111C                          ; 74 31
        cmp     word ptr [0x46], 0              ; 83 3E 46 00 00
        je      L_111C                          ; 74 2A
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        test    byte ptr [0xb82], 0x10          ; F6 06 82 0B 10
        je      L_111C                          ; 74 14
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        cmp     word ptr [bp + 0xa], dx         ; 39 56 0A
        jne     L_111C                          ; 75 08
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jne     L_111C                          ; 75 03
        jmp     L_1409                          ; E9 ED 02
L_111C:
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        sub     ax, word ptr [0x1112]           ; 2B 06 12 11
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
L_1135:
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     al, byte ptr [bx + 3]           ; 8A 47 03
        sub     ah, ah                          ; 2A E4
        cmp     ax, word ptr [bp - 0xa]         ; 3B 46 F6
        ja      L_1146                          ; 77 03
        jmp     L_1409                          ; E9 C3 02
L_1146:
        mov     bx, word ptr [bx + 0x36]        ; 8B 5F 36
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        mov     cl, 4                           ; B1 04
        shl     dx, cl                          ; D3 E2
        add     ax, dx                          ; 03 C2
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        test    byte ptr [bx + 2], 1            ; F6 47 02 01
        jne     L_1164                          ; 75 05
L_115F:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        jmp     L_1135                          ; EB D1
L_1164:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        mov     dx, word ptr [bx + 8]           ; 8B 57 08
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        cmp     word ptr [bp - 0x16], dx        ; 39 56 EA
        jle     L_1181                          ; 7E 03
        jmp     L_1409                          ; E9 88 02
L_1181:
        jl      L_118B                          ; 7C 08
        cmp     word ptr [bp - 0x18], ax        ; 39 46 E8
        jbe     L_118B                          ; 76 03
        jmp     L_1409                          ; E9 7E 02
L_118B:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [bp - 0x16], dx        ; 39 56 EA
        jle     L_119A                          ; 7E 03
        jmp     L_1409                          ; E9 6F 02
L_119A:
        jl      L_11A4                          ; 7C 08
        cmp     word ptr [bp - 0x18], ax        ; 39 46 E8
        jbe     L_11A4                          ; 76 03
        jmp     L_1409                          ; E9 65 02
L_11A4:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        cmp     word ptr [bp - 0x16], dx        ; 39 56 EA
        jne     L_11CA                          ; 75 1B
        cmp     word ptr [bp - 0x18], ax        ; 39 46 E8
        jne     L_11CA                          ; 75 16
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        cmp     word ptr [bp + 0xa], dx         ; 39 56 0A
        je      L_11C2                          ; 74 03
        jmp     L_1409                          ; E9 47 02
L_11C2:
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        je      L_11CA                          ; 74 03
        jmp     L_1409                          ; E9 3F 02
L_11CA:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        add     ax, word ptr [bp - 0x18]        ; 03 46 E8
        adc     dx, word ptr [bp - 0x16]        ; 13 56 EA
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     dx, word ptr [bp - 0x16]        ; 8B 56 EA
        cmp     word ptr [bp + 0xe], dx         ; 39 56 0E
        jg      L_1242                          ; 7F 5A
        jl      L_11EF                          ; 7C 05
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        ja      L_1242                          ; 77 53
L_11EF:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        cmp     word ptr [bp + 0xa], dx         ; 39 56 0A
        jl      L_1242                          ; 7C 48
        jg      L_1201                          ; 7F 05
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jb      L_1242                          ; 72 41
L_1201:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     cl, 4                           ; B1 04
        shr     ax, cl                          ; D3 E8
        and     ah, 0xf                         ; 80 E4 0F
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        test    byte ptr [bx + 2], 4            ; F6 47 02 04
        je      L_123A                          ; 74 23
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        cmp     word ptr [bp + 0xa], dx         ; 39 56 0A
        jne     L_123A                          ; 75 18
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jne     L_123A                          ; 75 13
        cmp     word ptr [bp - 0x16], dx        ; 39 56 EA
        jne     L_123A                          ; 75 0E
        cmp     word ptr [bp - 0x18], ax        ; 39 46 E8
        jne     L_123A                          ; 75 09
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
L_1234:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_130C                          ; E9 D2 00
L_123A:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        jmp     L_1234                          ; EB F2
L_1242:
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        je      L_126A                          ; 74 22
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        cmp     word ptr [bp + 0xe], dx         ; 39 56 0E
        jne     L_126A                          ; 75 17
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        jne     L_126A                          ; 75 12
        cmp     word ptr [0x78], 0              ; 83 3E 78 00 00
        je      L_126A                          ; 74 0B
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_1234                          ; EB CA
L_126A:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        cmp     word ptr [bp + 0xe], dx         ; 39 56 0E
        jle     L_1278                          ; 7E 03
        jmp     L_115F                          ; E9 E7 FE
L_1278:
        jl      L_1282                          ; 7C 08
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        jb      L_1282                          ; 72 03
        jmp     L_115F                          ; E9 DD FE
L_1282:
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _entry_34                   ; 9A 0F 0A 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x1c], dx        ; 89 56 E4
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_175                  ; 9A A0 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x18]            ; FF 76 E8
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     al, byte ptr [bx + 1]           ; 8A 47 01
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [0x13a8]               ; FF 36 A8 13
        push    word ptr [0x13a6]               ; FF 36 A6 13
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far _entry_96                   ; 9A 58 0C 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        sub     ax, word ptr [bp - 0x18]        ; 2B 46 E8
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        sub     ax, word ptr [bp - 0x1e]        ; 2B 46 E2
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_08AF                          ; E8 C4 F5
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [bp - 0x1a]        ; 03 46 E6
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     bx, word ptr [bx + 0x36]        ; 8B 5F 36
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        mov     cl, 4                           ; B1 04
        shl     dx, cl                          ; D3 E2
        add     ax, dx                          ; 03 C2
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_130C:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     si, word ptr [bx + 0xa]         ; 8B 77 0A
        add     si, word ptr [bp - 0xc]         ; 03 76 F4
        cmp     word ptr [bp - 8], si           ; 39 76 F8
        jge     L_131F                          ; 7D 05
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_1321                          ; EB 02
L_131F:
        mov     ax, si                          ; 8B C6
L_1321:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jle     L_1381                          ; 7E 55
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jg      L_1337                          ; 7F 03
        jmp     L_115F                          ; E9 28 FE
L_1337:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        sub     ax, word ptr [bx + 0xc]         ; 2B 47 0C
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     si, word ptr [bp - 6]           ; 8B 76 FA
        sub     si, word ptr [bp - 0xc]         ; 2B 76 F4
        or      si, si                          ; 0B F6
        jle     L_1351                          ; 7E 04
        mov     ax, si                          ; 8B C6
        jmp     L_1353                          ; EB 02
L_1351:
        sub     ax, ax                          ; 2B C0
L_1353:
        add     ax, word ptr [0x1112]           ; 03 06 12 11
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        add     ax, word ptr [0x1112]           ; 03 06 12 11
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        push    word ptr [0x10b0]               ; FF 36 B0 10
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.INVERTRECT             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_115F                          ; E9 DE FD
L_1381:
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        jne     L_138A                          ; 75 03
        jmp     L_115F                          ; E9 D5 FD
L_138A:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        je      L_1395                          ; 74 03
        jmp     L_115F                          ; E9 CA FD
L_1395:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x18]            ; FF 76 E8
        mov     al, byte ptr [bx + 1]           ; 8A 47 01
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [0x13a8]               ; FF 36 A8 13
        push    word ptr [0x13a6]               ; FF 36 A6 13
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far _entry_96                   ; 9A D0 12 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        xor     ax, word ptr [0xf28]            ; 33 06 28 0F
        je      L_1409                          ; 74 41
        cmp     word ptr [0xf28], 0             ; 83 3E 28 0F 00
        jne     L_1404                          ; 75 35
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        add     ax, word ptr [0x1112]           ; 03 06 12 11
        mov     word ptr [0xc22], ax            ; A3 22 0C
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        sub     ax, word ptr [0x34e]            ; 2B 06 4E 03
        mov     word ptr [0xc2c], ax            ; A3 2C 0C
        mov     si, word ptr [0x34c]            ; 8B 36 4C 03
        sub     si, word ptr [0x34e]            ; 2B 36 4E 03
        cmp     word ptr [0x350], si            ; 39 36 50 03
        jge     L_13F9                          ; 7D 05
        mov     ax, word ptr [0x350]            ; A1 50 03
        jmp     L_13FB                          ; EB 02
L_13F9:
        mov     ax, si                          ; 8B C6
L_13FB:
        mov     word ptr [0x1290], ax           ; A3 90 12
        mov     word ptr [0x7ac], 1             ; C7 06 AC 07 01 00
L_1404:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14F2                          ; E8 E9 00
L_1409:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1415 -- offset 0x1415 -- 24 instr
; Funcion sin clasificar definitiva (24 instr).
; tags: far, small
; callers: sub_1440
; calls (intra): sub_1440
;----------------------------------------------------------------------
L_1415:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        add     ax, 0x107e                      ; 05 7E 10
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x13a4]               ; FF 36 A4 13
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1440                          ; E8 0B 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1440 -- offset 0x1440 -- 84 instr
; Dispatcher: tabla de decisiones cmp+jcc (84 instr).
; tags: dispatcher, far
; callers: sub_1415
; calls (intra): sub_1077, sub_1415
;----------------------------------------------------------------------
L_1440:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_148B                          ; 7C 3B
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        je      L_148B                          ; 74 33
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        or      byte ptr [bx], 1                ; 80 0F 01
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bx + 0x10], ax        ; 39 47 10
        jge     L_146E                          ; 7D 05
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
        jmp     L_1471                          ; EB 03
L_146E:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
L_1471:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     word ptr [bx + 0x10], ax        ; 89 47 10
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bx + 0x12], ax        ; 39 47 12
        jl      L_1485                          ; 7C 03
        mov     ax, word ptr [bx + 0x12]        ; 8B 47 12
L_1485:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     word ptr [bx + 0x12], ax        ; 89 47 12
L_148B:
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
        sub     sp, 4                           ; 83 EC 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1415                          ; E8 6A FF
        mov     word ptr [0x33e], 0xffff        ; C7 06 3E 03 FF FF
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
        cmp     word ptr [0x31e], 0             ; 83 3E 1E 03 00
        jne     L_14E9                          ; 75 1E
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        push    word ptr [0x1be8]               ; FF 36 E8 1B
        push    word ptr [0x1be6]               ; FF 36 E6 1B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1077                          ; E8 94 FB
        mov     word ptr [0x31e], 1             ; C7 06 1E 03 01 00
L_14E9:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_14F2 -- offset 0x14F2 -- 58 instr
; Funcion mediana (58 instr, 1 calls).
; tags: calls_gdi, far, medium
; callers: sub_0000, sub_1077
; calls (inter): GDI.PATBLT
;----------------------------------------------------------------------
L_14F2:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        cmp     word ptr [0xf28], 0             ; 83 3E 28 0F 00
        jne     L_1516                          ; 75 12
        mov     si, word ptr [0xc2c]            ; 8B 36 2C 0C
        sub     si, word ptr [0x108c]           ; 2B 36 8C 10
        cmp     word ptr [0x1290], si           ; 39 36 90 12
        jle     L_1516                          ; 7E 04
        mov     word ptr [0x1290], si           ; 89 36 90 12
L_1516:
        push    word ptr [0x10b0]               ; FF 36 B0 10
        push    word ptr [0xc22]                ; FF 36 22 0C
        mov     ax, word ptr [0xc2c]            ; A1 2C 0C
        sub     ax, word ptr [0x1290]           ; 2B 06 90 12
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [0x1290]               ; FF 36 90 12
        mov     ax, 9                           ; B8 09 00
        mov     dx, 0x55                        ; BA 55 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A B5 07 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        sub     ax, word ptr [0xf28]            ; 2B 06 28 0F
        mov     word ptr [0xf28], ax            ; A3 28 0F
        pop     si                              ; 5E
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
        cmp     word ptr [0xf28], 0             ; 83 3E 28 0F 00
        je      L_1565                          ; 74 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14F2                          ; E8 8D FF
L_1565:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

WRITE_TEXT ENDS

        END
