; AUTO-GENERATED from original WRITE segment 58
; segment_size=649 bytes, flags=0xf130
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
; sub_0000 -- offset 0x0000 -- 173 instr
; Dispatcher: tabla de decisiones cmp+jcc (173 instr).
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
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [0x123e]           ; A1 3E 12
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_0039                          ; EB 1F
L_001A:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     word ptr [bx + 2], 0x7fff       ; 81 7F 02 FF 7F
        je      L_0032                          ; 74 0E
        test    byte ptr [bx + 6], 1            ; F6 47 06 01
        je      L_0032                          ; 74 08
        push    word ptr [bx + 2]               ; FF 77 02
        call    far _entry_57                   ; 9A FF FF 00 00 [FIXUP]
L_0032:
        inc     word ptr [bp - 4]               ; FF 46 FC
        add     word ptr [bp - 6], 9            ; 83 46 FA 09
L_0039:
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_001A                          ; 7C D9
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
        sub     sp, 0x1c                        ; 83 EC 1C
        push    si                              ; 56
        cmp     word ptr [bp + 6], 0x7fff       ; 81 7E 06 FF 7F
        jne     L_0062                          ; 75 03
        jmp     L_01A8                          ; E9 46 01
L_0062:
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 99 FF
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     bx, ax                          ; 8B D8
        push    word ptr [bx + 2]               ; FF 77 02
        push    word ptr [bx]                   ; FF 37
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        mov     cl, 7                           ; B1 07
        shl     ax, cl                          ; D3 E0
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_175                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_0096                          ; 75 03
        jmp     L_01A8                          ; E9 12 01
L_0096:
        cmp     word ptr [0x3c], 0              ; 83 3E 3C 00 00
        je      L_00AA                          ; 74 0D
        push    ax                              ; 50
        mov     ax, 0x300                       ; B8 00 03
        push    ax                              ; 50
        call    far _entry_48                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
L_00AA:
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0xa58]                ; FF 36 58 0A
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    ax                              ; 50
        call    far _entry_328                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        dec     ax                              ; 48
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 7                           ; B9 07 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        inc     ax                              ; 40
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     dx, word ptr [bp - 0x18]        ; 8B 56 E8
        mov     cl, 7                           ; B1 07
        shl     dx, cl                          ; D3 E2
        sub     ax, dx                          ; 2B C2
        add     ax, 0x80                        ; 05 80 00
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
        jmp     L_013D                          ; EB 4B
L_00F2:
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [bp - 0x12]            ; F7 6E EE
        add     ax, word ptr [0x123e]           ; 03 06 3E 12
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     bx, word ptr [bp - 0x1a]        ; 8B 5E E6
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp - 0x1a]        ; 8B 5E E6
        dec     word ptr [bp - 4]               ; FF 4E FC
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     bx, word ptr [bp - 0x1a]        ; 8B 5E E6
        and     byte ptr [bx + 6], 0xfe         ; 80 67 06 FE
        mov     bx, word ptr [bp - 0x1a]        ; 8B 5E E6
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        and     ax, 1                           ; 25 01 00
        or      ah, 1                           ; 80 CC 01
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     bx, word ptr [bp - 0x1a]        ; 8B 5E E6
        mov     byte ptr [bx + 8], 0xff         ; C6 47 08 FF
        inc     word ptr [bp - 0x12]            ; FF 46 EE
L_013D:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jl      L_00F2                          ; 7C AD
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [bp - 0x18]            ; F7 6E E8
        mov     si, ax                          ; 8B F0
        add     si, word ptr [0x123e]           ; 03 36 3E 12
        sub     si, 3                           ; 83 EE 03
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        and     ah, 0x7f                        ; 80 E4 7F
        shl     ax, 1                           ; D1 E0
        mov     cx, word ptr [si]               ; 8B 0C
        and     cx, 1                           ; 81 E1 01 00
        or      ax, cx                          ; 0B C1
        mov     word ptr [si], ax               ; 89 04
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        jmp     L_0197                          ; EB 29
L_016E:
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [bp - 0x12]            ; F7 6E EE
        add     ax, word ptr [0x123e]           ; 03 06 3E 12
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     bx, ax                          ; 8B D8
        dec     word ptr [bp - 4]               ; FF 4E FC
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     bx, word ptr [bp - 0x1c]        ; 8B 5E E4
        and     byte ptr [bx + 6], 0xfe         ; 80 67 06 FE
        mov     bx, word ptr [bp - 0x1c]        ; 8B 5E E4
        mov     byte ptr [bx + 8], 0xff         ; C6 47 08 FF
        inc     word ptr [bp - 0x12]            ; FF 46 EE
L_0197:
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jl      L_016E                          ; 7C CF
        dec     ax                              ; 48
        mov     word ptr [0x1bf4], ax           ; A3 F4 1B
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01B4                          ; E8 0C 00
L_01A8:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01B4 -- offset 0x01B4 -- 82 instr
; Dispatcher: tabla de decisiones cmp+jcc (82 instr).
; tags: dispatcher, far
; callers: sub_0000
;----------------------------------------------------------------------
L_01B4:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x10                        ; 83 EC 10
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [0x1bd2]               ; F7 2E D2 1B
        add     ax, word ptr [0x123e]           ; 03 06 3E 12
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        jmp     L_01E5                          ; EB 0D
L_01D8:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     di, word ptr [0x1bfe]           ; 8B 3E FE 1B
        mov     byte ptr [bx + di], 0xff        ; C6 01 FF
        inc     word ptr [bp - 6]               ; FF 46 FA
L_01E5:
        mov     ax, word ptr [0x1070]           ; A1 70 10
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jl      L_01D8                          ; 7C EB
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        mov     si, word ptr [0x123e]           ; 8B 36 3E 12
        jmp     L_0276                          ; EB 7E
L_01F8:
        cmp     word ptr [si + 2], 0x7fff       ; 81 7C 02 FF 7F
        je      L_0270                          ; 74 71
        mov     cx, word ptr [si]               ; 8B 0C
        inc     cx                              ; 41
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        inc     ax                              ; 40
        mul     cx                              ; F7 E1
        and     ah, 0x7f                        ; 80 E4 7F
        sub     dx, dx                          ; 2B D2
        div     word ptr [0x1070]               ; F7 36 70 10
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     bx, dx                          ; 8B DA
        mov     di, word ptr [0x1bfe]           ; 8B 3E FE 1B
        mov     al, byte ptr [bx + di]          ; 8A 01
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 4], 0xff         ; C7 46 FC FF 00
        jmp     L_0242                          ; EB 1A
L_0228:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [bp - 8]               ; F7 6E F8
        mov     di, ax                          ; 8B F8
        mov     bx, word ptr [0x123e]           ; 8B 1E 3E 12
        mov     al, byte ptr [bx + di + 8]      ; 8A 41 08
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_0242:
        cmp     word ptr [bp - 8], 0xff         ; 81 7E F8 FF 00
        jne     L_0228                          ; 75 DF
        cmp     word ptr [bp - 4], 0xff         ; 81 7E FC FF 00
        jne     L_025E                          ; 75 0E
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     di, word ptr [0x1bfe]           ; 8B 3E FE 1B
        mov     al, byte ptr [bp - 0xe]         ; 8A 46 F2
        mov     byte ptr [bx + di], al          ; 88 01
        jmp     L_0270                          ; EB 12
L_025E:
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        mov     di, ax                          ; 8B F8
        mov     bx, word ptr [0x123e]           ; 8B 1E 3E 12
        mov     al, byte ptr [bp - 0xe]         ; 8A 46 F2
        mov     byte ptr [bx + di + 8], al      ; 88 41 08
L_0270:
        add     si, 9                           ; 83 C6 09
        inc     word ptr [bp - 0xe]             ; FF 46 F2
L_0276:
        cmp     word ptr [bp - 0xc], si         ; 39 76 F4
        jbe     L_027E                          ; 76 03
        jmp     L_01F8                          ; E9 7A FF
L_027E:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

WRITE_TEXT ENDS

        END
