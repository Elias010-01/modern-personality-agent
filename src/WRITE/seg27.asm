; AUTO-GENERATED from original WRITE segment 27
; segment_size=1582 bytes, flags=0xf130
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
        sub     sp, 0x68                        ; 83 EC 68
        mov     ax, word ptr [0x1234]           ; A1 34 12
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 6                           ; 3D 06 00
        jne     L_0024                          ; 75 03
        jmp     L_0108                          ; E9 E4 00
L_0024:
        cmp     ax, 9                           ; 3D 09 00
        jne     L_002C                          ; 75 03
        jmp     L_00F4                          ; E9 C8 00
L_002C:
        cmp     ax, 0x10                        ; 3D 10 00
        jne     L_0034                          ; 75 03
        jmp     L_022A                          ; E9 F6 01
L_0034:
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0044                          ; 74 0B
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_0041                          ; 75 03
        jmp     L_0125                          ; E9 E4 00
L_0041:
        jmp     L_0103                          ; E9 BF 00
L_0044:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_55                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_113                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx], ax               ; 89 07
        or      ax, ax                          ; 0B C0
        jne     L_0068                          ; 75 03
        jmp     L_01FA                          ; E9 92 01
L_0068:
        jmp     L_0083                          ; EB 19
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_006A -- offset 0x006A -- 213 instr
; Dispatcher: tabla de decisiones cmp+jcc (213 instr).
; tags: calls_user, dispatcher, far
; calls (intra): sub_02AE, sub_0408, sub_058B, sub_05E4
; calls (inter): USER.GETDLGITEM, USER.GETDLGITEMTEXT, USER.SENDDLGITEMMESSAGE, USER.SETDLGITEMTEXT, USER.SETFOCUS, USER.SHOWCURSOR
;----------------------------------------------------------------------
L_006A:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x3a]        ; 8B 46 C6
        inc     ax                              ; 40
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A E7 00 00 00 [FIXUP]
L_0083:
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        call    far _entry_112                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_006A                          ; 75 DB
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ax                              ; 50
        call    far _entry_111                  ; 9A FF FF 00 00 [FIXUP]
        cmp     byte ptr [bp - 5], 0            ; 80 7E FB 00
        jne     L_00C0                          ; 75 22
        mov     ax, word ptr [bp - 7]           ; 8B 46 F9
        shr     ax, 1                           ; D1 E8
        push    ax                              ; 50
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    L_058B                          ; E8 DC 04
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 0E 03 00 00 [FIXUP]
L_00C0:
        cmp     byte ptr [bp - 8], 0            ; 80 7E F8 00
        je      L_00C9                          ; 74 03
        jmp     L_01FA                          ; E9 31 01
L_00C9:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 0x40d                       ; B8 0D 04
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     bx, word ptr [bp - 0x3c]        ; 8B 5E C4
        mov     ax, word ptr [bx]               ; 8B 07
        inc     ax                              ; 40
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A CE 02 00 00 [FIXUP]
L_00EB:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_02AE                          ; E8 BD 01
        jmp     L_01FA                          ; E9 06 01
L_00F4:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0103                          ; 74 09
        push    word ptr [0x1240]               ; FF 36 40 12
        call    far _entry_63                   ; 9A FF FF 00 00 [FIXUP]
L_0103:
        sub     ax, ax                          ; 2B C0
        jmp     L_02A3                          ; E9 9B 01
L_0108:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0114                          ; 74 06
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x7aa], ax            ; A3 AA 07
L_0114:
        cmp     word ptr [0x60], 0              ; 83 3E 60 00 00
        je      L_0103                          ; 74 E8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0103                          ; EB DE
L_0125:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        jne     L_0130                          ; 75 03
        jmp     L_0252                          ; E9 22 01
L_0130:
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0138                          ; 75 03
        jmp     L_022A                          ; E9 F2 00
L_0138:
        cmp     ax, 4                           ; 3D 04 00
        jne     L_0140                          ; 75 03
        jmp     L_0245                          ; E9 05 01
L_0140:
        cmp     ax, 6                           ; 3D 06 00
        jne     L_0148                          ; 75 03
        jmp     L_028A                          ; E9 42 01
L_0148:
        jmp     L_0103                          ; EB B9
L_014A:
        cmp     word ptr [bp - 0x42], 1         ; 83 7E BE 01
        jne     L_016D                          ; 75 1D
        mov     byte ptr [bp - 0x46], 0x19      ; C6 46 BA 19
        mov     al, byte ptr [bp - 0x3e]        ; 8A 46 C2
        shl     al, 1                           ; D0 E0
        mov     byte ptr [bp - 0x45], al        ; 88 46 BB
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        push    word ptr [bp - 0x40]            ; FF 76 C0
        call    far _entry_107                  ; 9A 26 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x40], 0         ; C7 46 C0 00 00
L_016D:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x3a]        ; 8B 46 C6
        inc     ax                              ; 40
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far USER.GETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        mov     bx, word ptr [bp - 0x3a]        ; 8B 5E C6
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     word ptr [bx], 0                ; 83 3F 00
        je      L_019A                          ; 74 06
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        call    L_05E4                          ; E8 4A 04
L_019A:
        cmp     word ptr [bp - 0x44], 0         ; 83 7E BC 00
        jg      L_01A3                          ; 7F 03
        jmp     L_022A                          ; E9 87 00
L_01A3:
        push    word ptr [0x6fe]                ; FF 36 FE 06
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        call    far _entry_110                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        cmp     ax, 0xff                        ; 3D FF 00
        jne     L_0200                          ; 75 49
        lea     ax, [bp - 0x66]                 ; 8D 46 9A
        push    ax                              ; 50
        mov     ax, 0x3000                      ; B8 00 30
        push    ax                              ; 50
        call    far _entry_52                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x68], ax        ; 89 46 98
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x66]                 ; 8D 46 9A
        push    ax                              ; 50
        mov     ax, 0x24                        ; B8 24 00
        push    ax                              ; 50
        call    far _entry_109                  ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 6                           ; 3D 06 00
        je      L_0200                          ; 74 24
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _entry_73                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A A1 03 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
L_01FA:
        mov     ax, 1                           ; B8 01 00
        jmp     L_02A3                          ; E9 A3 00
L_0200:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        call    far _entry_108                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        cmp     ax, 0xff                        ; 3D FF 00
        je      L_022A                          ; 74 16
        mov     byte ptr [bp - 0x38], 0x18      ; C6 46 C8 18
        mov     al, byte ptr [bp - 0x48]        ; 8A 46 B8
        mov     byte ptr [bp - 0x37], al        ; 88 46 C9
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ax                              ; 50
        push    word ptr [bp - 0x40]            ; FF 76 C0
        call    far _entry_107                  ; 9A FF FF 00 00 [FIXUP]
L_022A:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     word ptr [bx], 0                ; 83 3F 00
        je      L_0237                          ; 74 05
        call    far _entry_106                  ; 9A FF FF 00 00 [FIXUP]
L_0237:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_59                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01FA                          ; EB B5
L_0245:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 1                           ; 3D 01 00
        jne     L_0250                          ; 75 03
        jmp     L_00EB                          ; E9 9B FE
L_0250:
        jmp     L_0292                          ; EB 40
L_0252:
        mov     word ptr [bp - 0x40], 1         ; C7 46 C0 01 00
        lea     ax, [bp - 0x3e]                 ; 8D 46 C2
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 0x7f                        ; B8 7F 00
        push    ax                              ; 50
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        mov     ax, 0x2009                      ; B8 09 20
        push    ax                              ; 50
        call    far _entry_86                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        or      ax, ax                          ; 0B C0
        je      L_0281                          ; 74 03
        jmp     L_014A                          ; E9 C9 FE
L_0281:
        mov     word ptr [0xbda], 0             ; C7 06 DA 0B 00 00
        jmp     L_01FA                          ; E9 70 FF
L_028A:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 1                           ; 3D 01 00
        je      L_029A                          ; 74 08
L_0292:
        cmp     ax, 2                           ; 3D 02 00
        je      L_0252                          ; 74 BB
        jmp     L_01FA                          ; E9 60 FF
L_029A:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_0408                          ; E8 68 01
        jmp     L_01FA                          ; E9 57 FF
L_02A3:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02AE -- offset 0x02AE -- 21 instr
; Funcion sin clasificar definitiva (21 instr).
; tags: calls_user, small
; callers: sub_006A
; calls (inter): USER.SENDDLGITEMMESSAGE
;----------------------------------------------------------------------
L_02AE:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xae                        ; 81 EC AE 00
        lea     ax, [bp - 0xa8]                 ; 8D 86 58 FF
        mov     word ptr [bp - 0xac], ax        ; 89 86 54 FF
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 0x409                       ; B8 09 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A FB 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x86], ax        ; 89 86 7A FF
        or      ax, ax                          ; 0B C0
        jge     L_02E4                          ; 7D 0A
        mov     bx, word ptr [bp - 0xac]        ; 8B 9E 54 FF
        mov     byte ptr [bx + 1], 0            ; C6 47 01 00
        jmp     L_02FF                          ; EB 1B
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02E4 -- offset 0x02E4 -- 50 instr
; Funcion mediana (50 instr, 3 calls).
; tags: calls_user, medium
; calls (intra): sub_04CD
; calls (inter): USER.SENDDLGITEMMESSAGE, USER.SETDLGITEMTEXT
;----------------------------------------------------------------------
L_02E4:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        push    word ptr [bp - 0x86]            ; FF B6 7A FF
        mov     ax, word ptr [bp - 0xac]        ; 8B 86 54 FF
        inc     ax                              ; 40
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 23 03 00 00 [FIXUP]
L_02FF:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xac]        ; 8B 86 54 FF
        inc     ax                              ; 40
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 38 03 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 0x405                       ; B8 05 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 72 03 00 00 [FIXUP]
        cmp     word ptr [bp - 0x86], 0         ; 83 BE 7A FF 00
        jl      L_0381                          ; 7C 3E
        lea     ax, [bp - 0xa8]                 ; 8D 86 58 FF
        mov     word ptr [bp - 0xae], ax        ; 89 86 52 FF
        push    word ptr [bp - 0xac]            ; FF B6 54 FF
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    L_04CD                          ; E8 72 01
        jmp     L_0376                          ; EB 19
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_035D -- offset 0x035D -- 71 instr
; Funcion mediana (71 instr, 7 calls).
; tags: calls_user, medium
; calls (intra): sub_054D, sub_058B
; calls (inter): USER.GETDLGITEM, USER.GETDLGITEMINT, USER.INVALIDATERECT, USER.SENDDLGITEMMESSAGE, USER.UPDATEWINDOW
;----------------------------------------------------------------------
L_035D:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xae]        ; 8B 86 52 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 95 03 00 00 [FIXUP]
L_0376:
        push    word ptr [bp - 0xae]            ; FF B6 52 FF
        call    L_054D                          ; E8 D0 01
        or      ax, ax                          ; 0B C0
        jne     L_035D                          ; 75 DC
L_0381:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.INVALIDATERECT         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far USER.UPDATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETDLGITEMINT          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xaa], ax        ; 89 86 56 FF
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0402                          ; 74 26
        push    ax                              ; 50
        push    word ptr [bp - 0xae]            ; FF B6 52 FF
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    L_058B                          ; E8 A3 01
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 0x40d                       ; B8 0D 04
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xae]        ; 8B 86 52 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 23 04 00 00 [FIXUP]
L_0402:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0408 -- offset 0x0408 -- 86 instr
; Dispatcher: tabla de decisiones cmp+jcc (86 instr).
; tags: calls_user, dispatcher, far
; callers: sub_006A
; calls (inter): USER.SENDDLGITEMMESSAGE, USER.SETDLGITEMTEXT
;----------------------------------------------------------------------
L_0408:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x16                        ; 83 EC 16
        mov     byte ptr [bp - 0x16], 0         ; C6 46 EA 00
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 0x409                       ; B8 09 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 42 04 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jl      L_0457                          ; 7C 29
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 7F 00 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A BC 00 00 00 [FIXUP]
L_0457:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
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
        cmp     word ptr [bp + 6], 4            ; 83 7E 06 04
        jl      L_0477                          ; 7C 06
        cmp     word ptr [bp + 6], 0x7f         ; 83 7E 06 7F
        jle     L_047C                          ; 7E 05
L_0477:
        mov     ax, 1                           ; B8 01 00
        jmp     L_04C1                          ; EB 45
L_047C:
        mov     ax, word ptr [0xf9c]            ; A1 9C 0F
        cmp     word ptr [0xa5c], ax            ; 39 06 5C 0A
        jge     L_04BF                          ; 7D 3A
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_04A1                          ; EB 15
L_048C:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [0xf2a]            ; 8B 36 2A 0F
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bx + si], ax          ; 39 00
        je      L_0477                          ; 74 D9
        inc     word ptr [bp - 4]               ; FF 46 FC
L_04A1:
        mov     ax, word ptr [0xa5c]            ; A1 5C 0A
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_048C                          ; 7C E3
        mov     si, 0xa5c                       ; BE 5C 0A
        mov     bx, word ptr [si]               ; 8B 1C
        inc     word ptr [si]                   ; FF 04
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [0xf2a]            ; 8B 36 2A 0F
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bx + si], ax          ; 89 00
        jmp     L_0477                          ; EB B8
L_04BF:
        sub     ax, ax                          ; 2B C0
L_04C1:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_04CD -- offset 0x04CD -- 47 instr
; Funcion mediana (47 instr, 3 calls).
; tags: calls_gdi, medium
; callers: sub_02E4
; calls (intra): sub_058B
; calls (inter): GDI.ENUMFONTS, GDI.GETDEVICECAPS
;----------------------------------------------------------------------
L_04CD:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0xf2a], ax            ; A3 2A 0F
        mov     word ptr [0xa5c], 0             ; C7 06 5C 0A 00 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0xf9c], ax            ; A3 9C 0F
        mov     word ptr [0xed8], 0             ; C7 06 D8 0E 00 00
        mov     word ptr [bp - 6], 2            ; C7 46 FA 02 00
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 0x22                        ; B8 22 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        inc     ax                              ; 40
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x128e]               ; FF 36 8E 12
        push    word ptr [0x128c]               ; FF 36 8C 12
        lea     ax, [bp - 6]                    ; 8D 46 FA
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.ENUMFONTS               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_053E                          ; EB 18
L_0526:
        mov     si, word ptr [bp - 2]           ; 8B 76 FE
        mov     cl, 2                           ; B1 02
        shl     si, cl                          ; D3 E6
        add     si, word ptr [0xf2a]            ; 03 36 2A 0F
        push    word ptr [si]                   ; FF 34
        push    si                              ; 56
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    L_058B                          ; E8 50 00
        inc     word ptr [bp - 2]               ; FF 46 FE
L_053E:
        mov     ax, word ptr [0xa5c]            ; A1 5C 0A
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jl      L_0526                          ; 7C E0
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_054D -- offset 0x054D -- 24 instr
; Funcion sin clasificar definitiva (24 instr).
; tags: small
; callers: sub_035D
;----------------------------------------------------------------------
L_054D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, word ptr [0xa5c]            ; A1 5C 0A
        cmp     word ptr [0xed8], ax            ; 39 06 D8 0E
        jge     L_0583                          ; 7D 27
        mov     ax, word ptr [0xed8]            ; A1 D8 0E
        inc     word ptr [0xed8]                ; FF 06 D8 0E
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0xf2a]            ; 03 06 2A 0F
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        push    ax                              ; 50
        call    far _entry_61                   ; 9A AE 05 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_45                   ; 9A DA 05 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        jmp     L_0585                          ; EB 02
L_0583:
        sub     ax, ax                          ; 2B C0
L_0585:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_058B -- offset 0x058B -- 33 instr
; Funcion mediana (33 instr, 0 calls).
; tags: medium
; callers: sub_006A, sub_035D, sub_04CD
;----------------------------------------------------------------------
L_058B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x44                        ; 83 EC 44
        lea     ax, [bp - 0x44]                 ; 8D 46 BC
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        call    far _entry_78                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     byte ptr [bx], 0                ; C6 07 00
        lea     ax, [bp - 0x44]                 ; 8D 46 BC
        push    ax                              ; 50
        call    far _entry_61                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        push    ax                              ; 50
        call    far _entry_114                  ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x44]                 ; 8D 46 BC
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        add     ax, word ptr [bp + 6]           ; 03 46 06
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_05E4 -- offset 0x05E4 -- 32 instr
; Funcion mediana (32 instr, 0 calls).
; tags: medium
; callers: sub_006A
;----------------------------------------------------------------------
L_05E4:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        push    word ptr [0x6fe]                ; FF 36 FE 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_110                  ; 9A AB 01 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 0xff                        ; 3D FF 00
        je      L_0626                          ; 74 27
        mov     bx, word ptr [0x6fe]            ; 8B 1E FE 06
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     si, ax                          ; 8B F0
        shl     si, 1                           ; D1 E6
        mov     bx, word ptr [bx + si + 2]      ; 8B 58 02
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_0626                          ; 74 0D
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        mov     byte ptr [bx], al               ; 88 07
        mov     ax, 1                           ; B8 01 00
        jmp     L_0628                          ; EB 02
L_0626:
        sub     ax, ax                          ; 2B C0
L_0628:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      002h                            ; 02

WRITE_TEXT ENDS

        END
