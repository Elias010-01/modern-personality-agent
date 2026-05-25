; AUTO-GENERATED from original USER segment 13
; segment_size=3269 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

USER_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; CREATEDIALOG -- 463 instr
; Constructor: crea dialog.
; tags: calls_gdi, calls_kernel, dispatcher, far
; calls (inter): GDI.GETTEXTMETRICS, KERNEL.FINDRESOURCE, KERNEL.FREERESOURCE, KERNEL.GLOBALUNLOCK, KERNEL.LOADRESOURCE, KERNEL.LOCKRESOURCE
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; CREATEDIALOG  (offset 0x0000, size 1213 bytes)
;-----------------------------------------------------------------------
CREATEDIALOG PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x66                        ; 83 EC 66
        push    si                              ; 56
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 5                           ; B8 05 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x50], ax        ; 89 46 B0
        or      ax, ax                          ; 0B C0
        jne     L_002E                          ; 75 05
L_0029:
        sub     ax, ax                          ; 2B C0
        jmp     L_043E                          ; E9 10 04
L_002E:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp - 0x50]            ; FF 76 B0
        call    far KERNEL.LOADRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    ax                              ; 50
        call    far KERNEL.LOCKRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
        mov     word ptr [bp - 0x4c], dx        ; 89 56 B4
        or      ax, dx                          ; 0B C2
        je      L_0029                          ; 74 DD
        les     bx, ptr [bp - 0x4e]             ; C4 5E B2
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        test    word ptr [bp - 4], 0x1000       ; F7 46 FC 00 10
        je      L_0068                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_006A                          ; EB 02
L_0068:
        sub     ax, ax                          ; 2B C0
L_006A:
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        call    far _SEG1_38D1                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x4a], ax        ; 89 46 B6
        push    ax                              ; 50
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x4a]            ; FF 76 B6
        call    far _SEG1_38E1                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x46]        ; 8B 46 BA
        mov     word ptr [bp - 0x52], ax        ; 89 46 AE
        les     bx, ptr [bp - 0x4e]             ; C4 5E B2
        mov     ax, word ptr es:[bx + 5]        ; 26 8B 47 05
        mov     word ptr [bp - 0x62], ax        ; 89 46 9E
        mov     ax, word ptr es:[bx + 7]        ; 26 8B 47 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr es:[bx + 9]        ; 26 8B 47 09
        mov     word ptr [bp - 0x60], ax        ; 89 46 A0
        mov     ax, word ptr es:[bx + 0xb]      ; 26 8B 47 0B
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     al, byte ptr es:[bx + 0xd]      ; 26 8A 47 0D
        mov     byte ptr [bp - 0x5e], al        ; 88 46 A2
        test    word ptr [bp - 4], 0xc000       ; F7 46 FC 00 C0
        jne     L_00BE                          ; 75 03
        jmp     L_01BD                          ; E9 FF 00
L_00BE:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        test    byte ptr [bp - 6], 1            ; F6 46 FA 01
        jne     L_00DE                          ; 75 12
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        je      L_00DE                          ; 74 0D
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_60EA                  ; 9A FF FF 00 00 [FIXUP]
L_00DE:
        push    word ptr [bp - 0x62]            ; FF 76 9E
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _SEG1_520B                  ; 9A FB 00 00 00 [FIXUP]
        add     word ptr [bp - 0x24], ax        ; 01 46 DC
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0x52]            ; FF 76 AE
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far _SEG1_520B                  ; 9A 0D 01 00 00 [FIXUP]
        add     word ptr [bp - 0x22], ax        ; 01 46 DE
        push    word ptr [bp - 0x60]            ; FF 76 A0
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _SEG1_520B                  ; 9A 22 01 00 00 [FIXUP]
        add     ax, word ptr [bp - 0x24]        ; 03 46 DC
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0x52]            ; FF 76 AE
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far _SEG1_520B                  ; 9A C8 02 00 00 [FIXUP]
        add     ax, word ptr [bp - 0x22]        ; 03 46 DE
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     al, byte ptr [bp - 0x5e]        ; 8A 46 A2
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_097B                          ; E8 39 08
        cmp     word ptr [0x1be], 0             ; 83 3E BE 01 00
        je      L_014E                          ; 74 05
        mov     ax, word ptr [0x50e]            ; A1 0E 05
        jmp     L_0155                          ; EB 07
L_014E:
        mov     bx, word ptr [0x634]            ; 8B 1E 34 06
        mov     ax, word ptr [bx + 0x20]        ; 8B 47 20
L_0155:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [0x47a]            ; A1 7A 04
        add     ax, 4                           ; 05 04 00
        sub     word ptr [bp - 0xa], ax         ; 29 46 F6
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bp - 0x1e], ax        ; 39 46 E2
        jle     L_017D                          ; 7E 14
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        sub     ax, word ptr [bp - 0x1e]        ; 2B 46 E2
        push    ax                              ; 50
        call    far _SEG1_6515                  ; 9A 9B 01 00 00 [FIXUP]
L_017D:
        mov     ax, word ptr [0x510]            ; A1 10 05
        sub     ax, 4                           ; 2D 04 00
        cmp     word ptr [bp - 0x20], ax        ; 39 46 E0
        jle     L_019F                          ; 7E 17
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [0x510]            ; A1 10 05
        sub     ax, word ptr [bp - 0x20]        ; 2B 46 E0
        sub     ax, 4                           ; 2D 04 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_6515                  ; 9A FF FF 00 00 [FIXUP]
L_019F:
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        mov     word ptr [bp - 0x62], ax        ; 89 46 9E
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        sub     ax, word ptr [bp - 0x24]        ; 2B 46 DC
        mov     word ptr [bp - 0x60], ax        ; 89 46 A0
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        sub     ax, word ptr [bp - 0x22]        ; 2B 46 DE
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_01BD:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     si, ax                          ; 8B F0
        cmp     byte ptr [bp - 0x5e], 0         ; 80 7E A2 00
        je      L_01F8                          ; 74 2E
        push    word ptr [bp + 0x10]            ; FF 76 10
        cmp     byte ptr [bp - 0x5e], 0xff      ; 80 7E A2 FF
        jne     L_01DE                          ; 75 0B
        les     bx, ptr [bp - 0x4e]             ; C4 5E B2
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        sub     dx, dx                          ; 2B D2
        jmp     L_01E7                          ; EB 09
L_01DE:
        mov     ax, word ptr [bp - 0x4e]        ; 8B 46 B2
        mov     dx, word ptr [bp - 0x4c]        ; 8B 56 B4
        add     ax, 0xd                         ; 05 0D 00
L_01E7:
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_150                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        or      ax, ax                          ; 0B C0
        jne     L_01F8                          ; 75 03
        jmp     L_042C                          ; E9 34 02
L_01F8:
        mov     ax, word ptr [bp - 0x4e]        ; 8B 46 B2
        mov     dx, word ptr [bp - 0x4c]        ; 8B 56 B4
        add     ax, 0xd                         ; 05 0D 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0892                          ; E8 8C 06
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0892                          ; E8 81 06
        mov     word ptr [bp - 0x5c], ax        ; 89 46 A4
        mov     word ptr [bp - 0x5a], dx        ; 89 56 A6
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0892                          ; E8 76 06
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_0231                          ; 74 06
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        jmp     L_0236                          ; EB 05
L_0231:
        mov     ax, 0x8002                      ; B8 02 80
        sub     dx, dx                          ; 2B D2
L_0236:
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x5a]            ; FF 76 A6
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        and     dh, 0xef                        ; 80 E6 EF
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x62]            ; FF 76 9E
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0x60]            ; FF 76 A0
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp + 0x10]            ; FF 76 10
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_0232                  ; 9A B2 03 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        jne     L_0270                          ; 75 03
        jmp     L_042C                          ; E9 BC 01
L_0270:
        les     bx, ptr [bp - 0x4e]             ; C4 5E B2
        mov     al, byte ptr es:[bx + 4]        ; 26 8A 47 04
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        cmp     byte ptr es:[bx], ah            ; 26 38 27
        jne     L_0289                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_028B                          ; EB 02
L_0289:
        sub     ax, ax                          ; 2B C0
L_028B:
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        or      ax, ax                          ; 0B C0
        jne     L_0295                          ; 75 03
        jmp     L_03D7                          ; E9 42 01
L_0295:
        mov     word ptr [si + 0x54], 0         ; C7 44 54 00 00
        mov     ax, word ptr [bp - 0x3c]        ; 8B 46 C4
        mov     word ptr [si + 0x4c], ax        ; 89 44 4C
        mov     ax, word ptr [bp - 0x52]        ; 8B 46 AE
        mov     word ptr [si + 0x4e], ax        ; 89 44 4E
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [si + 0x44], ax        ; 89 44 44
        mov     word ptr [si + 0x46], dx        ; 89 54 46
        mov     word ptr [si + 0x52], 0         ; C7 44 52 00 00
        jmp     L_03D7                          ; E9 1D 01
L_02BA:
        les     bx, ptr [bp - 0x16]             ; C4 5E EA
        push    word ptr es:[bx]                ; 26 FF 37
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _SEG1_520B                  ; 9A DE 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x62], ax        ; 89 46 9E
        les     bx, ptr [bp - 0x16]             ; C4 5E EA
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr [bp - 0x52]            ; FF 76 AE
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far _SEG1_520B                  ; 9A F4 02 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        les     bx, ptr [bp - 0x16]             ; C4 5E EA
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _SEG1_520B                  ; 9A 0A 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x60], ax        ; 89 46 A0
        les     bx, ptr [bp - 0x16]             ; C4 5E EA
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        push    word ptr [bp - 0x52]            ; FF 76 AE
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far _SEG1_520B                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        les     bx, ptr [bp - 0x16]             ; C4 5E EA
        mov     ax, word ptr es:[bx + 0xa]      ; 26 8B 47 0A
        mov     dx, word ptr es:[bx + 0xc]      ; 26 8B 57 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0xe                         ; 05 0E 00
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x66], al        ; 88 46 9A
        test    byte ptr [bp - 0x66], 0x80      ; F6 46 9A 80
        je      L_036B                          ; 74 26
        mov     ax, bx                          ; 8B C3
        inc     ax                              ; 40
        mov     word ptr [bp - 0x5c], ax        ; 89 46 A4
        mov     word ptr [bp - 0x5a], dx        ; 89 56 A6
        mov     bl, byte ptr [bp - 0x66]        ; 8A 5E 9A
        sub     bh, bh                          ; 2A FF
        mov     es, word ptr [0x340]            ; 8E 06 40 03
        mov     al, byte ptr es:[bx + 0xb5f]    ; 26 8A 87 5F 0B
        sub     ah, ah                          ; 2A E4
        add     ax, 0xbee                       ; 05 EE 0B
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - OFFSET _SEG1_0BEE], 0xffff ; C7 46 F0 FF FF [FIXUP]
        jmp     L_037A                          ; EB 0F
L_036B:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    L_0892                          ; E8 1E 05
        mov     word ptr [bp - 0x5c], ax        ; 89 46 A4
        mov     word ptr [bp - 0x5a], dx        ; 89 56 A6
L_037A:
        push    word ptr [bp - 0x5a]            ; FF 76 A6
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        call    L_0892                          ; E8 0F 05
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
        mov     word ptr [bp - 0x56], dx        ; 89 56 AA
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x5a]            ; FF 76 A6
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0x62]            ; FF 76 9E
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0x60]            ; FF 76 A0
        push    word ptr [bp - 8]               ; FF 76 F8
        push    si                              ; 56
        push    word ptr [bp - 0x54]            ; FF 76 AC
        push    word ptr [bp + 0x10]            ; FF 76 10
        inc     ax                              ; 40
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_0232                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_03C4                          ; 75 0A
        push    si                              ; 56
        call    far _SEG1_07E5                  ; 9A FF FF 00 00 [FIXUP]
        sub     si, si                          ; 2B F6
        jmp     L_042C                          ; EB 68
L_03C4:
        les     bx, ptr [bp - 0x58]             ; C4 5E A8
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        sub     ah, ah                          ; 2A E4
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        inc     ax                              ; 40
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
L_03D7:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        dec     word ptr [bp - 0x18]            ; FF 4E E8
        or      ax, ax                          ; 0B C0
        je      L_03E4                          ; 74 03
        jmp     L_02BA                          ; E9 D6 FE
L_03E4:
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        je      L_0410                          ; 74 26
        push    si                              ; 56
        call    L_0483                          ; E8 95 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    si                              ; 56
        mov     ax, 0x110                       ; B8 10 01
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        lcall   [bp + 6]                        ; FF 5E 06
        or      ax, ax                          ; 0B C0
        je      L_0410                          ; 74 0C
        cmp     word ptr [si + 0x52], 0         ; 83 7C 52 00
        jne     L_0410                          ; 75 06
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_044A                          ; E8 3A 00
L_0410:
        cmp     word ptr [bp - 0x48], 0         ; 83 7E B8 00
        je      L_042C                          ; 74 16
        cmp     word ptr [si + 0x52], 0         ; 83 7C 52 00
        jne     L_042C                          ; 75 10
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_0E43                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        call    far _SEG1_34BF                  ; 9A FF FF 00 00 [FIXUP]
L_042C:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far KERNEL.FREERESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, si                          ; 8B C6
L_043E:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
L_044A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        push    si                              ; 56
        mov     ax, 0x87                        ; B8 87 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A 72 04 00 00 [FIXUP]
        test    al, 8                           ; A8 08
        je      L_0476                          ; 74 12
        push    si                              ; 56
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     dx, 0x7fff                      ; BA FF 7F
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A 96 05 00 00 [FIXUP]
L_0476:
        push    si                              ; 56
        call    far _SEG1_2E91                  ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
L_0483:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     di, word ptr [si + 2]           ; 8B 7C 02
        or      di, di                          ; 0B FF
        je      L_04B3                          ; 74 1E
        mov     si, di                          ; 8B F7
        jmp     L_04A7                          ; EB 0E
L_0499:
        test    byte ptr [si + 0x32], 1         ; F6 44 32 01
        jne     L_04AB                          ; 75 0C
        test    byte ptr [si + 0x33], 8         ; F6 44 33 08
        jne     L_04AB                          ; 75 06
        mov     si, word ptr [si]               ; 8B 34
L_04A7:
        or      si, si                          ; 0B F6
        jne     L_0499                          ; 75 EE
L_04AB:
        or      si, si                          ; 0B F6
        jne     L_04B3                          ; 75 04
        mov     ax, di                          ; 8B C7
        jmp     L_04B5                          ; EB 02
L_04B3:
        mov     ax, si                          ; 8B C6
L_04B5:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
CREATEDIALOG ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; GETDLGITEM -- 32 instr
; Devuelve HWND de control de dialogo.
; tags: far, medium
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; GETDLGITEM  (offset 0x04BD, size 61 bytes)
;-----------------------------------------------------------------------
GETDLGITEM PROC FAR
L_04BD:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        push    si                              ; 56
        call    far _SEG1_6092                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_04EC                          ; 74 17
        mov     si, word ptr [si + 2]           ; 8B 74 02
        jmp     L_04E4                          ; EB 0A
L_04DA:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [si + 0x34], ax        ; 39 44 34
        je      L_04E8                          ; 74 06
        mov     si, word ptr [si]               ; 8B 34
L_04E4:
        or      si, si                          ; 0B F6
        jne     L_04DA                          ; 75 F2
L_04E8:
        mov     ax, si                          ; 8B C6
        jmp     L_04EE                          ; EB 02
L_04EC:
        sub     ax, ax                          ; 2B C0
L_04EE:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
GETDLGITEM ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SETDLGITEMTEXT -- 29 instr
; Cambia texto de control de dialogo.
; tags: far, small
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SETDLGITEMTEXT  (offset 0x04FA, size 53 bytes)
;-----------------------------------------------------------------------
SETDLGITEMTEXT PROC FAR
L_04FA:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        push    si                              ; 56
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04BD                          ; E8 AC FF
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_0523                          ; 74 0C
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_61FD                  ; 9A FF FF 00 00 [FIXUP]
L_0523:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
SETDLGITEMTEXT ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; GETDLGITEMTEXT -- 32 instr
; Lee texto de control de dialogo.
; tags: far, medium
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; GETDLGITEMTEXT  (offset 0x052F, size 60 bytes)
;-----------------------------------------------------------------------
GETDLGITEMTEXT PROC FAR
L_052F:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04BD                          ; E8 77 FF
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_055D                          ; 74 11
        push    si                              ; 56
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_61DC                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_055F                          ; EB 02
L_055D:
        sub     ax, ax                          ; 2B C0
L_055F:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
GETDLGITEMTEXT ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SENDDLGITEMMESSAGE -- 34 instr
; Funcion mediana (34 instr, 0 calls).
; tags: far, medium
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SENDDLGITEMMESSAGE  (offset 0x056B, size 64 bytes)
;-----------------------------------------------------------------------
SENDDLGITEMMESSAGE PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     si, word ptr [bp + 0x10]        ; 8B 76 10
        push    si                              ; 56
        push    word ptr [bp + 0xe]             ; FF 76 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04BD                          ; E8 3B FF
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_059C                          ; 74 14
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_253F                  ; 9A D5 05 00 00 [FIXUP]
        jmp     L_059F                          ; EB 03
L_059C:
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
L_059F:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
SENDDLGITEMMESSAGE ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; CHECKDLGBUTTON -- 33 instr
; Funcion mediana (33 instr, 0 calls).
; tags: far, medium
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; CHECKDLGBUTTON  (offset 0x05AB, size 58 bytes)
;-----------------------------------------------------------------------
CHECKDLGBUTTON PROC FAR
L_05AB:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04BD                          ; E8 FB FE
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_05D9                          ; 74 11
        push    si                              ; 56
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A 0D 06 00 00 [FIXUP]
L_05D9:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
CHECKDLGBUTTON ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; ISDLGBUTTONCHECKED -- 35 instr
; Predicado: verifica si dlgbuttonchecked.
; tags: far, medium
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; ISDLGBUTTONCHECKED  (offset 0x05E5, size 60 bytes)
;-----------------------------------------------------------------------
ISDLGBUTTONCHECKED PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04BD                          ; E8 C1 FE
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_0613                          ; 74 11
        push    si                              ; 56
        mov     ax, 0x400                       ; B8 00 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0615                          ; EB 02
L_0613:
        sub     ax, ax                          ; 2B C0
L_0615:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
ISDLGBUTTONCHECKED ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SETDLGITEMINT -- 78 instr
; Escribe entero en control de dialogo.
; tags: far, medium
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SETDLGITEMINT  (offset 0x0621, size 167 bytes)
;-----------------------------------------------------------------------
SETDLGITEMINT PROC FAR
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
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], ss         ; 8C 56 F4
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0655                          ; 74 14
        mov     ax, si                          ; 8B C6
        or      ax, ax                          ; 0B C0
        jge     L_0655                          ; 7D 0E
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        mov     byte ptr es:[bx], 0x2d          ; 26 C6 07 2D
        neg     ax                              ; F7 D8
        mov     si, ax                          ; 8B F0
L_0655:
        push    si                              ; 56
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0681                          ; E8 23 00
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04FA                          ; E8 85 FE
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
L_0681:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        cmp     si, 0xa                         ; 83 FE 0A
        jb      L_06AC                          ; 72 1E
        mov     ax, si                          ; 8B C6
        sub     dx, dx                          ; 2B D2
        mov     cx, 0xa                         ; B9 0A 00
        div     cx                              ; F7 F1
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0681                          ; E8 E0 FF
        mov     cx, 0xa                         ; B9 0A 00
        mov     ax, si                          ; 8B C6
        sub     dx, dx                          ; 2B D2
        div     cx                              ; F7 F1
        mov     si, dx                          ; 8B F2
L_06AC:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     di, word ptr es:[bx]            ; 26 8B 3F
        inc     word ptr es:[bx]                ; 26 FF 07
        mov     es, word ptr es:[bx + 2]        ; 26 8E 47 02
        mov     ax, si                          ; 8B C6
        add     al, 0x30                        ; 04 30
        mov     byte ptr es:[di], al            ; 26 88 05
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
SETDLGITEMINT ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; GETDLGITEMINT -- 93 instr
; Lee entero desde control de dialogo.
; tags: dispatcher, far
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; GETDLGITEMINT  (offset 0x06C8, size 224 bytes)
;-----------------------------------------------------------------------
GETDLGITEMINT PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x30                        ; 83 EC 30
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, word ptr [bp + 0xa]         ; 0B 46 0A
        je      L_06EC                          ; 74 08
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
L_06EC:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x1f                        ; B8 1F 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_052F                          ; E8 2F FE
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     word ptr [bp - 0x26], ss        ; 8C 56 DA
        jmp     L_070E                          ; EB 03
L_070B:
        inc     word ptr [bp - 0x28]            ; FF 46 D8
L_070E:
        les     bx, ptr [bp - 0x28]             ; C4 5E D8
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        je      L_070B                          ; 74 F4
        mov     word ptr [bp - 0x30], 0         ; C7 46 D0 00 00
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0730                          ; 74 0E
        cmp     byte ptr es:[bx], 0x2d          ; 26 80 3F 2D
        jne     L_0730                          ; 75 08
        inc     word ptr [bp - 0x28]            ; FF 46 D8
        mov     word ptr [bp - 0x30], 1         ; C7 46 D0 01 00
L_0730:
        sub     si, si                          ; 2B F6
        jmp     L_0765                          ; EB 31
L_0734:
        cmp     di, 0x39                        ; 83 FF 39
        jg      L_0776                          ; 7F 3D
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        mov     word ptr [bp - 0x2e], si        ; 89 76 D2
        mov     ax, si                          ; 8B C6
        mov     cx, 0xa                         ; B9 0A 00
        mul     cx                              ; F7 E1
        add     ax, di                          ; 03 C7
        sub     ax, 0x30                        ; 2D 30 00
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_075E                          ; 74 09
        cmp     word ptr [bp - 0x2e], si        ; 39 76 D2
        jle     L_0765                          ; 7E 0B
L_075A:
        sub     ax, ax                          ; 2B C0
        jmp     L_079B                          ; EB 3D
L_075E:
        mov     ax, si                          ; 8B C6
        cmp     word ptr [bp - 0x2e], ax        ; 39 46 D2
        ja      L_075A                          ; 77 F5
L_0765:
        les     bx, ptr [bp - 0x28]             ; C4 5E D8
        inc     word ptr [bp - 0x28]            ; FF 46 D8
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        mov     di, ax                          ; 8B F8
        cmp     di, 0x30                        ; 83 FF 30
        jge     L_0734                          ; 7D BE
L_0776:
        cmp     word ptr [bp - 0x30], 0         ; 83 7E D0 00
        je      L_0782                          ; 74 06
        mov     ax, si                          ; 8B C6
        neg     ax                              ; F7 D8
        mov     si, ax                          ; 8B F0
L_0782:
        or      di, di                          ; 0B FF
        jne     L_0791                          ; 75 0B
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0791                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0793                          ; EB 02
L_0791:
        sub     ax, ax                          ; 2B C0
L_0793:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, si                          ; 8B C6
L_079B:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
GETDLGITEMINT ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; DLGWNDPROC -- 117 instr
; Dispatcher: tabla de decisiones cmp+jcc (117 instr).
; tags: dispatcher, far
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; DLGWNDPROC  (offset 0x07A8, size 278 bytes)
;-----------------------------------------------------------------------
DLGWNDPROC PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x24                        ; 83 EC 24
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     di, word ptr [bp + 0xc]         ; 8B 7E 0C
        sub     ax, ax                          ; 2B C0
        mov     word ptr [si + 0x42], ax        ; 89 44 42
        mov     word ptr [si + 0x40], ax        ; 89 44 40
        mov     ax, word ptr [si + 0x44]        ; 8B 44 44
        or      ax, word ptr [si + 0x46]        ; 0B 44 46
        je      L_07DF                          ; 74 12
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [si + 0x44]                     ; FF 5C 44
        or      ax, ax                          ; 0B C0
        jne     L_082B                          ; 75 4C
L_07DF:
        mov     ax, di                          ; 8B C7
        cmp     ax, 6                           ; 3D 06 00
        je      L_0833                          ; 74 4D
        cmp     ax, 0x10                        ; 3D 10 00
        je      L_0863                          ; 74 78
        cmp     ax, 0x14                        ; 3D 14 00
        je      L_07F7                          ; 74 07
        cmp     ax, 0x18                        ; 3D 18 00
        je      L_080B                          ; 74 16
        jmp     L_0875                          ; EB 7E
L_07F7:
        push    si                              ; 56
        push    si                              ; 56
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _SEG1_1AFF                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        jmp     L_0885                          ; EB 7A
L_080B:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_081F                          ; 75 0E
        cmp     word ptr [si + 0x50], 0         ; 83 7C 50 00
        jne     L_081F                          ; 75 08
        mov     ax, word ptr [0x62]             ; A1 62 00
        mov     word ptr [si + 0x50], ax        ; 89 44 50
        jmp     L_0875                          ; EB 56
L_081F:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0875                          ; 74 50
        cmp     word ptr [si + 0x52], 0         ; 83 7C 52 00
        je      L_0875                          ; 74 4A
L_082B:
        mov     ax, word ptr [si + 0x40]        ; 8B 44 40
        mov     dx, word ptr [si + 0x42]        ; 8B 54 42
        jmp     L_0885                          ; EB 52
L_0833:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_084E                          ; 74 15
        cmp     word ptr [si + 0x50], 0         ; 83 7C 50 00
        je      L_082B                          ; 74 EC
        push    word ptr [si + 0x50]            ; FF 74 50
        call    far _SEG1_2E91                  ; 9A 78 04 00 00 [FIXUP]
        mov     word ptr [si + 0x50], 0         ; C7 44 50 00 00
        jmp     L_082B                          ; EB DD
L_084E:
        cmp     word ptr [0x62], 0              ; 83 3E 62 00 00
        je      L_082B                          ; 74 D6
        cmp     word ptr [si + 0x50], 0         ; 83 7C 50 00
        jne     L_082B                          ; 75 D0
        mov     ax, word ptr [0x62]             ; A1 62 00
        mov     word ptr [si + 0x50], ax        ; 89 44 50
        jmp     L_082B                          ; EB C8
L_0863:
        push    si                              ; 56
        mov     ax, 0x111                       ; B8 11 01
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        lcall   [si + 0x44]                     ; FF 5C 44
        jmp     L_082B                          ; EB B6
L_0875:
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_679B                  ; 9A FF FF 00 00 [FIXUP]
L_0885:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
L_0892:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx], 0xff          ; 26 80 3F FF
        jne     L_08A7                          ; 75 09
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 3                           ; 05 03 00
        jmp     L_08B8                          ; EB 11
L_08A7:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_08A7                          ; 75 F4
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, es                          ; 8C C2
L_08B8:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
DLGWNDPROC ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; MAPDIALOGRECT -- 50 instr
; Funcion mediana (50 instr, 0 calls).
; tags: far, medium
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; MAPDIALOGRECT  (offset 0x08BE, size 129 bytes)
;-----------------------------------------------------------------------
MAPDIALOGRECT PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        push    si                              ; 56
        call    far _SEG1_6092                  ; 9A CD 04 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0933                          ; 74 5D
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx]                ; 26 FF 37
        push    word ptr [si + 0x4c]            ; FF 74 4C
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _SEG1_520B                  ; 9A FA 08 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        push    word ptr [si + 0x4c]            ; FF 74 4C
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _SEG1_520B                  ; 9A 11 09 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr [si + 0x4e]            ; FF 74 4E
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far _SEG1_520B                  ; 9A 28 09 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        push    word ptr [si + 0x4e]            ; FF 74 4E
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far _SEG1_520B                  ; 9A E9 00 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
L_0933:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
MAPDIALOGRECT ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; CHECKRADIOBUTTON -- 35 instr
; Funcion mediana (35 instr, 0 calls).
; tags: far, medium
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; CHECKRADIOBUTTON  (offset 0x093F, size 60 bytes)
;-----------------------------------------------------------------------
CHECKRADIOBUTTON PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        jmp     L_0969                          ; EB 16
L_0953:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    si                              ; 56
        cmp     si, di                          ; 3B F7
        jne     L_0960                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0962                          ; EB 02
L_0960:
        sub     ax, ax                          ; 2B C0
L_0962:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05AB                          ; E8 43 FC
        inc     si                              ; 46
L_0969:
        cmp     word ptr [bp + 8], si           ; 39 76 08
        jge     L_0953                          ; 7D E5
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
CHECKRADIOBUTTON ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; ADJUSTWINDOWRECT -- 51 instr
; Dispatcher: tabla de decisiones cmp+jcc (51 instr).
; tags: dispatcher, far
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; ADJUSTWINDOWRECT  (offset 0x097B, size 118 bytes)
;-----------------------------------------------------------------------
ADJUSTWINDOWRECT PROC FAR
L_097B:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [0x47e]            ; 8B 36 7E 04
        mov     di, word ptr [0x480]            ; 8B 3E 80 04
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_09A2                          ; 74 0A
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr [0x1ac]            ; A1 AC 01
        sub     word ptr es:[bx + 2], ax        ; 26 29 47 02
L_09A2:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        and     ax, 0xc0                        ; 25 C0 00
        cmp     ax, 0x40                        ; 3D 40 00
        je      L_09D4                          ; 74 27
        cmp     ax, 0x80                        ; 3D 80 00
        je      L_09C5                          ; 74 13
        cmp     ax, 0xc0                        ; 3D C0 00
        jne     L_09E4                          ; 75 2D
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr [0x506]            ; A1 06 05
        sub     ax, word ptr [0x480]            ; 2B 06 80 04
        sub     word ptr es:[bx + 2], ax        ; 26 29 47 02
L_09C5:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    si                              ; 56
        push    di                              ; 57
        call    far _SEG1_6540                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_09E4                          ; EB 10
L_09D4:
        mov     ax, 5                           ; B8 05 00
        imul    si                              ; F7 EE
        mov     si, ax                          ; 8B F0
        mov     ax, 5                           ; B8 05 00
        imul    di                              ; F7 EF
        mov     di, ax                          ; 8B F8
        jmp     L_09C5                          ; EB E1
L_09E4:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
ADJUSTWINDOWRECT ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; ISDIALOGMESSAGE -- 327 instr
; Procesa mensajes de teclado en dialogo modeless.
; tags: complex_iterator, far, string_op
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; ISDIALOGMESSAGE  (offset 0x09F1, size 724 bytes)
;-----------------------------------------------------------------------
ISDIALOGMESSAGE PROC FAR
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
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        push    si                              ; 56
        call    far _SEG1_6092                  ; 9A CE 08 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0A12                          ; 75 05
L_0A0D:
        sub     ax, ax                          ; 2B C0
        jmp     L_0AF7                          ; E9 E5 00
L_0A12:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     di, word ptr es:[bx]            ; 26 8B 3F
        cmp     di, si                          ; 3B FE
        je      L_0A27                          ; 74 0B
        push    si                              ; 56
        push    di                              ; 57
        call    far _SEG1_63B4                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0A0D                          ; 74 E6
L_0A27:
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        mov     word ptr [bp - 8], 2            ; C7 46 F8 02 00
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        cmp     ax, 0x100                       ; 3D 00 01
        jne     L_0A55                          ; 75 18
        push    di                              ; 57
        mov     ax, 0x87                        ; B8 87 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A BC 0A 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        test    byte ptr [bp - 0xa], 4          ; F6 46 F6 04
        je      L_0A6D                          ; 74 18
L_0A55:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_23C2                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_247C                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0A90                          ; EB 23
L_0A6D:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        cmp     ax, 0xd                         ; 3D 0D 00
        je      L_0AAA                          ; 74 31
        ja      L_0AC2                          ; 77 47
        cmp     ax, 3                           ; 3D 03 00
        je      L_0AAF                          ; 74 2F
        cmp     ax, 9                           ; 3D 09 00
        jne     L_0A55                          ; 75 D0
        test    byte ptr [bp - 0xa], 2          ; F6 46 F6 02
        jne     L_0A55                          ; 75 CA
        push    si                              ; 56
        push    di                              ; 57
        call    L_0C0C                          ; E8 7C 01
L_0A90:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0AF7                          ; EB 62
        mov     word ptr [bp - 0xe], 1          ; C7 46 F2 01 00
        test    byte ptr [bp - 0xa], 1          ; F6 46 F6 01
        jne     L_0A55                          ; 75 B5
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    L_0B04                          ; E8 5C 00
        jmp     L_0A90                          ; EB E6
L_0AAA:
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
L_0AAF:
        push    si                              ; 56
        mov     ax, 0x111                       ; B8 11 01
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A 5C 04 00 00 [FIXUP]
        jmp     L_0A90                          ; EB CE
L_0AC2:
        sub     ax, 0x1b                        ; 2D 1B 00
        cmp     ax, 0x10                        ; 3D 10 00
        ja      L_0A55                          ; 77 8B
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0xad2]        ; 2E FF A7 D2 0A
        scasw   ax, word ptr es:[di]            ; AF
        or      dl, byte ptr [di + 0xa]         ; 0A 55 0A
        push    bp                              ; 55
        or      dl, byte ptr [di + 0xa]         ; 0A 55 0A
        push    bp                              ; 55
        or      dl, byte ptr [di + 0xa]         ; 0A 55 0A
        push    bp                              ; 55
        or      dl, byte ptr [di + 0xa]         ; 0A 55 0A
        push    bp                              ; 55
        or      dl, byte ptr [di + 0xa]         ; 0A 55 0A
        xchg    bp, ax                          ; 95
        or      dl, byte ptr [di - 0x65f6]      ; 0A 95 0A 9A
        or      bl, byte ptr [bp + si + 0x550a] ; 0A 9A 0A 55
        or      dl, byte ptr [di + 0xa]         ; 0A 55 0A
        stosb   byte ptr es:[di], al            ; AA
        or      ch, cl                          ; 0A E9
        pop     si                              ; 5E
        lcall   [bp + 0x5f]                     ; FF 5E 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
L_0B04:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0C73                          ; E8 5F 01
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     si, ax                          ; 8B F0
L_0B19:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_0B28                          ; 74 09
        push    word ptr [bp + 8]               ; FF 76 08
        push    si                              ; 56
        call    L_0B83                          ; E8 5D 00
        jmp     L_0B2F                          ; EB 07
L_0B28:
        push    word ptr [bp + 8]               ; FF 76 08
        push    si                              ; 56
        call    L_0B4D                          ; E8 1E 00
L_0B2F:
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp + 6], si           ; 39 76 06
        je      L_0B42                          ; 74 0C
        test    byte ptr [si + 0x33], 8         ; F6 44 33 08
        jne     L_0B19                          ; 75 DD
        test    byte ptr [si + 0x33], 0x10      ; F6 44 33 10
        je      L_0B19                          ; 74 D7
L_0B42:
        push    si                              ; 56
        call    L_044A                          ; E8 04 F9
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
L_0B4D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        push    si                              ; 56
        call    L_0BBF                          ; E8 60 00
        mov     di, ax                          ; 8B F8
        push    si                              ; 56
        push    di                              ; 57
        call    L_0CA6                          ; E8 40 01
        or      ax, ax                          ; 0B C0
        je      L_0B79                          ; 74 0F
L_0B6A:
        push    word ptr [bp + 6]               ; FF 76 06
        push    di                              ; 57
        call    L_0BDD                          ; E8 6C 00
        mov     di, ax                          ; 8B F8
        test    byte ptr [di + 0x32], 2         ; F6 45 32 02
        je      L_0B6A                          ; 74 F1
L_0B79:
        mov     ax, di                          ; 8B C7
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
L_0B83:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        test    byte ptr [si + 0x32], 2         ; F6 44 32 02
        je      L_0BB0                          ; 74 1C
L_0B94:
        push    word ptr [bp + 6]               ; FF 76 06
        push    si                              ; 56
        call    L_0BBF                          ; E8 24 00
        mov     di, ax                          ; 8B F8
        push    word ptr [bp + 4]               ; FF 76 04
        push    di                              ; 57
        call    L_0CA6                          ; E8 02 01
        or      ax, ax                          ; 0B C0
        je      L_0BAC                          ; 74 04
        mov     ax, si                          ; 8B C6
        jmp     L_0BB7                          ; EB 0B
L_0BAC:
        mov     si, di                          ; 8B F7
        jmp     L_0B94                          ; EB E4
L_0BB0:
        push    word ptr [bp + 6]               ; FF 76 06
        push    si                              ; 56
        call    L_0BDD                          ; E8 26 00
L_0BB7:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
L_0BBF:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     di, word ptr [di]               ; 8B 3D
        or      di, di                          ; 0B FF
        jne     L_0BD3                          ; 75 03
        mov     di, word ptr [si + 2]           ; 8B 7C 02
L_0BD3:
        mov     ax, di                          ; 8B C7
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
L_0BDD:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        sub     si, si                          ; 2B F6
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
L_0BEA:
        push    word ptr [bp + 6]               ; FF 76 06
        push    di                              ; 57
        call    L_0BBF                          ; E8 CE FF
        mov     di, ax                          ; 8B F8
        cmp     word ptr [bp + 4], di           ; 39 7E 04
        jne     L_0C00                          ; 75 08
        or      si, si                          ; 0B F6
        je      L_0C00                          ; 74 04
        mov     ax, si                          ; 8B C6
        jmp     L_0C04                          ; EB 04
L_0C00:
        mov     si, di                          ; 8B F7
        jmp     L_0BEA                          ; EB E6
L_0C04:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
L_0C0C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far _SEG1_2E78                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_0C29                          ; 7D 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0C2B                          ; EB 02
L_0C29:
        sub     ax, ax                          ; 2B C0
L_0C2B:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        push    si                              ; 56
        call    L_0C73                          ; E8 3E 00
        mov     si, ax                          ; 8B F0
        mov     di, si                          ; 8B FE
L_0C39:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0C48                          ; 74 09
        push    word ptr [bp + 6]               ; FF 76 06
        push    di                              ; 57
        call    L_0BDD                          ; E8 97 FF
        jmp     L_0C4F                          ; EB 07
L_0C48:
        push    word ptr [bp + 6]               ; FF 76 06
        push    di                              ; 57
        call    L_0BBF                          ; E8 70 FF
L_0C4F:
        mov     di, ax                          ; 8B F8
        cmp     di, si                          ; 3B FE
        je      L_0C67                          ; 74 12
        test    byte ptr [di + 0x32], 1         ; F6 45 32 01
        je      L_0C39                          ; 74 DE
        test    byte ptr [di + 0x33], 8         ; F6 45 33 08
        jne     L_0C39                          ; 75 D8
        test    byte ptr [di + 0x33], 0x10      ; F6 45 33 10
        je      L_0C39                          ; 74 D2
L_0C67:
        push    di                              ; 57
        call    L_044A                          ; E8 DF F7
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
L_0C73:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
L_0C7E:
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     bx, di                          ; 8B DF
        mov     ax, word ptr [bx + 0x38]        ; 8B 47 38
        mov     word ptr [bp + 4], ax           ; 89 46 04
        or      ax, ax                          ; 0B C0
        je      L_0C9C                          ; 74 0F
        cmp     ax, si                          ; 3B C6
        je      L_0C9C                          ; 74 0B
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx + 0x33]        ; 8A 47 33
        and     al, 0xc0                        ; 24 C0
        cmp     al, 0x40                        ; 3C 40
        je      L_0C7E                          ; 74 E2
L_0C9C:
        mov     ax, di                          ; 8B C7
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
L_0CA6:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        test    byte ptr [bx + 0x32], 2         ; F6 47 32 02
        jne     L_0CB9                          ; 75 07
        mov     ax, bx                          ; 8B C3
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_0CBE                          ; 75 05
L_0CB9:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0CC0                          ; EB 02
L_0CBE:
        sub     ax, ax                          ; 2B C0
L_0CC0:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      004h                            ; 04
ISDIALOGMESSAGE ENDP


USER_TEXT ENDS

        END
