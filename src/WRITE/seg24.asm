; AUTO-GENERATED from original WRITE segment 24
; segment_size=1453 bytes, flags=0xf130
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
        sub     sp, 8                           ; 83 EC 08
        lea     ax, [bp - 8]                    ; 8D 46 F8
        mov     word ptr [0x1234], ax           ; A3 34 12
        push    word ptr [0x782]                ; FF 36 82 07
        mov     ax, 5                           ; B8 05 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [0x13b2]               ; FF 36 B2 13
        push    word ptr [0x13b0]               ; FF 36 B0 13
        call    far _entry_93                   ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_004C                          ; 74 19
        cmp     ax, 1                           ; 3D 01 00
        jne     L_0055                          ; 75 1D
        call    far _entry_92                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_91                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0055                          ; EB 09
L_004C:
        mov     ax, 0x4002                      ; B8 02 40
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
L_0055:
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
        sub     sp, 0x12                        ; 83 EC 12
        push    si                              ; 56
        mov     ax, word ptr [0x1234]           ; A1 34 12
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x1234]           ; A1 34 12
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 6                           ; 3D 06 00
        jne     L_008B                          ; 75 03
        jmp     L_0189                          ; E9 FE 00
L_008B:
        cmp     ax, 9                           ; 3D 09 00
        jne     L_0093                          ; 75 03
        jmp     L_0175                          ; E9 E2 00
L_0093:
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_00A3                          ; 74 0B
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_00A0                          ; 75 03
        jmp     L_01A6                          ; E9 06 01
L_00A0:
        jmp     L_0184                          ; E9 E1 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00A3 -- offset 0x00A3 -- 61 instr
; Funcion mediana (61 instr, 4 calls).
; tags: calls_gdi, calls_user, medium
; calls (inter): GDI.ESCAPE, USER.CHECKDLGBUTTON, USER.SETDLGITEMINT, USER.SETDLGITEMTEXT
;----------------------------------------------------------------------
L_00A3:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, 0x6fc                       ; B8 FC 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x68], 0              ; 83 3E 68 00 00
        je      L_00EC                          ; 74 31
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     word ptr [bx], 7                ; C7 07 07 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        push    word ptr [0xe0a]                ; FF 36 0A 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETDLGITEMINT          ; 9A E6 00 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        push    word ptr [0x1bf6]               ; FF 36 F6 1B
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETDLGITEMINT          ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00F3                          ; EB 07
L_00EC:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     word ptr [bx], 6                ; C7 07 06 00
L_00F3:
        mov     word ptr [bp - 8], 7            ; C7 46 F8 07 00
        cmp     word ptr [0x31c], 0             ; 83 3E 1C 03 00
        je      L_0122                          ; 74 23
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0122                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0124                          ; EB 02
L_0122:
        sub     ax, ax                          ; 2B C0
L_0124:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     word ptr [bx], ax               ; 89 07
        or      ax, ax                          ; 0B C0
        je      L_0144                          ; 74 17
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [0x54]             ; A1 54 00
        mov     word ptr [bx], ax               ; 89 07
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 66 01 00 00 [FIXUP]
        jmp     L_0159                          ; EB 15
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0144 -- offset 0x0144 -- 128 instr
; Dispatcher: tabla de decisiones cmp+jcc (128 instr).
; tags: calls_user, dispatcher
; calls (inter): USER.CHECKDLGBUTTON, USER.ENABLEWINDOW, USER.GETDLGITEM, USER.SHOWCURSOR
;----------------------------------------------------------------------
L_0144:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
L_0159:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        push    word ptr [bx]                   ; FF 37
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A C0 02 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_55                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01F9                          ; E9 84 00
L_0175:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0184                          ; 74 09
        push    word ptr [0x1240]               ; FF 36 40 12
        call    far _entry_63                   ; 9A FF FF 00 00 [FIXUP]
L_0184:
        sub     ax, ax                          ; 2B C0
        jmp     L_032C                          ; E9 A3 01
L_0189:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0195                          ; 74 06
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x7aa], ax            ; A3 AA 07
L_0195:
        cmp     word ptr [0x60], 0              ; 83 3E 60 00 00
        je      L_0184                          ; 74 E8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0184                          ; EB DE
L_01A6:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0xa                         ; 3D 0A 00
        ja      L_0184                          ; 77 D3
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x313]        ; 2E FF A7 13 03
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        cmp     word ptr [bx], 7                ; 83 3F 07
        jne     L_01C6                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_01C8                          ; EB 02
L_01C6:
        sub     ax, ax                          ; 2B C0
L_01C8:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        je      L_0223                          ; 74 54
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x200a                      ; B8 0A 20
        push    ax                              ; 50
        call    far _entry_86                   ; 9A 1B 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_01FF                          ; 75 0C
L_01F3:
        mov     word ptr [0xbda], 0             ; C7 06 DA 0B 00 00
L_01F9:
        mov     ax, 1                           ; B8 01 00
        jmp     L_032C                          ; E9 2D 01
L_01FF:
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 9                           ; B8 09 00
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
        je      L_01F3                          ; 74 D0
L_0223:
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x200a                      ; B8 0A 20
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_90                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_01F3                          ; 74 A8
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     word ptr [bx], 0                ; 83 3F 00
        je      L_025A                          ; 74 07
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx]               ; 8B 07
        jmp     L_025C                          ; EB 02
L_025A:
        sub     ax, ax                          ; 2B C0
L_025C:
        mov     word ptr [0x54], ax             ; A3 54 00
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [0x68], ax             ; A3 68 00
        or      ax, ax                          ; 0B C0
        je      L_0275                          ; 74 0C
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [0xe0a], ax            ; A3 0A 0E
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     word ptr [0x1bf6], ax           ; A3 F6 1B
L_0275:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [0x6a], ax             ; A3 6A 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_59                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01F9                          ; E9 70 FF
        cmp     word ptr [bp + 8], 0x300        ; 81 7E 08 00 03
        je      L_0293                          ; 74 03
        jmp     L_0184                          ; E9 F1 FE
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0293 -- offset 0x0293 -- 285 instr
; Dispatcher: tabla de decisiones cmp+jcc (285 instr).
; tags: calls_user, dispatcher, far, int_fe
; calls (inter): USER.CHECKDLGBUTTON, USER.SENDMESSAGE
;----------------------------------------------------------------------
L_0293:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, dx                          ; 0B C2
        jne     L_02AB                          ; 75 03
        jmp     L_01F9                          ; E9 4E FF
L_02AB:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     si, word ptr [bx]               ; 8B 37
        cmp     si, 7                           ; 83 FE 07
        jne     L_02B8                          ; 75 03
        jmp     L_01F9                          ; E9 41 FF
L_02B8:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A D5 02 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     ax, 7                           ; B8 07 00
L_02CD:
        mov     word ptr [bx], ax               ; 89 07
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
L_02D3:
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A E8 02 00 00 [FIXUP]
        jmp     L_01F9                          ; E9 1D FF
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        push    word ptr [bx]                   ; FF 37
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        jmp     L_02CD                          ; EB D6
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     word ptr [bx], 0                ; 83 3F 00
        jne     L_030A                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_030C                          ; EB 02
L_030A:
        sub     ax, ax                          ; 2B C0
L_030C:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx], ax               ; 89 07
        jmp     L_02D3                          ; EB C0
        mov     cx, 0x7b01                      ; B9 01 7B
        add     al, byte ptr [si - 0x7bff]      ; 02 84 01 84
        add     word ptr [si - 0x23ff], ax      ; 01 84 01 DC
        add     bl, ah                          ; 02 DC
        add     cl, byte ptr [bx + di - 0x76fe] ; 02 89 02 89
        add     al, byte ptr [si - 0x8ff]       ; 02 84 01 F7
        add     ch, cl                          ; 02 E9
        int     0xfe                            ; CD FE
L_032C:
        pop     si                              ; 5E
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
        sub     sp, 0x22                        ; 83 EC 22
        push    si                              ; 56
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        je      L_0362                          ; 74 16
        mov     ax, word ptr [0x70a]            ; A1 0A 07
        mov     dx, word ptr [0x70c]            ; 8B 16 0C 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [0x70e]            ; A1 0E 07
        mov     dx, word ptr [0x710]            ; 8B 16 10 07
        jmp     L_0376                          ; EB 14
L_0362:
        mov     ax, word ptr [0x712]            ; A1 12 07
        mov     dx, word ptr [0x714]            ; 8B 16 14 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [0x716]            ; A1 16 07
        mov     dx, word ptr [0x718]            ; 8B 16 18 07
L_0376:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        sbb     dx, word ptr [bp - 8]           ; 1B 56 F8
        or      dx, dx                          ; 0B D2
        jge     L_0389                          ; 7D 03
        jmp     L_058A                          ; E9 01 02
L_0389:
        jg      L_0393                          ; 7F 08
        cmp     ax, 2                           ; 3D 02 00
        ja      L_0393                          ; 77 03
        jmp     L_058A                          ; E9 F7 01
L_0393:
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
        push    word ptr [0x12b4]               ; FF 36 B4 12
        call    far _entry_89                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_88                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [0xe1e]            ; A1 1E 0E
        mov     word ptr [bx], ax               ; 89 07
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_03D4                          ; 75 07
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     word ptr [bx], 1                ; C7 07 01 00
L_03D4:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        test    byte ptr [0xb82], 8             ; F6 06 82 0B 08
        jne     L_03EF                          ; 75 05
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        inc     word ptr [bx]                   ; FF 07
L_03EF:
        mov     ax, word ptr [0xe24]            ; A1 24 0E
        sub     ax, word ptr [0x107c]           ; 2B 06 7C 10
        push    ax                              ; 50
        push    word ptr [0x10ee]               ; FF 36 EE 10
        push    word ptr [0xa5a]                ; FF 36 5A 0A
        call    far _entry_94                   ; 9A 1E 04 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        je      L_0424                          ; 74 17
        mov     ax, word ptr [0xe2a]            ; A1 2A 0E
        sub     ax, word ptr [0x10f6]           ; 2B 06 F6 10
        push    ax                              ; 50
        push    word ptr [0x10fe]               ; FF 36 FE 10
        push    word ptr [0xa6c]                ; FF 36 6C 0A
        call    far _entry_94                   ; 9A 56 05 00 00 [FIXUP]
        jmp     L_0426                          ; EB 02
L_0424:
        sub     ax, ax                          ; 2B C0
L_0426:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, 5                           ; B8 05 00
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        push    ax                              ; 50
        call    far _entry_64                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     word ptr [bx], ax               ; 89 07
        inc     ax                              ; 40
        jne     L_044D                          ; 75 0C
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     word ptr [bx], 0                ; C7 07 00 00
L_0448:
        sub     ax, ax                          ; 2B C0
        jmp     L_05A2                          ; E9 55 01
L_044D:
        sub     word ptr [bp - 6], 2            ; 83 6E FA 02
        sbb     word ptr [bp - 4], 0            ; 83 5E FC 00
L_0455:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        cmp     word ptr [bp - 8], dx           ; 39 56 F8
        jle     L_0463                          ; 7E 03
        jmp     L_0526                          ; E9 C3 00
L_0463:
        jl      L_046D                          ; 7C 08
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jb      L_046D                          ; 72 03
        jmp     L_0526                          ; E9 B9 00
L_046D:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_96                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        jne     L_0448                          ; 75 B8
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jl      L_04B5                          ; 7C 1D
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        push    word ptr [bx]                   ; FF 37
        add     word ptr [bp - 0x1a], 5         ; 83 46 E6 05
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_95                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0448                          ; 74 93
L_04B5:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     si, ax                          ; 03 F0
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        mov     word ptr [si], ax               ; 89 04
        mov     word ptr [si + 2], dx           ; 89 54 02
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     word ptr [si + 4], ax           ; 89 44 04
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [0x340]            ; 03 06 40 03
        mov     word ptr [si + 6], ax           ; 89 44 06
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [0x344]            ; 03 06 44 03
        mov     word ptr [si + 0xa], ax         ; 89 44 0A
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [si + 8], ax           ; 89 44 08
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        add     ax, word ptr [0x34c]            ; 03 06 4C 03
        mov     word ptr [si + 0xc], ax         ; 89 44 0C
        cmp     word ptr [0x33c], 0             ; 83 3E 3C 03 00
        jle     L_050A                          ; 7E 06
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
L_050A:
        mov     ax, word ptr [0x330]            ; A1 30 03
        mov     dx, word ptr [0x332]            ; 8B 16 32 03
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [0x334]            ; A1 34 03
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [0x34c]            ; A1 4C 03
        add     word ptr [bp - 0x10], ax        ; 01 46 F0
        jmp     L_0455                          ; E9 2F FF
L_0526:
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jne     L_0580                          ; 75 54
        cmp     word ptr [bp - 0x18], 0         ; 83 7E E8 00
        jle     L_0580                          ; 7E 4E
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        sub     ax, 0x10                        ; 2D 10 00
        add     si, ax                          ; 03 F0
        mov     ax, word ptr [0xe2c]            ; A1 2C 0E
        sub     ax, word ptr [0x10f6]           ; 2B 06 F6 10
        push    ax                              ; 50
        push    word ptr [0x10fe]               ; FF 36 FE 10
        push    word ptr [0xa6c]                ; FF 36 6C 0A
        call    far _entry_94                   ; 9A FF FF 00 00 [FIXUP]
        sub     ax, word ptr [si + 0xc]         ; 2B 44 0C
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        jmp     L_057A                          ; EB 12
L_0568:
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        add     word ptr [si + 8], ax           ; 01 44 08
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        add     word ptr [si + 0xc], ax         ; 01 44 0C
        dec     word ptr [bp - 0x22]            ; FF 4E DE
        sub     si, 0x10                        ; 83 EE 10
L_057A:
        cmp     word ptr [bp - 0x22], 0         ; 83 7E DE 00
        jg      L_0568                          ; 7F E8
L_0580:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [bx], ax               ; 89 07
        jmp     L_059F                          ; EB 15
L_058A:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     word ptr [bx], 0xffff           ; C7 07 FF FF
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     word ptr [bx], 0                ; C7 07 00 00
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx], 0                ; C7 07 00 00
L_059F:
        mov     ax, 1                           ; B8 01 00
L_05A2:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      008h                            ; 08

WRITE_TEXT ENDS

        END
