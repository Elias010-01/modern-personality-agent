; AUTO-GENERATED from original WRITE segment 29
; segment_size=621 bytes, flags=0xf130
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
        sub     sp, 0x12                        ; 83 EC 12
        push    si                              ; 56
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 0xc]    ; 8B 40 0C
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 6                           ; 3D 06 00
        jne     L_0034                          ; 75 03
        jmp     L_00C8                          ; E9 94 00
L_0034:
        cmp     ax, 9                           ; 3D 09 00
        je      L_00B5                          ; 74 7C
        cmp     ax, 0x10                        ; 3D 10 00
        jne     L_0041                          ; 75 03
        jmp     L_0133                          ; E9 F2 00
L_0041:
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0050                          ; 74 0A
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_004E                          ; 75 03
        jmp     L_00E5                          ; E9 97 00
L_004E:
        jmp     L_00C4                          ; EB 74
L_0050:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_55                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        jne     L_0063                          ; 75 05
        mov     ax, 0xfa4                       ; B8 A4 0F
        jmp     L_0068                          ; EB 05
L_0063:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     ax, word ptr [bx]               ; 8B 07
L_0068:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        cmp     word ptr [bx + 6], -1           ; 83 7F 06 FF
        je      L_0092                          ; 74 1F
        push    word ptr [bx + 6]               ; FF 77 06
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        call    far _entry_78                   ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     byte ptr [bp + si - 0xe], 0     ; C6 42 F2 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        jmp     L_009D                          ; EB 0B
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0092 -- offset 0x0092 -- 71 instr
; Dispatcher: tabla de decisiones cmp+jcc (71 instr).
; tags: calls_user, dispatcher, far
; calls (intra): sub_014E
; calls (inter): USER.SETDLGITEMTEXT, USER.SHOWCURSOR
;----------------------------------------------------------------------
L_0092:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 0x702                       ; B8 02 07
        push    ds                              ; 1E
L_009D:
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _entry_73                   ; 9A FF FF 00 00 [FIXUP]
L_00AF:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0142                          ; E9 8D 00
L_00B5:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_00C4                          ; 74 09
        push    word ptr [0x1240]               ; FF 36 40 12
        call    far _entry_63                   ; 9A FF FF 00 00 [FIXUP]
L_00C4:
        sub     ax, ax                          ; 2B C0
        jmp     L_0142                          ; EB 7A
L_00C8:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_00D4                          ; 74 06
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x7aa], ax            ; A3 AA 07
L_00D4:
        cmp     word ptr [0x60], 0              ; 83 3E 60 00 00
        je      L_00C4                          ; 74 E9
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00C4                          ; EB DF
L_00E5:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_00F4                          ; 74 07
        cmp     ax, 2                           ; 3D 02 00
        je      L_0133                          ; 74 41
        jmp     L_00C4                          ; EB D0
L_00F4:
        mov     ax, 0x1038                      ; B8 38 10
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x200a                      ; B8 0A 20
        push    ax                              ; 50
        call    far _entry_86                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0120                          ; 75 08
        mov     word ptr [0xbda], 0             ; C7 06 DA 0B 00 00
        jmp     L_00AF                          ; EB 8F
L_0120:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_014E                          ; E8 29 00
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        test    byte ptr [bx], 0x80             ; F6 07 80
        je      L_0133                          ; 74 05
        call    far _entry_124                  ; 9A FF FF 00 00 [FIXUP]
L_0133:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_59                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00AF                          ; E9 6D FF
L_0142:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_014E -- offset 0x014E -- 114 instr
; Dispatcher: tabla de decisiones cmp+jcc (114 instr).
; tags: dispatcher, far
; callers: sub_0092
;----------------------------------------------------------------------
L_014E:
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
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bx + di + 0x10]   ; 8B 41 10
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        or      ax, ax                          ; 0B C0
        jne     L_017E                          ; 75 03
        jmp     L_0207                          ; E9 89 00
L_017E:
        mov     bx, ax                          ; 8B D8
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
L_0187:
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     si, word ptr [bx]               ; 8B 37
        add     si, 4                           ; 83 C6 04
L_0194:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_01DB                          ; 7D 3F
        mov     ax, word ptr [0x1038]           ; A1 38 10
        cmp     word ptr [si], ax               ; 39 04
        jne     L_01D3                          ; 75 30
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jne     L_01C5                          ; 75 1C
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        inc     ax                              ; 40
        cmp     ax, word ptr [bp - 0xe]         ; 3B 46 F2
        je      L_01C5                          ; 74 13
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        cmp     word ptr [si + 0xa], dx         ; 39 54 0A
        jl      L_01D3                          ; 7C 15
        jg      L_01C5                          ; 7F 05
        cmp     word ptr [si + 8], ax           ; 39 44 08
        jbe     L_01D3                          ; 76 0E
L_01C5:
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     dx, word ptr [si + 4]           ; 8B 54 04
L_01CB:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        jmp     L_021B                          ; EB 48
L_01D3:
        inc     word ptr [bp - 8]               ; FF 46 F8
        add     si, 6                           ; 83 C6 06
        jmp     L_0194                          ; EB B9
L_01DB:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jne     L_01E8                          ; 75 07
        mov     word ptr [bp - 0xc], 1          ; C7 46 F4 01 00
        jmp     L_0187                          ; EB 9F
L_01E8:
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [bp - 0xe]             ; F7 6E F2
        mov     si, ax                          ; 8B F0
        sub     si, 6                           ; 83 EE 06
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        add     si, word ptr [bx]               ; 03 37
        add     si, 4                           ; 83 C6 04
        mov     ax, word ptr [0x1038]           ; A1 38 10
        cmp     word ptr [si], ax               ; 39 04
        jl      L_01C5                          ; 7C C3
        cmp     ax, 1                           ; 3D 01 00
        jne     L_0210                          ; 75 09
L_0207:
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        jmp     L_01CB                          ; EB BB
L_0210:
        mov     ax, 0x2007                      ; B8 07 20
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0262                          ; EB 47
L_021B:
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        mov     word ptr [bx + 0x14], ax        ; 89 47 14
        mov     word ptr [bx + 0x16], dx        ; 89 57 16
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_123                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     word ptr [bx + 8], 0            ; C7 47 08 00 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_122                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_35                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        push    dx                              ; 52
        push    ax                              ; 50
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_97                   ; 9A FF FF 00 00 [FIXUP]
L_0262:
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
