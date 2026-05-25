; AUTO-GENERATED from original USER segment 20
; segment_size=2321 bytes, flags=0xf130
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
; sub_0000 -- offset 0x0000 -- 26 instr
; Funcion sin clasificar definitiva (26 instr).
; tags: small
; calls (intra): sub_009E, sub_00D7, sub_04EB
;----------------------------------------------------------------------

L_0000:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        push    si                              ; 56
        call    far _SEG1_0E13                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_002C                          ; 74 17
        push    si                              ; 56
        call    far _SEG1_8551                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        call    far _SEG1_37F9                  ; 9A 22 01 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        push    si                              ; 56
        push    di                              ; 57
        call    L_0036                          ; E8 0E 00
        mov     ax, di                          ; 8B C7
        jmp     L_002E                          ; EB 02
L_002C:
        sub     ax, ax                          ; 2B C0
L_002E:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0036 -- offset 0x0036 -- 21 instr
; Funcion sin clasificar definitiva (21 instr).
; tags: calls_gdi, small
; callers: BUTTONWNDPROC, sub_0000
; calls (inter): GDI.SETBKMODE
;----------------------------------------------------------------------
L_0036:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _SEG1_1BAC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x652], ax            ; A3 52 06
        push    di                              ; 57
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0061 -- offset 0x0061 -- 13 instr
; Funcion sin clasificar definitiva (13 instr).
; tags: small
; callers: BUTTONWNDPROC
;----------------------------------------------------------------------
L_0061:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        push    si                              ; 56
        call    far _SEG1_8586                  ; 9A 5D 01 00 00 [FIXUP]
        push    si                              ; 56
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _SEG1_381A                  ; 9A 3E 01 00 00 [FIXUP]
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; BUTTONWNDPROC -- 932 instr
; Dispatcher: tabla de decisiones cmp+jcc (932 instr).
; tags: calls_gdi, calls_kernel, dispatcher, far
; calls (intra): sub_0036, sub_0061
; calls (inter): GDI.GETTEXTEXTENT, GDI.SELECTOBJECT, GDI.SETBKMODE, KERNEL.LSTRLEN
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; BUTTONWNDPROC  (offset 0x007E, size 2195 bytes)
;-----------------------------------------------------------------------
BUTTONWNDPROC PROC FAR
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
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     di, word ptr [bp + 0xa]         ; 8B 7E 0A
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x100                       ; 3D 00 01
        jne     L_009E                          ; 75 03
        jmp     L_0172                          ; E9 D4 00
L_009E:
        jbe     L_00A3                          ; 76 03
        jmp     L_02CA                          ; E9 27 02
L_00A3:
        cmp     ax, 7                           ; 3D 07 00
        je      L_011C                          ; 74 74
        cmp     ax, 8                           ; 3D 08 00
        jne     L_00B0                          ; 75 03
        jmp     L_0163                          ; E9 B3 00
L_00B0:
        cmp     ax, 0xa                         ; 3D 0A 00
        jne     L_00B8                          ; 75 03
        jmp     L_0296                          ; E9 DE 01
L_00B8:
        cmp     ax, 0xc                         ; 3D 0C 00
        jne     L_00C0                          ; 75 03
        jmp     L_028A                          ; E9 CA 01
L_00C0:
        cmp     ax, 0xf                         ; 3D 0F 00
        je      L_00D0                          ; 74 0B
        cmp     ax, 0x84                        ; 3D 84 00
        jne     L_00CD                          ; 75 03
        jmp     L_0180                          ; E9 B3 00
L_00CD:
        jmp     L_02E7                          ; E9 17 02
L_00D0:
        mov     ax, di                          ; 8B C7
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_00E7                          ; 75 0E
        push    si                              ; 56
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_199A                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
L_00E7:
        push    si                              ; 56
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_0036                          ; E8 48 FF
        push    si                              ; 56
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        call    L_0356                          ; E8 5E 02
        or      di, di                          ; 0B FF
        jne     L_0107                          ; 75 0B
        push    si                              ; 56
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_1A93                  ; 9A FF FF 00 00 [FIXUP]
L_0107:
        sub     ax, ax                          ; 2B C0
L_0109:
        cdq                                     ; 99
        jmp     L_031B                          ; E9 0E 02
L_010D:
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_046D                          ; E8 53 03
        jmp     L_0107                          ; EB EB
L_011C:
        or      byte ptr [si + 0x40], 8         ; 80 4C 40 08
        push    si                              ; 56
        call    far _SEG1_37F9                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    si                              ; 56
        push    ax                              ; 50
        call    L_0036                          ; E8 08 FF
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0724                          ; E8 EB 05
        push    si                              ; 56
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far _SEG1_381A                  ; 9A FF FF 00 00 [FIXUP]
        test    byte ptr [si + 0x40], 0x10      ; F6 44 40 10
        jne     L_0107                          ; 75 BF
        cmp     byte ptr [si + 0x30], 4         ; 80 7C 30 04
        jne     L_015B                          ; 75 0D
        test    byte ptr [si + 0x40], 3         ; F6 44 40 03
        jne     L_015B                          ; 75 07
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0804                          ; E8 A9 06
L_015B:
        push    si                              ; 56
        call    far _SEG1_8586                  ; 9A C3 02 00 00 [FIXUP]
        jmp     L_0107                          ; EB A4
L_0163:
        push    si                              ; 56
        call    L_053C                          ; E8 D5 03
        and     byte ptr [si + 0x40], 0xf7      ; 80 64 40 F7
        call    far _SEG1_8472                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0107                          ; EB 95
L_0172:
        cmp     di, 0x20                        ; 83 FF 20
        jne     L_0107                          ; 75 90
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_04FA                          ; E8 7C 03
        jmp     L_0107                          ; EB 87
L_0180:
        cmp     byte ptr [si + 0x30], 7         ; 80 7C 30 07
        je      L_0189                          ; 74 03
        jmp     L_02E7                          ; E9 5E 01
L_0189:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0109                          ; E9 7A FF
L_018F:
        cmp     di, 0x20                        ; 83 FF 20
        jne     L_01A4                          ; 75 10
        test    byte ptr [si + 0x40], 4         ; F6 44 40 04
        jne     L_019D                          ; 75 03
        jmp     L_0107                          ; E9 6A FF
L_019D:
        push    si                              ; 56
        call    L_056E                          ; E8 CD 03
        jmp     L_0107                          ; E9 63 FF
L_01A4:
        push    si                              ; 56
        call    L_053C                          ; E8 94 03
        jmp     L_02E7                          ; E9 3C 01
L_01AB:
        mov     al, byte ptr [si + 0x40]        ; 8A 44 40
        sub     ah, ah                          ; 2A E4
L_01B0:
        sub     dx, dx                          ; 2B D2
        jmp     L_031B                          ; E9 66 01
L_01B5:
        mov     al, byte ptr [si + 0x40]        ; 8A 44 40
        sub     ah, ah                          ; 2A E4
        and     ax, 4                           ; 25 04 00
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      di, di                          ; 0B FF
        je      L_01CA                          ; 74 06
        or      byte ptr [si + 0x40], 4         ; 80 4C 40 04
        jmp     L_01CE                          ; EB 04
L_01CA:
        and     byte ptr [si + 0x40], 0xfb      ; 80 64 40 FB
L_01CE:
        push    si                              ; 56
        call    0                               ; E8 2E FE
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_01DC                          ; 75 03
        jmp     L_0107                          ; E9 2B FF
L_01DC:
        cmp     byte ptr [si + 0x30], 8         ; 80 7C 30 08
        jne     L_01F5                          ; 75 13
        push    si                              ; 56
        or      di, di                          ; 0B FF
        je      L_01EC                          ; 74 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_01EF                          ; EB 03
L_01EC:
        mov     ax, 3                           ; B8 03 00
L_01EF:
        push    ax                              ; 50
        call    L_0804                          ; E8 11 06
        jmp     L_01FF                          ; EB 0A
L_01F5:
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    si                              ; 56
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    L_05DA                          ; E8 DB 03
L_01FF:
        push    si                              ; 56
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_0061                          ; E8 5B FE
        jmp     L_0107                          ; E9 FE FE
L_0209:
        mov     al, byte ptr [si + 0x40]        ; 8A 44 40
        sub     ah, ah                          ; 2A E4
        and     ax, 3                           ; 25 03 00
        jmp     L_01B0                          ; EB 9D
L_0213:
        mov     al, byte ptr [si + 0x30]        ; 8A 44 30
        sub     ah, ah                          ; 2A E4
        cmp     ax, 2                           ; 3D 02 00
        jae     L_0220                          ; 73 03
        jmp     L_0107                          ; E9 E7 FE
L_0220:
        cmp     ax, 3                           ; 3D 03 00
        jbe     L_0248                          ; 76 23
        cmp     ax, 4                           ; 3D 04 00
        je      L_023A                          ; 74 10
        cmp     ax, 5                           ; 3D 05 00
        jae     L_0232                          ; 73 03
        jmp     L_0107                          ; E9 D5 FE
L_0232:
        cmp     ax, 6                           ; 3D 06 00
        jbe     L_0251                          ; 76 1A
        jmp     L_0107                          ; E9 CD FE
L_023A:
        or      di, di                          ; 0B FF
        je      L_0244                          ; 74 06
        or      byte ptr [si + 0x32], 1         ; 80 4C 32 01
        jmp     L_0248                          ; EB 04
L_0244:
        and     byte ptr [si + 0x32], 0xfe      ; 80 64 32 FE
L_0248:
        or      di, di                          ; 0B FF
        je      L_0259                          ; 74 0D
        mov     di, 1                           ; BF 01 00
        jmp     L_0259                          ; EB 08
L_0251:
        cmp     di, 2                           ; 83 FF 02
        jbe     L_0259                          ; 76 03
        mov     di, 2                           ; BF 02 00
L_0259:
        mov     al, byte ptr [si + 0x40]        ; 8A 44 40
        sub     ah, ah                          ; 2A E4
        and     ax, 3                           ; 25 03 00
        cmp     ax, di                          ; 3B C7
        jne     L_0268                          ; 75 03
        jmp     L_0107                          ; E9 9F FE
L_0268:
        mov     al, byte ptr [si + 0x40]        ; 8A 44 40
        and     al, 0xfc                        ; 24 FC
        mov     cx, di                          ; 8B CF
        or      al, cl                          ; 0A C1
        mov     byte ptr [si + 0x40], al        ; 88 44 40
        push    si                              ; 56
        call    0                               ; E8 88 FD
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_0282                          ; 75 03
        jmp     L_0107                          ; E9 85 FE
L_0282:
        push    ax                              ; 50
        push    si                              ; 56
        call    L_0644                          ; E8 BD 03
        jmp     L_01FF                          ; E9 75 FF
L_028A:
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_6C09                  ; 9A FF FF 00 00 [FIXUP]
L_0296:
        push    si                              ; 56
        call    0                               ; E8 66 FD
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_02A4                          ; 75 03
        jmp     L_0107                          ; E9 63 FE
L_02A4:
        push    si                              ; 56
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0356                          ; E8 A9 00
        test    byte ptr [si + 0x40], 8         ; F6 44 40 08
        jne     L_02B6                          ; 75 03
        jmp     L_01FF                          ; E9 49 FF
L_02B6:
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0724                          ; E8 63 04
        push    si                              ; 56
        call    far _SEG1_8586                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01FF                          ; E9 35 FF
L_02CA:
        cmp     ax, 0x202                       ; 3D 02 02
        ja      L_02F9                          ; 77 2A
        cmp     ax, 0x200                       ; 3D 00 02
        jb      L_02D7                          ; 72 03
        jmp     L_010D                          ; E9 36 FE
L_02D7:
        cmp     ax, 0x101                       ; 3D 01 01
        jne     L_02DF                          ; 75 03
        jmp     L_018F                          ; E9 B0 FE
L_02DF:
        cmp     ax, 0x105                       ; 3D 05 01
        jne     L_02E7                          ; 75 03
        jmp     L_018F                          ; E9 A8 FE
L_02E7:
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    di                              ; 57
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_679B                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_031B                          ; EB 22
L_02F9:
        cmp     ax, 0x400                       ; 3D 00 04
        jne     L_0301                          ; 75 03
        jmp     L_0209                          ; E9 08 FF
L_0301:
        cmp     ax, 0x401                       ; 3D 01 04
        jne     L_0309                          ; 75 03
        jmp     L_0213                          ; E9 0A FF
L_0309:
        cmp     ax, 0x402                       ; 3D 02 04
        jne     L_0311                          ; 75 03
        jmp     L_01AB                          ; E9 9A FE
L_0311:
        cmp     ax, 0x403                       ; 3D 03 04
        jne     L_0319                          ; 75 03
        jmp     L_01B5                          ; E9 9C FE
L_0319:
        jmp     L_02E7                          ; EB CC
L_031B:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
L_0328:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     al, byte ptr [si + 0x40]        ; 8A 44 40
        sub     ah, ah                          ; 2A E4
        and     ax, 4                           ; 25 04 00
        cmp     ax, di                          ; 3B C7
        je      L_034E                          ; 74 0F
        push    si                              ; 56
        mov     ax, 0x403                       ; B8 03 04
        push    ax                              ; 50
        push    di                              ; 57
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A FF FF 00 00 [FIXUP]
L_034E:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
L_0356:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_037E                          ; 74 14
        cmp     byte ptr [si + 0x30], 7         ; 80 7C 30 07
        je      L_037E                          ; 74 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [0x652]                ; FF 36 52 06
        call    far _SEG1_1AFF                  ; 9A FF FF 00 00 [FIXUP]
L_037E:
        push    di                              ; 57
        push    word ptr [0x652]                ; FF 36 52 06
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     al, byte ptr [si + 0x30]        ; 8A 44 30
        sub     ah, ah                          ; 2A E4
        cmp     ax, 8                           ; 3D 08 00
        jbe     L_0398                          ; 76 03
        jmp     L_045C                          ; E9 C4 00
L_0398:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x44a]        ; 2E FF A7 4A 04
        push    di                              ; 57
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0724                          ; E8 7C 03
        push    di                              ; 57
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_05DA                          ; E8 2A 02
        push    si                              ; 56
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_6121                  ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     al, byte ptr [si + 0x30]        ; 8A 44 30
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_7F06                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_045C                          ; E9 8A 00
        push    di                              ; 57
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0724                          ; E8 4A 03
        push    di                              ; 57
        push    si                              ; 56
        call    L_0644                          ; E8 65 02
        jmp     L_045C                          ; EB 7B
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0804                          ; E8 1B 04
        test    byte ptr [si + 0x40], 4         ; F6 44 40 04
        je      L_03F7                          ; 74 08
        push    si                              ; 56
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_0804                          ; E8 0D 04
L_03F7:
        test    byte ptr [si + 0x33], 8         ; F6 44 33 08
        je      L_045C                          ; 74 5F
        push    si                              ; 56
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    L_0804                          ; E8 FF 03
        jmp     L_045C                          ; EB 55
        push    si                              ; 56
        push    di                              ; 57
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    L_082A                          ; E8 15 04
        push    di                              ; 57
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_45E5                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        push    di                              ; 57
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    L_082A                          ; E8 F9 03
        push    di                              ; 57
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x3c6]                ; FF 36 C6 03
        call    far _SEG1_665A                  ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0724                          ; E8 DC 02
        jmp     L_045C                          ; EB 12
        mov     al, byte ptr [0xa003]           ; A0 03 A0
        add     dx, dx                          ; 03 D2
        add     dx, dx                          ; 03 D2
        add     dx, dx                          ; 03 D2
        add     dx, dx                          ; 03 D2
        add     dx, dx                          ; 03 D2
        add     ax, word ptr [bx]               ; 03 07
        add     al, 0xe1                        ; 04 E1
        add     dx, word ptr [bx - 1]           ; 03 57 FF
        jbe     L_0456                          ; 76 F6
        call    far GDI.SELECTOBJECT            ; 9A 84 03 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
L_046D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        cmp     byte ptr [si + 0x30], 7         ; 80 7C 30 07
        jne     L_049B                          ; 75 1E
        push    si                              ; 56
        call    0                               ; E8 7F FB
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    si                              ; 56
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    L_082A                          ; E8 98 03
        push    si                              ; 56
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    L_0061                          ; E8 C8 FB
        jmp     L_04A6                          ; EB 0B
L_049B:
        push    si                              ; 56
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_6121                  ; 9A 1C 06 00 00 [FIXUP]
L_04A6:
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _SEG1_64DE                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_04EF                          ; 74 35
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x200                       ; 3D 00 02
        je      L_04D2                          ; 74 10
        cmp     ax, 0x201                       ; 3D 01 02
        je      L_04DF                          ; 74 18
        cmp     ax, 0x202                       ; 3D 02 02
        jne     L_04F3                          ; 75 27
        push    si                              ; 56
        call    L_056E                          ; E8 9E 00
        jmp     L_04F3                          ; EB 21
L_04D2:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_2E78                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_04F3                          ; 7D 14
L_04DF:
        cmp     byte ptr [si + 0x30], 7         ; 80 7C 30 07
        je      L_04F3                          ; 74 0E
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_04FA                          ; E8 0D 00
        jmp     L_04F3                          ; EB 04
L_04EF:
        push    si                              ; 56
        call    L_053C                          ; E8 49 00
L_04F3:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
L_04FA:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        test    byte ptr [si + 0x40], 4         ; F6 44 40 04
        jne     L_0535                          ; 75 2E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_8551                  ; 9A 17 00 00 00 [FIXUP]
        or      byte ptr [si + 0x40], 0x10      ; 80 4C 40 10
        push    si                              ; 56
        call    far _SEG1_2E91                  ; 9A FF FF 00 00 [FIXUP]
        and     byte ptr [si + 0x40], 0xef      ; 80 64 40 EF
        push    si                              ; 56
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    L_0328                          ; E8 03 FE
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_0535                          ; 74 0A
        or      byte ptr [si + 0x40], 0x20      ; 80 4C 40 20
        push    si                              ; 56
        call    far _SEG1_325A                  ; 9A FF FF 00 00 [FIXUP]
L_0535:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
L_053C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        test    byte ptr [si + 0x40], 4         ; F6 44 40 04
        je      L_055F                          ; 74 16
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0328                          ; E8 D8 FD
        test    byte ptr [si + 0x40], 0x20      ; F6 44 40 20
        je      L_055F                          ; 74 09
        call    far _SEG1_3273                  ; 9A 7A 05 00 00 [FIXUP]
        and     byte ptr [si + 0x40], 0xdf      ; 80 64 40 DF
L_055F:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_8586                  ; 9A CE 05 00 00 [FIXUP]
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
L_056E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        call    far _SEG1_3273                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0328                          ; E8 A3 FD
        mov     al, byte ptr [si + 0x30]        ; 8A 44 30
        sub     ah, ah                          ; 2A E4
        cmp     ax, 3                           ; 3D 03 00
        je      L_0594                          ; 74 05
        cmp     ax, 6                           ; 3D 06 00
        jne     L_05C3                          ; 75 2F
L_0594:
        mov     al, byte ptr [si + 0x40]        ; 8A 44 40
        sub     ah, ah                          ; 2A E4
        mov     di, ax                          ; 8B F8
        and     di, 3                           ; 81 E7 03 00
        inc     di                              ; 47
        cmp     byte ptr [si + 0x30], 6         ; 80 7C 30 06
        jne     L_05AB                          ; 75 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_05AE                          ; EB 03
L_05AB:
        mov     ax, 1                           ; B8 01 00
L_05AE:
        cmp     ax, di                          ; 3B C7
        jge     L_05B4                          ; 7D 02
        sub     di, di                          ; 2B FF
L_05B4:
        push    si                              ; 56
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        push    di                              ; 57
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A 4A 03 00 00 [FIXUP]
L_05C3:
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0804                          ; E8 3A 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_8586                  ; 9A 6A 00 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
L_05DA:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_05F3                          ; 74 05
        mov     word ptr [bp + 4], 4            ; C7 46 04 04 00
L_05F3:
        mov     al, byte ptr [di + 0x40]        ; 8A 45 40
        sub     ah, ah                          ; 2A E4
        and     ax, 4                           ; 25 04 00
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        je      L_063C                          ; 74 3C
        mov     al, byte ptr [di + 0x30]        ; 8A 45 30
        sub     ah, ah                          ; 2A E4
        or      ax, ax                          ; 0B C0
        jb      L_0637                          ; 72 2E
        cmp     ax, 1                           ; 3D 01 00
        jbe     L_0615                          ; 76 07
        cmp     ax, 7                           ; 3D 07 00
        je      L_063C                          ; 74 29
        jmp     L_0637                          ; EB 22
L_0615:
        push    di                              ; 57
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_6121                  ; 9A B7 03 00 00 [FIXUP]
        push    si                              ; 56
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     al, byte ptr [di + 0x30]        ; 8A 45 30
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_7F06                  ; 9A CB 03 00 00 [FIXUP]
        jmp     L_063C                          ; EB 05
L_0637:
        push    si                              ; 56
        push    di                              ; 57
        call    L_0644                          ; E8 08 00
L_063C:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
L_0644:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x14                        ; 83 EC 14
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_082A                          ; E8 CB 01
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        mov     al, byte ptr [si + 0x30]        ; 8A 44 30
        sub     ah, ah                          ; 2A E4
        cmp     ax, 4                           ; 3D 04 00
        je      L_067A                          ; 74 0C
        cmp     ax, 5                           ; 3D 05 00
        jb      L_067F                          ; 72 0C
        cmp     ax, 6                           ; 3D 06 00
        jbe     L_068A                          ; 76 12
        jmp     L_067F                          ; EB 05
L_067A:
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
L_067F:
        test    byte ptr [si + 0x40], 4         ; F6 44 40 04
        je      L_069C                          ; 74 17
        mov     ax, 2                           ; B8 02 00
        jmp     L_069E                          ; EB 14
L_068A:
        mov     word ptr [bp - 2], 2            ; C7 46 FE 02 00
        cmp     byte ptr [si + 0x40], 2         ; 80 7C 40 02
        je      L_067F                          ; 74 EA
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_067F                          ; EB E3
L_069C:
        sub     ax, ax                          ; 2B C0
L_069E:
        mov     di, ax                          ; 8B F8
        test    byte ptr [si + 0x40], 3         ; F6 44 40 03
        je      L_06AB                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_06AD                          ; EB 02
L_06AB:
        sub     ax, ax                          ; 2B C0
L_06AD:
        or      ax, di                          ; 0B C7
        imul    word ptr [0x45a]                ; F7 2E 5A 04
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        imul    word ptr [0x45c]                ; F7 2E 5C 04
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [0x45a]            ; 03 06 5A 04
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [0x45c]            ; 03 06 5C 04
        push    ax                              ; 50
        call    far _SEG1_643D                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [si + 0x38]            ; FF 74 38
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x652]                ; FF 36 52 06
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_1B34                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x454]                ; FF 36 54 04
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [0x45a]                ; FF 36 5A 04
        push    word ptr [0x45c]                ; FF 36 5C 04
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_4ECE                  ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
L_0724:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x16                        ; 83 EC 16
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     bl, byte ptr [si + 0x30]        ; 8A 5C 30
        sub     bh, bh                          ; 2A FF
        mov     al, byte ptr [bx + 0x202]       ; 8A 87 02 02
        cwde                                    ; 98
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_082A                          ; E8 DF 00
        mov     ax, word ptr [si + 0x36]        ; 8B 44 36
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [si + 0x36]        ; 8B 44 36
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far _SEG1_52BE                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     di, word ptr [bp - 0x10]        ; 8B 7E F0
        cmp     word ptr [bp - 4], 2            ; 83 7E FC 02
        je      L_0783                          ; 74 0C
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        sub     ax, di                          ; 2B C7
        shr     ax, 1                           ; D1 E8
        add     di, ax                          ; 03 F8
L_0783:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
        shr     ax, 1                           ; D1 E8
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_07B7                          ; 74 1D
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    ax                              ; 50
        call    far _SEG1_8395                  ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [bp - 2]           ; 03 46 FE
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far _SEG1_84B8                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_07FC                          ; EB 45
L_07B7:
        test    byte ptr [si + 0x33], 8         ; F6 44 33 08
        je      L_07DC                          ; 74 1F
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x36]        ; 8B 44 36
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    di                              ; 57
        push    word ptr [bp - 2]               ; FF 76 FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_4D62                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_07FC                          ; EB 20
L_07DC:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A 55 00 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    di                              ; 57
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, word ptr [si + 0x36]        ; 8B 44 36
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far _SEG1_52E5                  ; 9A FF FF 00 00 [FIXUP]
L_07FC:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
L_0804:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        push    word ptr [si + 0x38]            ; FF 74 38
        mov     ax, 0x111                       ; B8 11 01
        push    ax                              ; 50
        push    word ptr [si + 0x34]            ; FF 74 34
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        sub     ax, ax                          ; 2B C0
        mov     ax, si                          ; 8B C6
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A BF 05 00 00 [FIXUP]
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
L_082A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        mov     di, word ptr [bp + 0xa]         ; 8B 7E 0A
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_6121                  ; 9A A2 04 00 00 [FIXUP]
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, ax                          ; 0B C0
        jne     L_084E                          ; 75 03
        jmp     L_090A                          ; E9 BC 00
L_084E:
        cmp     ax, 1                           ; 3D 01 00
        je      L_0868                          ; 74 15
        cmp     ax, 2                           ; 3D 02 00
        je      L_0880                          ; 74 28
        cmp     ax, 3                           ; 3D 03 00
        je      L_088E                          ; 74 31
        cmp     ax, 4                           ; 3D 04 00
        jne     L_0865                          ; 75 03
        jmp     L_08E8                          ; E9 83 00
L_0865:
        jmp     L_090A                          ; E9 A2 00
L_0868:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        sub     ax, word ptr es:[bx + 2]        ; 26 2B 47 02
        sub     ax, word ptr [0x45c]            ; 2B 06 5C 04
        sar     ax, 1                           ; D1 F8
L_0879:
        add     word ptr es:[bx + 2], ax        ; 26 01 47 02
        jmp     L_090A                          ; E9 8A 00
L_0880:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [0x45a]            ; A1 5A 04
        add     ax, 4                           ; 05 04 00
        add     word ptr es:[bx], ax            ; 26 01 07
        jmp     L_090A                          ; EB 7C
L_088E:
        mov     ax, word ptr [si + 0x36]        ; 8B 44 36
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 51 07 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    di                              ; 57
        mov     ax, word ptr [si + 0x36]        ; 8B 44 36
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _SEG1_52BE                  ; 9A F6 08 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        push    di                              ; 57
        mov     ax, 0xc13                       ; B8 13 0C
        mov     dx, OFFSET _SEG1_0C13           ; BA ED 08 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.GETTEXTEXTENT           ; 9A FF FF 00 00 [FIXUP]
        sub     ax, word ptr [0x480]            ; 2B 06 80 04
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     word ptr es:[bx], ax            ; 26 01 07
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        add     ax, 4                           ; 05 04 00
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr es:[bx + 2]        ; 26 03 47 02
        add     ax, 4                           ; 05 04 00
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        jmp     L_090A                          ; EB 22
L_08E8:
        push    di                              ; 57
        mov     ax, 0xc13                       ; B8 13 0C
        mov     dx, OFFSET _SEG1_0C13           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_52BE                  ; 9A 64 07 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, dx                          ; 8B C2
        shr     ax, 1                           ; D1 E8
        jmp     L_0879                          ; E9 6F FF
L_090A:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      00ah                            ; 0A
BUTTONWNDPROC ENDP


USER_TEXT ENDS

        END
