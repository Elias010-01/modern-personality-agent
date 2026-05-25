; AUTO-GENERATED from original GDI segment 28
; segment_size=5129 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

GDI_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xe2                        ; 81 EC E2 00
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0x3c], 0         ; C7 46 C4 00 00
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [si + 0x34]        ; 8B 44 34
        mov     dx, word ptr [si + 0x36]        ; 8B 54 36
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     word ptr [bp - 0x24], dx        ; 89 56 DC
        mov     di, word ptr [si + 0x32]        ; 8B 7C 32
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        les     bx, ptr [bp - 0x26]             ; C4 5E DA
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
        mov     word ptr [bp - 0x60], ax        ; 89 46 A0
        mov     ax, word ptr [di]               ; 8B 05
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        mov     word ptr [bp - 0xae], ax        ; 89 86 52 FF
        mov     ax, word ptr [di + 0xf]         ; 8B 45 0F
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        test    word ptr [bp - 0x1c], 0x200     ; F7 46 E4 00 02
        je      L_0071                          ; 74 1E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x60]            ; FF 76 A0
        call    far _SEG1_2D82                  ; 9A 10 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        cmp     ax, 1                           ; 3D 01 00
        jge     L_0076                          ; 7D 0C
        mov     word ptr [bp - 0x30], 1         ; C7 46 D0 01 00
        jmp     L_0076                          ; EB 05
L_0071:
        mov     word ptr [bp - 0x30], 0         ; C7 46 D0 00 00
L_0076:
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        and     ax, 0x400                       ; 25 00 04
        mov     word ptr [bp - 0x5c], ax        ; 89 46 A4
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        and     ax, 0x800                       ; 25 00 08
        mov     word ptr [bp - 0xde], ax        ; 89 86 22 FF
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        and     ax, 0x1000                      ; 25 00 10
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        push    word ptr [di + 4]               ; FF 75 04
        call    L_0F99                          ; E8 01 0F
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        push    word ptr [di + 6]               ; FF 75 06
        call    L_0F99                          ; E8 F8 0E
        mov     word ptr [bp - 0xb0], ax        ; 89 86 50 FF
        mov     ax, word ptr [bp - 0x56]        ; 8B 46 AA
        sub     ax, word ptr [bp - 0xb0]        ; 2B 86 50 FF
        push    ax                              ; 50
        call    L_0F99                          ; E8 E9 0E
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        push    ax                              ; 50
        call    L_12FC                          ; E8 41 12
        mov     word ptr [bp - 0xb0], ax        ; 89 86 50 FF
        mov     ax, word ptr [bp - 0x56]        ; 8B 46 AA
        sub     ax, word ptr [bp - 0xb0]        ; 2B 86 50 FF
        push    ax                              ; 50
        call    L_0F99                          ; E8 CF 0E
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     word ptr [bp - 0x32], 0         ; C7 46 CE 00 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        les     bx, ptr [bp - 0x26]             ; C4 5E DA
        mov     al, byte ptr es:[bx + 0x1d]     ; 26 8A 47 1D
        mov     byte ptr [bp - 0xa], al         ; 88 46 F6
        mov     al, byte ptr es:[bx + 0x1e]     ; 26 8A 47 1E
        mov     byte ptr [bp - 0x40], al        ; 88 46 C0
        mov     al, byte ptr es:[bx + 0x1f]     ; 26 8A 47 1F
        add     al, byte ptr [bp - 0xa]         ; 02 46 F6
        mov     byte ptr [bp - 0x2a], al        ; 88 46 D6
        mov     al, byte ptr es:[bx + 0x20]     ; 26 8A 47 20
        mov     byte ptr [bp - 0xa4], al        ; 88 86 5C FF
        mov     al, byte ptr es:[bx + 0x18]     ; 26 8A 47 18
        sub     ah, ah                          ; 2A E4
        and     ax, 1                           ; 25 01 00
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 0x28], 0         ; C7 46 D8 00 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [si + 0x5a]            ; FF 74 5A
        push    word ptr [si + 0x58]            ; FF 74 58
        call    far _SEG1_0894                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        or      ax, ax                          ; 0B C0
        jne     L_012D                          ; 75 03
        jmp     L_0557                          ; E9 2A 04
L_012D:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    ax                              ; 50
        call    far _SEG1_12B6                  ; 9A 79 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x52], ax        ; 89 46 AE
        or      ax, ax                          ; 0B C0
        jne     L_0140                          ; 75 03
        jmp     L_054F                          ; E9 0F 04
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0140 -- offset 0x0140 -- 703 instr
; Dispatcher: tabla de decisiones cmp+jcc (703 instr).
; tags: dispatcher, far
; calls (intra): sub_0922, sub_0A18, sub_0F99, sub_0FC0, sub_120D, sub_12FC
;----------------------------------------------------------------------
L_0140:
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far _SEG1_3115                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        cmp     word ptr [si + 0x3e], 2         ; 83 7C 3E 02
        jne     L_0187                          ; 75 32
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [si + 0x56]            ; FF 74 56
        push    word ptr [si + 0x54]            ; FF 74 54
        call    far _SEG1_0E5D                  ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_096D                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_0174                          ; 75 03
        jmp     L_0539                          ; E9 C5 03
L_0174:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    ax                              ; 50
        call    far _SEG1_12B6                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_0187                          ; 75 03
        jmp     L_0531                          ; E9 AA 03
L_0187:
        mov     word ptr [bp - 0x3c], 1         ; C7 46 C4 01 00
        mov     ax, word ptr [si + 0x3e]        ; 8B 44 3E
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_0517                          ; E9 82 03
L_0195:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x5e], ax        ; 89 46 A2
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     word ptr [bp - 0x62], ax        ; 89 46 9E
        mov     word ptr [bp - 0x4a], ax        ; 89 46 B6
        mov     ax, word ptr [si + 0x4c]        ; 8B 44 4C
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
        les     bx, ptr [bp - 0x1a]             ; C4 5E E6
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xb2], al        ; 88 86 4E FF
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        cmp     byte ptr [bp - 0xb2], al        ; 38 86 4E FF
        jb      L_01D7                          ; 72 09
        mov     al, byte ptr [bp - 0x40]        ; 8A 46 C0
        cmp     byte ptr [bp - 0xb2], al        ; 38 86 4E FF
        jbe     L_01DE                          ; 76 07
L_01D7:
        mov     al, byte ptr [bp - 0x2a]        ; 8A 46 D6
        mov     byte ptr [bp - 0xb2], al        ; 88 86 4E FF
L_01DE:
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        sub     byte ptr [bp - 0xb2], al        ; 28 86 4E FF
        cmp     word ptr [bp - 0x20], 0         ; 83 7E E0 00
        je      L_0201                          ; 74 16
        mov     bl, byte ptr [bp - 0xb2]        ; 8A 9E 4E FF
        sub     bh, bh                          ; 2A FF
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp - 0x26]        ; 03 5E DA
        mov     es, word ptr [bp - 0x24]        ; 8E 46 DC
        mov     ax, word ptr es:[bx + 0x35]     ; 26 8B 47 35
        jmp     L_0208                          ; EB 07
L_0201:
        les     bx, ptr [bp - 0x26]             ; C4 5E DA
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
L_0208:
        push    ax                              ; 50
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x60]            ; FF 76 A0
        call    far _SEG1_2D82                  ; 9A AF 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        jmp     L_043F                          ; E9 25 02
L_021A:
        mov     ax, word ptr [si + 0x52]        ; 8B 44 52
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        cmp     word ptr [si + 0x48], 0         ; 83 7C 48 00
        je      L_024B                          ; 74 25
        mov     al, byte ptr [bp - 0xa4]        ; 8A 86 5C FF
        cmp     byte ptr [bp - 0xb2], al        ; 38 86 4E FF
        jne     L_024B                          ; 75 1B
        mov     ax, word ptr [si + 0x4a]        ; 8B 44 4A
        add     word ptr [bp - 0x36], ax        ; 01 46 CA
        mov     ax, word ptr [si + 0x4e]        ; 8B 44 4E
        sub     word ptr [bp - 0x1e], ax        ; 29 46 E2
        cmp     word ptr [bp - 0x1e], 0         ; 83 7E E2 00
        jg      L_024B                          ; 7F 09
        inc     word ptr [bp - 0x36]            ; FF 46 CA
        mov     ax, word ptr [si + 0x50]        ; 8B 44 50
        add     word ptr [bp - 0x1e], ax        ; 01 46 E2
L_024B:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp - 0x36]            ; FF 76 CA
        call    far _entry_376                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        cmp     word ptr [bp - 0x3e], 0         ; 83 7E C2 00
        je      L_02B8                          ; 74 59
        les     bx, ptr [bp - 0x1a]             ; C4 5E E6
        mov     al, byte ptr es:[bx + 1]        ; 26 8A 47 01
        mov     byte ptr [bp - 0x4c], al        ; 88 46 B4
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        cmp     byte ptr [bp - 0x4c], al        ; 38 46 B4
        jb      L_0279                          ; 72 08
        mov     al, byte ptr [bp - 0x40]        ; 8A 46 C0
        cmp     byte ptr [bp - 0x4c], al        ; 38 46 B4
        jbe     L_027F                          ; 76 06
L_0279:
        mov     al, byte ptr [bp - 0x2a]        ; 8A 46 D6
        mov     byte ptr [bp - 0x4c], al        ; 88 46 B4
L_027F:
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        sub     byte ptr [bp - 0x4c], al        ; 28 46 B4
        cmp     word ptr [bp - 0x20], 0         ; 83 7E E0 00
        je      L_02A0                          ; 74 15
        mov     bl, byte ptr [bp - 0x4c]        ; 8A 5E B4
        sub     bh, bh                          ; 2A FF
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp - 0x26]        ; 03 5E DA
        mov     es, word ptr [bp - 0x24]        ; 8E 46 DC
        mov     ax, word ptr es:[bx + 0x35]     ; 26 8B 47 35
        jmp     L_02A7                          ; EB 07
L_02A0:
        les     bx, ptr [bp - 0x26]             ; C4 5E DA
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
L_02A7:
        push    ax                              ; 50
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x60]            ; FF 76 A0
        call    far _SEG1_2D82                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        jmp     L_02BD                          ; EB 05
L_02B8:
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
L_02BD:
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        push    word ptr [bp - 0x4a]            ; FF 76 B6
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        push    word ptr [bp - 0x38]            ; FF 76 C8
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp - 0x36]            ; FF 76 CA
        push    word ptr [bp - 0x30]            ; FF 76 D0
        lea     ax, [bp - 0x5a]                 ; 8D 46 A6
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0xac]                 ; 8D 86 54 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0922                          ; E8 3F 06
        cmp     word ptr [bp - 8], 1            ; 83 7E F8 01
        jne     L_0358                          ; 75 6F
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        add     ax, word ptr [bp - 0x30]        ; 03 46 D0
        add     ax, word ptr [bp - 0x36]        ; 03 46 CA
        jne     L_02F7                          ; 75 03
        jmp     L_03BF                          ; E9 C8 00
L_02F7:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp - 0x24]            ; FF 76 DC
        push    word ptr [bp - 0x26]            ; FF 76 DA
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        add     ax, word ptr [bp - 0x5e]        ; 03 46 A2
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        add     ax, word ptr [bp - 0x62]        ; 03 46 9E
        push    ax                              ; 50
        mov     al, byte ptr [bp - 0xb2]        ; 8A 86 4E FF
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x60]            ; FF 76 A0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp - 0xae]            ; FF B6 52 FF
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        push    word ptr [bp - 0x38]            ; FF 76 C8
        push    word ptr [bp - 0x30]            ; FF 76 D0
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        push    word ptr [bp - 0xde]            ; FF B6 22 FF
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        push    word ptr [bp - 0x36]            ; FF 76 CA
        cmp     word ptr [bp - 0xac], 0         ; 83 BE 54 FF 00
        jl      L_0345                          ; 7C 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0347                          ; EB 02
L_0345:
        sub     ax, ax                          ; 2B C0
L_0347:
        push    ax                              ; 50
        lea     ax, [bp - 0xa2]                 ; 8D 86 5E FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0A18                          ; E8 C2 06
        jmp     L_03BF                          ; EB 67
L_0358:
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cmp     word ptr [bp - 0xac], ax        ; 39 86 54 FF
        jge     L_0368                          ; 7D 07
        mov     ax, word ptr [bp - 0xac]        ; 8B 86 54 FF
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
L_0368:
        mov     ax, word ptr [bp - 0x46]        ; 8B 46 BA
        cmp     word ptr [bp - 0xaa], ax        ; 39 86 56 FF
        jge     L_0378                          ; 7D 07
        mov     ax, word ptr [bp - 0xaa]        ; 8B 86 56 FF
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
L_0378:
        mov     ax, word ptr [bp - 0x44]        ; 8B 46 BC
        cmp     word ptr [bp - 0xa8], ax        ; 39 86 58 FF
        jle     L_0388                          ; 7E 07
        mov     ax, word ptr [bp - 0xa8]        ; 8B 86 58 FF
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
L_0388:
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
        cmp     word ptr [bp - 0xa6], ax        ; 39 86 5A FF
        jle     L_0398                          ; 7E 07
        mov     ax, word ptr [bp - 0xa6]        ; 8B 86 5A FF
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
L_0398:
        cmp     word ptr [bp - 0x32], 0         ; 83 7E CE 00
        jne     L_03BF                          ; 75 21
        mov     ax, word ptr [bp - 0xac]        ; 8B 86 54 FF
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp - 0xaa]        ; 8B 86 56 FF
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp - 0xa8]        ; 8B 86 58 FF
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 0xa6]        ; 8B 86 5A FF
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0x32], 1         ; C7 46 CE 01 00
L_03BF:
        cmp     word ptr [bp - 0x3e], 0         ; 83 7E C2 00
        je      L_043C                          ; 74 77
        mov     ax, word ptr [bp - 0x5a]        ; 8B 46 A6
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     ax, word ptr [bp - 0x58]        ; 8B 46 A8
        mov     word ptr [bp - 0x4a], ax        ; 89 46 B6
        cmp     word ptr [bp - 0xb0], 0         ; 83 BE 50 FF 00
        je      L_03FA                          ; 74 22
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        call    far _entry_177                  ; 9A 1F 04 00 00 [FIXUP]
        push    word ptr [bp - 0x4a]            ; FF 76 B6
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        mov     word ptr [bp - 0xe0], ax        ; 89 86 20 FF
        call    far _entry_178                  ; 9A 0F 04 00 00 [FIXUP]
        add     ax, word ptr [bp - 0xe0]        ; 03 86 20 FF
        jmp     L_03FD                          ; EB 03
L_03FA:
        mov     ax, word ptr [bp - 0x3a]        ; 8B 46 C6
L_03FD:
        mov     word ptr [bp - 0x5e], ax        ; 89 46 A2
        cmp     word ptr [bp - 0xb0], 0         ; 83 BE 50 FF 00
        je      L_0429                          ; 74 22
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        call    far _entry_178                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x4a]            ; FF 76 B6
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        mov     word ptr [bp - 0xe2], ax        ; 89 86 1E FF
        call    far _entry_177                  ; 9A FF FF 00 00 [FIXUP]
        sub     ax, word ptr [bp - 0xe2]        ; 2B 86 1E FF
        jmp     L_042C                          ; EB 03
L_0429:
        mov     ax, word ptr [bp - 0x4a]        ; 8B 46 B6
L_042C:
        mov     word ptr [bp - 0x62], ax        ; 89 46 9E
        mov     al, byte ptr [bp - 0x4c]        ; 8A 46 B4
        mov     byte ptr [bp - 0xb2], al        ; 88 86 4E FF
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
L_043C:
        inc     word ptr [bp - 0x1a]            ; FF 46 E6
L_043F:
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        dec     word ptr [bp - 0x3e]            ; FF 4E C2
        or      ax, ax                          ; 0B C0
        je      L_044C                          ; 74 03
        jmp     L_021A                          ; E9 CE FD
L_044C:
        cmp     word ptr [bp - 8], 2            ; 83 7E F8 02
        je      L_0455                          ; 74 03
        jmp     L_04E7                          ; E9 92 00
L_0455:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        add     ax, word ptr [bp - 0x3a]        ; 03 46 C6
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        add     ax, word ptr [bp - 0x4a]        ; 03 46 B6
        push    ax                              ; 50
        lea     ax, [bp - 0xac]                 ; 8D 86 54 FF
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x22]            ; FF 76 DE
        lea     ax, [bp - 0x48]                 ; 8D 46 B8
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x36]            ; FF 76 CA
        push    word ptr [bp - 0x30]            ; FF 76 D0
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        push    word ptr [bp - 0x56]            ; FF 76 AA
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        lea     ax, [bp - 0xdc]                 ; 8D 86 24 FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x50]                 ; 8D 46 B0
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0xbc]                 ; 8D 86 44 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0FC0                          ; E8 1D 0B
        mov     ax, word ptr [bp - 0xb8]        ; 8B 86 48 FF
        cmp     word ptr [bp - 0xbc], ax        ; 39 86 44 FF
        je      L_0514                          ; 74 67
        mov     ax, word ptr [bp - 0xb6]        ; 8B 86 4A FF
        cmp     word ptr [bp - 0xba], ax        ; 39 86 46 FF
        je      L_0514                          ; 74 5D
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far _SEG1_2F51                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _SEG1_12B6                  ; 9A E1 04 00 00 [FIXUP]
        push    word ptr [bp + 0x10]            ; FF 76 10
        lea     ax, [bp - 0xdc]                 ; 8D 86 24 FF
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x50]            ; FF 76 B0
        call    far _entry_36                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp - 0x54]            ; FF 76 AC
        call    far _SEG1_12B6                  ; 9A 2D 05 00 00 [FIXUP]
        jmp     L_0514                          ; EB 2D
L_04E7:
        cmp     word ptr [bp - 0x28], 2         ; 83 7E D8 02
        jl      L_050F                          ; 7C 22
        push    word ptr [bp + 0x10]            ; FF 76 10
        lea     ax, [bp - 0xa2]                 ; 8D 86 5E FF
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x28]            ; FF 76 D8
        call    far _SEG1_3308                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0x10]            ; FF 76 10
        lea     ax, [bp - 0xa2]                 ; 8D 86 5E FF
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x28]            ; FF 76 D8
        call    far _entry_390                  ; 9A FF FF 00 00 [FIXUP]
L_050F:
        mov     word ptr [bp - 0x28], 0         ; C7 46 D8 00 00
L_0514:
        dec     word ptr [bp - 8]               ; FF 4E F8
L_0517:
        cmp     word ptr [bp - 8], 1            ; 83 7E F8 01
        jl      L_0520                          ; 7C 03
        jmp     L_0195                          ; E9 75 FC
L_0520:
        cmp     word ptr [si + 0x3e], 2         ; 83 7C 3E 02
        jne     L_0539                          ; 75 13
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _SEG1_12B6                  ; 9A 4B 05 00 00 [FIXUP]
L_0531:
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _SEG1_1212                  ; 9A 53 05 00 00 [FIXUP]
L_0539:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp - 0x34]            ; FF 76 CC
        call    far _SEG1_3115                  ; 9A 48 01 00 00 [FIXUP]
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp - 0x52]            ; FF 76 AE
        call    far _SEG1_12B6                  ; 9A 32 01 00 00 [FIXUP]
L_054F:
        push    word ptr [bp - 0x54]            ; FF 76 AC
        call    far _SEG1_1212                  ; 9A FF FF 00 00 [FIXUP]
L_0557:
        mov     ax, word ptr [bp - 0x3c]        ; 8B 46 C4
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x8a                        ; 81 EC 8A 00
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [si + 0x34]        ; 8B 44 34
        mov     dx, word ptr [si + 0x36]        ; 8B 54 36
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        mov     ax, word ptr [si + 0x32]        ; 8B 44 32
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        les     bx, ptr [bp - 0x22]             ; C4 5E DE
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
        mov     word ptr [bp - 0x50], ax        ; 89 46 B0
        mov     bx, word ptr [bp - 0x32]        ; 8B 5E CE
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     bx, word ptr [bp - 0x22]        ; 8B 5E DE
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        mov     word ptr [bp - 0x5e], ax        ; 89 46 A2
        mov     bx, word ptr [bp - 0x32]        ; 8B 5E CE
        mov     ax, word ptr [bx + 0xf]         ; 8B 47 0F
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        test    word ptr [bp - 0x18], 0x200     ; F7 46 E8 00 02
        je      L_05E0                          ; 74 1E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x50]            ; FF 76 B0
        call    far _SEG1_2D82                  ; 9A 08 07 00 00 [FIXUP]
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        cmp     ax, 1                           ; 3D 01 00
        jge     L_05E5                          ; 7D 0C
        mov     word ptr [bp - 0x28], 1         ; C7 46 D8 01 00
        jmp     L_05E5                          ; EB 05
L_05E0:
        mov     word ptr [bp - 0x28], 0         ; C7 46 D8 00 00
L_05E5:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        and     ax, 0x400                       ; 25 00 04
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        mov     bx, word ptr [bp - 0x32]        ; 8B 5E CE
        push    word ptr [bx + 4]               ; FF 77 04
        call    L_0F99                          ; E8 A2 09
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
        mov     bx, word ptr [bp - 0x32]        ; 8B 5E CE
        push    word ptr [bx + 6]               ; FF 77 06
        call    L_0F99                          ; E8 96 09
        mov     word ptr [bp - 0x60], ax        ; 89 46 A0
        mov     ax, word ptr [bp - 0x46]        ; 8B 46 BA
        sub     ax, word ptr [bp - 0x60]        ; 2B 46 A0
        push    ax                              ; 50
        call    L_0F99                          ; E8 89 09
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        push    word ptr [bp - 0x60]            ; FF 76 A0
        push    ax                              ; 50
        call    L_12FC                          ; E8 E2 0C
        mov     word ptr [bp - 0x60], ax        ; 89 46 A0
        mov     ax, word ptr [bp - 0x46]        ; 8B 46 BA
        sub     ax, word ptr [bp - 0x60]        ; 2B 46 A0
        push    ax                              ; 50
        call    L_0F99                          ; E8 72 09
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_0653                          ; 75 23
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x6a], ax        ; 89 46 96
        mov     word ptr [bp - 0x66], ax        ; 89 46 9A
        mov     word ptr [bp - 0x68], ax        ; 89 46 98
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        mov     word ptr [bp - 0x64], ax        ; 89 46 9C
        lea     ax, [bp - 0x6a]                 ; 8D 46 96
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x60]            ; FF 76 A0
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_120D                          ; E8 BD 0B
        jmp     L_0903                          ; E9 B0 02
L_0653:
        mov     word ptr [bp - 0x2a], 0         ; C7 46 D6 00 00
        mov     word ptr [bp - 0x3c], 0         ; C7 46 C4 00 00
        mov     word ptr [bp - 0x3a], 0         ; C7 46 C6 00 00
        mov     word ptr [bp - 0x38], 0         ; C7 46 C8 00 00
        mov     word ptr [bp - 0x36], 0         ; C7 46 CA 00 00
        les     bx, ptr [bp - 0x22]             ; C4 5E DE
        mov     al, byte ptr es:[bx + 0x1d]     ; 26 8A 47 1D
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        mov     al, byte ptr es:[bx + 0x1e]     ; 26 8A 47 1E
        mov     byte ptr [bp - 0x34], al        ; 88 46 CC
        mov     al, byte ptr es:[bx + 0x1f]     ; 26 8A 47 1F
        add     al, byte ptr [bp - 6]           ; 02 46 FA
        mov     byte ptr [bp - 0x24], al        ; 88 46 DC
        mov     al, byte ptr es:[bx + 0x20]     ; 26 8A 47 20
        mov     byte ptr [bp - 0x54], al        ; 88 46 AC
        mov     al, byte ptr es:[bx + 0x18]     ; 26 8A 47 18
        sub     ah, ah                          ; 2A E4
        and     ax, 1                           ; 25 01 00
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        mov     word ptr [bp - 0x52], ax        ; 89 46 AE
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     ax, word ptr [si + 0x4c]        ; 8B 44 4C
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        les     bx, ptr [bp - 0x16]             ; C4 5E EA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x62], al        ; 88 46 9E
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        cmp     byte ptr [bp - 0x62], al        ; 38 46 9E
        jb      L_06D3                          ; 72 08
        mov     al, byte ptr [bp - 0x34]        ; 8A 46 CC
        cmp     byte ptr [bp - 0x62], al        ; 38 46 9E
        jbe     L_06D9                          ; 76 06
L_06D3:
        mov     al, byte ptr [bp - 0x24]        ; 8A 46 DC
        mov     byte ptr [bp - 0x62], al        ; 88 46 9E
L_06D9:
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        sub     byte ptr [bp - 0x62], al        ; 28 46 9E
        cmp     word ptr [bp - 0x1c], 0         ; 83 7E E4 00
        je      L_06F9                          ; 74 14
        mov     di, word ptr [bp - 0x62]        ; 8B 7E 9E
        and     di, 0xff                        ; 81 E7 FF 00
        shl     di, 1                           ; D1 E7
        shl     di, 1                           ; D1 E7
        les     bx, ptr [bp - 0x22]             ; C4 5E DE
        mov     ax, word ptr es:[bx + di + 0x35] ; 26 8B 41 35
        jmp     L_0700                          ; EB 07
L_06F9:
        les     bx, ptr [bp - 0x22]             ; C4 5E DE
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
L_0700:
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x50]            ; FF 76 B0
        call    far _SEG1_2D82                  ; 9A A4 07 00 00 [FIXUP]
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        jmp     L_08A3                          ; E9 91 01
L_0712:
        mov     ax, word ptr [si + 0x52]        ; 8B 44 52
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        cmp     word ptr [si + 0x48], 0         ; 83 7C 48 00
        je      L_0741                          ; 74 23
        mov     al, byte ptr [bp - 0x54]        ; 8A 46 AC
        cmp     byte ptr [bp - 0x62], al        ; 38 46 9E
        jne     L_0741                          ; 75 1B
        mov     ax, word ptr [si + 0x4a]        ; 8B 44 4A
        add     word ptr [bp - 0x2c], ax        ; 01 46 D4
        mov     ax, word ptr [si + 0x4e]        ; 8B 44 4E
        sub     word ptr [bp - 0x1a], ax        ; 29 46 E6
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        jg      L_0741                          ; 7F 09
        inc     word ptr [bp - 0x2c]            ; FF 46 D4
        mov     ax, word ptr [si + 0x50]        ; 8B 44 50
        add     word ptr [bp - 0x1a], ax        ; 01 46 E6
L_0741:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        call    far _entry_376                  ; 9A 52 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_07AD                          ; 74 58
        les     bx, ptr [bp - 0x16]             ; C4 5E EA
        mov     al, byte ptr es:[bx + 1]        ; 26 8A 47 01
        mov     byte ptr [bp - 0x40], al        ; 88 46 C0
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        cmp     byte ptr [bp - 0x40], al        ; 38 46 C0
        jb      L_076F                          ; 72 08
        mov     al, byte ptr [bp - 0x34]        ; 8A 46 CC
        cmp     byte ptr [bp - 0x40], al        ; 38 46 C0
        jbe     L_0775                          ; 76 06
L_076F:
        mov     al, byte ptr [bp - 0x24]        ; 8A 46 DC
        mov     byte ptr [bp - 0x40], al        ; 88 46 C0
L_0775:
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        sub     byte ptr [bp - 0x40], al        ; 28 46 C0
        cmp     word ptr [bp - 0x1c], 0         ; 83 7E E4 00
        je      L_0795                          ; 74 14
        mov     di, word ptr [bp - 0x40]        ; 8B 7E C0
        and     di, 0xff                        ; 81 E7 FF 00
        shl     di, 1                           ; D1 E7
        shl     di, 1                           ; D1 E7
        les     bx, ptr [bp - 0x22]             ; C4 5E DE
        mov     ax, word ptr es:[bx + di + 0x35] ; 26 8B 41 35
        jmp     L_079C                          ; EB 07
L_0795:
        les     bx, ptr [bp - 0x22]             ; C4 5E DE
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
L_079C:
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x50]            ; FF 76 B0
        call    far _SEG1_2D82                  ; 9A 5E 00 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        jmp     L_07B2                          ; EB 05
L_07AD:
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
L_07B2:
        push    word ptr [bp - 0x30]            ; FF 76 D0
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        push    word ptr [bp - 0x26]            ; FF 76 DA
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        push    word ptr [bp - 0x28]            ; FF 76 D8
        lea     ax, [bp - 0x4a]                 ; 8D 46 B6
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x5c]                 ; 8D 46 A4
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0922                          ; E8 4B 01
        mov     ax, word ptr [bp - 0x3c]        ; 8B 46 C4
        cmp     word ptr [bp - 0x5c], ax        ; 39 46 A4
        jge     L_07E5                          ; 7D 06
        mov     ax, word ptr [bp - 0x5c]        ; 8B 46 A4
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
L_07E5:
        mov     ax, word ptr [bp - 0x3a]        ; 8B 46 C6
        cmp     word ptr [bp - 0x5a], ax        ; 39 46 A6
        jge     L_07F3                          ; 7D 06
        mov     ax, word ptr [bp - 0x5a]        ; 8B 46 A6
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
L_07F3:
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        cmp     word ptr [bp - 0x58], ax        ; 39 46 A8
        jle     L_0801                          ; 7E 06
        mov     ax, word ptr [bp - 0x58]        ; 8B 46 A8
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
L_0801:
        mov     ax, word ptr [bp - 0x36]        ; 8B 46 CA
        cmp     word ptr [bp - 0x56], ax        ; 39 46 AA
        jle     L_080F                          ; 7E 06
        mov     ax, word ptr [bp - 0x56]        ; 8B 46 AA
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
L_080F:
        cmp     word ptr [bp - 0x2a], 0         ; 83 7E D6 00
        jne     L_0832                          ; 75 1D
        mov     ax, word ptr [bp - 0x5c]        ; 8B 46 A4
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 0x5a]        ; 8B 46 A6
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 0x58]        ; 8B 46 A8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 0x56]        ; 8B 46 AA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0x2a], 1         ; C7 46 D6 01 00
L_0832:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_08A0                          ; 74 68
        mov     ax, word ptr [bp - 0x4a]        ; 8B 46 B6
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        cmp     word ptr [bp - 0x60], 0         ; 83 7E A0 00
        je      L_0866                          ; 74 1C
        push    word ptr [bp - 0x30]            ; FF 76 D0
        push    word ptr [bp - 0x60]            ; FF 76 A0
        call    far _entry_177                  ; 9A 86 08 00 00 [FIXUP]
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        push    word ptr [bp - 0x60]            ; FF 76 A0
        mov     di, ax                          ; 8B F8
        call    far _entry_178                  ; 9A 79 08 00 00 [FIXUP]
        add     ax, di                          ; 03 C7
        jmp     L_0869                          ; EB 03
L_0866:
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
L_0869:
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
        cmp     word ptr [bp - 0x60], 0         ; 83 7E A0 00
        je      L_088E                          ; 74 1C
        push    word ptr [bp - 0x30]            ; FF 76 D0
        push    word ptr [bp - 0x60]            ; FF 76 A0
        call    far _entry_178                  ; 9A F0 03 00 00 [FIXUP]
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        push    word ptr [bp - 0x60]            ; FF 76 A0
        mov     di, ax                          ; 8B F8
        call    far _entry_177                  ; 9A E0 03 00 00 [FIXUP]
        sub     ax, di                          ; 2B C7
        jmp     L_0891                          ; EB 03
L_088E:
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
L_0891:
        mov     word ptr [bp - 0x52], ax        ; 89 46 AE
        mov     al, byte ptr [bp - 0x40]        ; 8A 46 C0
        mov     byte ptr [bp - 0x62], al        ; 88 46 9E
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
L_08A0:
        inc     word ptr [bp - 0x16]            ; FF 46 EA
L_08A3:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        dec     word ptr [bp + 8]               ; FF 4E 08
        or      ax, ax                          ; 0B C0
        je      L_08B0                          ; 74 03
        jmp     L_0712                          ; E9 62 FE
L_08B0:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x30]            ; FF 76 D0
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        lea     ax, [bp - 0x5c]                 ; 8D 46 A4
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        lea     ax, [bp - 0x3c]                 ; 8D 46 C4
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        push    word ptr [bp - 0x28]            ; FF 76 D8
        push    word ptr [bp - 0x4c]            ; FF 76 B4
        push    word ptr [bp - 0x46]            ; FF 76 BA
        push    word ptr [bp - 0x60]            ; FF 76 A0
        push    word ptr [bp - 0x26]            ; FF 76 DA
        lea     ax, [bp - 0x8a]                 ; 8D 86 76 FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x44]                 ; 8D 46 BC
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x6a]                 ; 8D 46 96
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0FC0                          ; E8 CF 06
        cmp     word ptr [si + 0x48], 0         ; 83 7C 48 00
        je      L_0903                          ; 74 0C
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0903                          ; 74 06
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     word ptr [si + 0x4c], ax        ; 89 44 4C
L_0903:
        mov     ax, word ptr [bp - 0x64]        ; 8B 46 9C
        sub     ax, word ptr [bp - 0x68]        ; 2B 46 98
        mov     dx, ax                          ; 8B D0
        sub     ax, ax                          ; 2B C0
        mov     cx, word ptr [bp - 0x66]        ; 8B 4E 9A
        sub     cx, word ptr [bp - 0x6a]        ; 2B 4E 96
        mov     ax, cx                          ; 8B C1
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0922 -- offset 0x0922 -- 81 instr
; Funcion compleja: 81 instrucciones, 0 llamadas, 4 branches.
; tags: complex
; callers: sub_0140
;----------------------------------------------------------------------
L_0922:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        or      ax, ax                          ; 0B C0
        je      L_0941                          ; 74 15
        cmp     ax, 0x384                       ; 3D 84 03
        je      L_09AE                          ; 74 7D
        cmp     ax, 0x708                       ; 3D 08 07
        je      L_0982                          ; 74 4C
        cmp     ax, 0xa8c                       ; 3D 8C 0A
        jne     L_093E                          ; 75 03
        jmp     L_09EB                          ; E9 AD 00
L_093E:
        jmp     L_0A12                          ; E9 D1 00
L_0941:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        add     ax, word ptr [bp + 0x14]        ; 03 46 14
        add     ax, word ptr [bp + 0xc]         ; 03 46 0C
        add     ax, word ptr [bp + 0xe]         ; 03 46 0E
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        add     ax, word ptr [bp + 0xc]         ; 03 46 0C
        add     ax, word ptr [bp + 0xe]         ; 03 46 0E
L_096B:
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 2], 0         ; 26 C7 47 02 00 00
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        jmp     L_0A12                          ; E9 90 00
L_0982:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        sub     ax, word ptr [bp + 0x12]        ; 2B 46 12
        sub     ax, word ptr [bp + 0xc]         ; 2B 46 0C
        sub     ax, word ptr [bp + 0xe]         ; 2B 46 0E
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        neg     ax                              ; F7 D8
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        add     ax, word ptr [bp + 0xc]         ; 03 46 0C
        jmp     L_096B                          ; EB BD
L_09AE:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        sub     ax, word ptr [bp + 0x10]        ; 2B 46 10
        sub     ax, word ptr [bp + 0xe]         ; 2B 46 0E
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        neg     ax                              ; F7 D8
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
L_09D3:
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        add     ax, word ptr [bp + 0xc]         ; 03 46 0C
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        jmp     L_0A12                          ; EB 27
L_09EB:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        add     ax, word ptr [bp + 0x10]        ; 03 46 10
        add     ax, word ptr [bp + 0xe]         ; 03 46 0E
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 2], 0         ; 26 C7 47 02 00 00
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        add     ax, word ptr [bp + 0xe]         ; 03 46 0E
        jmp     L_09D3                          ; EB C1
L_0A12:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0x18                            ; C2 18 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0A18 -- offset 0x0A18 -- 499 instr
; Dispatcher: tabla de decisiones cmp+jcc (499 instr).
; tags: dispatcher
; callers: sub_0140
; calls (intra): sub_1329, sub_138A
;----------------------------------------------------------------------
L_0A18:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x38                        ; 83 EC 38
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 0x2a]             ; C4 5E 2A
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        je      L_0A4F                          ; 74 25
        mov     al, byte ptr [bp + 0x24]        ; 8A 46 24
        sub     ah, ah                          ; 2A E4
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x33                        ; 05 33 00
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     word ptr [bp - 0x2a], dx        ; 89 56 D6
        les     bx, ptr [bp - 0x2c]             ; C4 5E D4
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        jmp     L_0A72                          ; EB 23
L_0A4F:
        mov     al, byte ptr [bp + 0x24]        ; 8A 46 24
        sub     ah, ah                          ; 2A E4
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp + 0x2a]        ; 03 46 2A
        mov     dx, word ptr [bp + 0x2c]        ; 8B 56 2C
        add     ax, 0x33                        ; 05 33 00
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        mov     word ptr [bp - 0x2e], dx        ; 89 56 D2
        les     bx, ptr [bp - 0x30]             ; C4 5E D0
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
L_0A72:
        sub     ax, word ptr [bp - 0x28]        ; 2B 46 D8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        les     bx, ptr [bp + 0x2a]             ; C4 5E 2A
        mov     ax, word ptr es:[bx + 0x2b]     ; 26 8B 47 2B
        mov     dx, word ptr es:[bx + 0x2d]     ; 26 8B 57 2D
        add     ax, word ptr [bp - 0x28]        ; 03 46 D8
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
        cmp     word ptr es:[bx + 0x16], 0x80   ; 26 81 7F 16 80 00
        jg      L_0A9C                          ; 7F 08
        cmp     word ptr es:[bx + 0x1b], 0x80   ; 26 81 7F 1B 80 00
        jle     L_0AA1                          ; 7E 05
L_0A9C:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0AA3                          ; EB 02
L_0AA1:
        sub     ax, ax                          ; 2B C0
L_0AA3:
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
L_0AAC:
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jge     L_0AB5                          ; 7D 03
        jmp     L_0D06                          ; E9 51 02
L_0AB5:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     dx, word ptr [bp - 0x18]        ; 8B 56 E8
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
L_0ACF:
        cmp     word ptr [bp - 0x26], 0         ; 83 7E DA 00
        jne     L_0AD8                          ; 75 03
        jmp     L_0CF7                          ; E9 1F 02
L_0AD8:
        cmp     word ptr [bp - 0x22], 0         ; 83 7E DE 00
        je      L_0AEB                          ; 74 0D
        mov     ax, 0x8000                      ; B8 00 80
        jmp     L_0AEE                          ; EB 0B
L_0AE3:
        mov     ax, 1                           ; B8 01 00
L_0AE6:
        sub     word ptr [bp - 0x12], ax        ; 29 46 EE
        jmp     L_0AAC                          ; EB C1
L_0AEB:
        mov     ax, 0xff80                      ; B8 80 FF
L_0AEE:
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        cmp     word ptr [bp - 0x22], 0         ; 83 7E DE 00
        je      L_0B03                          ; 74 0C
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        add     word ptr [bp - 0xe], 2          ; 83 46 F2 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        jmp     L_0B0D                          ; EB 0A
L_0B03:
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
L_0B0D:
        mov     si, ax                          ; 8B F0
        cmp     ax, word ptr [bp - 0x36]        ; 3B 46 CA
        je      L_0B17                          ; 74 03
        jmp     L_0C16                          ; E9 FF 00
L_0B17:
        cmp     word ptr [bp - 0x22], 0         ; 83 7E DE 00
        je      L_0B29                          ; 74 0C
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        add     word ptr [bp - 0xe], 2          ; 83 46 F2 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        jmp     L_0B33                          ; EB 0A
L_0B29:
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
L_0B33:
        add     word ptr [bp - 0x16], ax        ; 01 46 EA
        cmp     word ptr [bp - 0x22], 0         ; 83 7E DE 00
        je      L_0B48                          ; 74 0C
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        add     word ptr [bp - 0xe], 2          ; 83 46 F2 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        jmp     L_0B52                          ; EB 0A
L_0B48:
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
L_0B52:
        add     word ptr [bp - 0x20], ax        ; 01 46 E0
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        call    far _SEG1_2D82                  ; 9A 70 0B 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        call    far _SEG1_2D82                  ; 9A 42 0C 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jne     L_0B82                          ; 75 03
        dec     word ptr [bp - 8]               ; FF 4E F8
L_0B82:
        cmp     word ptr [bp + 0x14], 0         ; 83 7E 14 00
        je      L_0B95                          ; 74 0D
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        jmp     L_0B97                          ; EB 02
L_0B95:
        sub     ax, ax                          ; 2B C0
L_0B97:
        mov     di, ax                          ; 8B F8
        add     di, word ptr [bp - 2]           ; 03 7E FE
        add     di, word ptr [bp - 0x12]        ; 03 7E EE
        push    word ptr [bp + 0x2e]            ; FF 76 2E
        cmp     word ptr [bp + 0x1a], 0         ; 83 7E 1A 00
        je      L_0BC4                          ; 74 1C
        push    di                              ; 57
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        call    far _entry_177                  ; 9A E3 0B 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        call    far _entry_178                  ; 9A D5 0B 00 00 [FIXUP]
        add     ax, word ptr [bp - 0x36]        ; 03 46 CA
        jmp     L_0BC6                          ; EB 02
L_0BC4:
        mov     ax, di                          ; 8B C7
L_0BC6:
        add     ax, word ptr [bp + 0x28]        ; 03 46 28
        push    ax                              ; 50
        cmp     word ptr [bp + 0x1a], 0         ; 83 7E 1A 00
        je      L_0BEC                          ; 74 1C
        push    di                              ; 57
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        call    far _entry_178                  ; 9A 9E 0C 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        call    far _entry_177                  ; 9A 90 0C 00 00 [FIXUP]
        sub     ax, word ptr [bp - 0x38]        ; 2B 46 C8
        jmp     L_0BEF                          ; EB 03
L_0BEC:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
L_0BEF:
        add     ax, word ptr [bp + 0x26]        ; 03 46 26
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1329                          ; E8 27 07
        cmp     word ptr [bp - 0x22], 0         ; 83 7E DE 00
        je      L_0C0D                          ; 74 05
        mov     ax, 6                           ; B8 06 00
        jmp     L_0C10                          ; EB 03
L_0C0D:
        mov     ax, 3                           ; B8 03 00
L_0C10:
        sub     word ptr [bp - 0x26], ax        ; 29 46 DA
        jmp     L_0ACF                          ; E9 B9 FE
L_0C16:
        add     word ptr [bp - 0x16], si        ; 01 76 EA
        cmp     word ptr [bp - 0x22], 0         ; 83 7E DE 00
        je      L_0C2B                          ; 74 0C
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        add     word ptr [bp - 0xe], 2          ; 83 46 F2 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        jmp     L_0C35                          ; EB 0A
L_0C2B:
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
L_0C35:
        add     word ptr [bp - 0x20], ax        ; 01 46 E0
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        call    far _SEG1_2D82                  ; 9A 53 0C 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        call    far _SEG1_2D82                  ; 9A CD 05 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jne     L_0C65                          ; 75 03
        dec     word ptr [bp - 8]               ; FF 4E F8
L_0C65:
        cmp     word ptr [bp + 0x14], 0         ; 83 7E 14 00
        je      L_0C78                          ; 74 0D
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        jmp     L_0C7A                          ; EB 02
L_0C78:
        sub     ax, ax                          ; 2B C0
L_0C7A:
        mov     di, ax                          ; 8B F8
        add     di, word ptr [bp - 2]           ; 03 7E FE
        add     di, word ptr [bp - 0x12]        ; 03 7E EE
        push    word ptr [bp + 0x2e]            ; FF 76 2E
        cmp     word ptr [bp + 0x1a], 0         ; 83 7E 1A 00
        je      L_0CA7                          ; 74 1C
        push    di                              ; 57
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        call    far _entry_177                  ; 9A C6 0C 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        call    far _entry_178                  ; 9A B8 0C 00 00 [FIXUP]
        add     ax, word ptr [bp - 0x36]        ; 03 46 CA
        jmp     L_0CA9                          ; EB 02
L_0CA7:
        mov     ax, di                          ; 8B C7
L_0CA9:
        add     ax, word ptr [bp + 0x28]        ; 03 46 28
        push    ax                              ; 50
        cmp     word ptr [bp + 0x1a], 0         ; 83 7E 1A 00
        je      L_0CCF                          ; 74 1C
        push    di                              ; 57
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        call    far _entry_178                  ; 9A 5E 08 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        call    far _entry_177                  ; 9A 51 08 00 00 [FIXUP]
        sub     ax, word ptr [bp - 0x38]        ; 2B 46 C8
        jmp     L_0CD2                          ; EB 03
L_0CCF:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
L_0CD2:
        add     ax, word ptr [bp + 0x26]        ; 03 46 26
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_138A                          ; E8 A5 06
        cmp     word ptr [bp - 0x22], 0         ; 83 7E DE 00
        je      L_0CF1                          ; 74 06
        mov     ax, 4                           ; B8 04 00
        jmp     L_0C10                          ; E9 1F FF
L_0CF1:
        mov     ax, 2                           ; B8 02 00
        jmp     L_0C10                          ; E9 19 FF
L_0CF7:
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jne     L_0D00                          ; 75 03
        jmp     L_0AE3                          ; E9 E3 FD
L_0D00:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        jmp     L_0AE6                          ; E9 E0 FD
L_0D06:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jne     L_0D15                          ; 75 09
        cmp     word ptr [bp + 0x10], 0         ; 83 7E 10 00
        jne     L_0D15                          ; 75 03
        jmp     L_0F91                          ; E9 7C 02
L_0D15:
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        je      L_0D2B                          ; 74 10
        mov     word ptr [bp - 0x24], 0         ; C7 46 DC 00 00
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        add     ax, word ptr [bp + 0x16]        ; 03 46 16
        add     ax, word ptr [bp + 0xe]         ; 03 46 0E
        jmp     L_0D39                          ; EB 0E
L_0D2B:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        add     ax, word ptr [bp + 0x16]        ; 03 46 16
L_0D39:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        les     bx, ptr [bp + 0x2a]             ; C4 5E 2A
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        call    far _SEG1_2D82                  ; 9A 65 0D 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jne     L_0D5A                          ; 75 03
        jmp     L_0E77                          ; E9 1D 01
L_0D5A:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        call    far _SEG1_2D82                  ; 9A 8E 0E 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        cmp     ax, 2                           ; 3D 02 00
        jge     L_0D76                          ; 7D 05
        mov     word ptr [bp - 0x1c], 2         ; C7 46 E4 02 00
L_0D76:
        mov     si, word ptr [bp - 6]           ; 8B 76 FA
        add     si, word ptr [bp - 0x1c]        ; 03 76 E4
        cmp     word ptr [bp + 0x1e], si        ; 39 76 1E
        jl      L_0D85                          ; 7C 04
        mov     ax, si                          ; 8B C6
        jmp     L_0D88                          ; EB 03
L_0D85:
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
L_0D88:
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        cmp     word ptr [bp + 0x14], 0         ; 83 7E 14 00
        je      L_0D9E                          ; 74 0D
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        sub     ax, word ptr [bp - 0x14]        ; 2B 46 EC
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        jmp     L_0DA0                          ; EB 02
L_0D9E:
        sub     ax, ax                          ; 2B C0
L_0DA0:
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        push    word ptr [bp + 0x2e]            ; FF 76 2E
        cmp     word ptr [bp + 0x1a], 0         ; 83 7E 1A 00
        je      L_0DCC                          ; 74 20
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        add     ax, word ptr [bp - 0x1e]        ; 03 46 E2
        push    ax                              ; 50
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        call    far _entry_177                  ; 9A F4 0D 00 00 [FIXUP]
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        mov     di, ax                          ; 8B F8
        call    far _entry_178                  ; 9A E7 0D 00 00 [FIXUP]
        add     ax, di                          ; 03 C7
        jmp     L_0DD2                          ; EB 06
L_0DCC:
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        add     ax, word ptr [bp - 0x1e]        ; 03 46 E2
L_0DD2:
        add     ax, word ptr [bp + 0x28]        ; 03 46 28
        push    ax                              ; 50
        cmp     word ptr [bp + 0x1a], 0         ; 83 7E 1A 00
        je      L_0DFC                          ; 74 20
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        add     ax, word ptr [bp - 0x1e]        ; 03 46 E2
        push    ax                              ; 50
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        call    far _entry_178                  ; 9A 33 0E 00 00 [FIXUP]
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        mov     di, ax                          ; 8B F8
        call    far _entry_177                  ; 9A 26 0E 00 00 [FIXUP]
        sub     ax, di                          ; 2B C7
        jmp     L_0DFF                          ; EB 03
L_0DFC:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
L_0DFF:
        add     ax, word ptr [bp + 0x26]        ; 03 46 26
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1329                          ; E8 17 05
        mov     si, word ptr [bp - 0x10]        ; 8B 76 F0
        add     si, word ptr [bp - 0x1e]        ; 03 76 E2
        push    word ptr [bp + 0x2e]            ; FF 76 2E
        cmp     word ptr [bp + 0x1a], 0         ; 83 7E 1A 00
        je      L_0E3B                          ; 74 1A
        push    si                              ; 56
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        call    far _entry_177                  ; 9A 59 0E 00 00 [FIXUP]
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        mov     di, ax                          ; 8B F8
        call    far _entry_178                  ; 9A 4C 0E 00 00 [FIXUP]
        add     ax, di                          ; 03 C7
        jmp     L_0E3D                          ; EB 02
L_0E3B:
        mov     ax, si                          ; 8B C6
L_0E3D:
        add     ax, word ptr [bp + 0x28]        ; 03 46 28
        push    ax                              ; 50
        cmp     word ptr [bp + 0x1a], 0         ; 83 7E 1A 00
        je      L_0E61                          ; 74 1A
        push    si                              ; 56
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        call    far _entry_178                  ; 9A E1 0E 00 00 [FIXUP]
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        mov     di, ax                          ; 8B F8
        call    far _entry_177                  ; 9A D6 0E 00 00 [FIXUP]
        sub     ax, di                          ; 2B C7
        jmp     L_0E64                          ; EB 03
L_0E61:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
L_0E64:
        add     ax, word ptr [bp + 0x26]        ; 03 46 26
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_138A                          ; E8 13 05
L_0E77:
        cmp     word ptr [bp + 0x10], 0         ; 83 7E 10 00
        jne     L_0E80                          ; 75 03
        jmp     L_0F91                          ; E9 11 01
L_0E80:
        les     bx, ptr [bp + 0x2a]             ; C4 5E 2A
        push    word ptr es:[bx + 0xa]          ; 26 FF 77 0A
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        call    far _SEG1_2D82                  ; 9A 5F 0B 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        shl     ax, 1                           ; D1 E0
        cdq                                     ; 99
        mov     cx, 3                           ; B9 03 00
        idiv    cx                              ; F7 F9
        mov     si, ax                          ; 8B F0
        add     si, word ptr [bp - 4]           ; 03 76 FC
        mov     word ptr [bp - 0x14], si        ; 89 76 EC
        cmp     word ptr [bp + 0x14], 0         ; 83 7E 14 00
        je      L_0EBD                          ; 74 0C
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        sub     ax, si                          ; 2B C6
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        jmp     L_0EBF                          ; EB 02
L_0EBD:
        sub     ax, ax                          ; 2B C0
L_0EBF:
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        push    word ptr [bp + 0x2e]            ; FF 76 2E
        cmp     word ptr [bp + 0x1a], 0         ; 83 7E 1A 00
        je      L_0EE9                          ; 74 1E
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        add     ax, word ptr [bp - 0x1e]        ; 03 46 E2
        push    ax                              ; 50
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        call    far _entry_177                  ; 9A 0F 0F 00 00 [FIXUP]
        push    si                              ; 56
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        mov     di, ax                          ; 8B F8
        call    far _entry_178                  ; 9A 04 0F 00 00 [FIXUP]
        add     ax, di                          ; 03 C7
        jmp     L_0EEF                          ; EB 06
L_0EE9:
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        add     ax, word ptr [bp - 0x1e]        ; 03 46 E2
L_0EEF:
        add     ax, word ptr [bp + 0x28]        ; 03 46 28
        push    ax                              ; 50
        cmp     word ptr [bp + 0x1a], 0         ; 83 7E 1A 00
        je      L_0F17                          ; 74 1E
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        add     ax, word ptr [bp - 0x1e]        ; 03 46 E2
        push    ax                              ; 50
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        call    far _entry_178                  ; 9A 4D 0F 00 00 [FIXUP]
        push    si                              ; 56
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        mov     di, ax                          ; 8B F8
        call    far _entry_177                  ; 9A 40 0F 00 00 [FIXUP]
        sub     ax, di                          ; 2B C7
        jmp     L_0F19                          ; EB 02
L_0F17:
        mov     ax, si                          ; 8B C6
L_0F19:
        add     ax, word ptr [bp + 0x26]        ; 03 46 26
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1329                          ; E8 FD 03
        mov     si, word ptr [bp - 0x10]        ; 8B 76 F0
        add     si, word ptr [bp - 0x1e]        ; 03 76 E2
        push    word ptr [bp + 0x2e]            ; FF 76 2E
        cmp     word ptr [bp + 0x1a], 0         ; 83 7E 1A 00
        je      L_0F55                          ; 74 1A
        push    si                              ; 56
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        call    far _entry_177                  ; 9A 73 0F 00 00 [FIXUP]
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        mov     di, ax                          ; 8B F8
        call    far _entry_178                  ; 9A 66 0F 00 00 [FIXUP]
        add     ax, di                          ; 03 C7
        jmp     L_0F57                          ; EB 02
L_0F55:
        mov     ax, si                          ; 8B C6
L_0F57:
        add     ax, word ptr [bp + 0x28]        ; 03 46 28
        push    ax                              ; 50
        cmp     word ptr [bp + 0x1a], 0         ; 83 7E 1A 00
        je      L_0F7B                          ; 74 1A
        push    si                              ; 56
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        call    far _entry_178                  ; 9A BB 0B 00 00 [FIXUP]
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        mov     di, ax                          ; 8B F8
        call    far _entry_177                  ; 9A AD 0B 00 00 [FIXUP]
        sub     ax, di                          ; 2B C7
        jmp     L_0F7E                          ; EB 03
L_0F7B:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
L_0F7E:
        add     ax, word ptr [bp + 0x26]        ; 03 46 26
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_138A                          ; E8 F9 03
L_0F91:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0x2c                            ; C2 2C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0F99 -- offset 0x0F99 -- 14 instr
; Funcion hoja (no llama a otras, 14 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_0140
;----------------------------------------------------------------------
L_0F99:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        jmp     L_0FA3                          ; EB 05
L_0F9E:
        sub     word ptr [bp + 4], 0xe10        ; 81 6E 04 10 0E
L_0FA3:
        cmp     word ptr [bp + 4], 0xe10        ; 81 7E 04 10 0E
        jge     L_0F9E                          ; 7D F4
        jmp     L_0FB1                          ; EB 05
L_0FAC:
        add     word ptr [bp + 4], 0xe10        ; 81 46 04 10 0E
L_0FB1:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jl      L_0FAC                          ; 7C F5
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0FC0 -- offset 0x0FC0 -- 203 instr
; Dispatcher: tabla de decisiones cmp+jcc (203 instr).
; tags: dispatcher
; callers: sub_0140
; calls (intra): sub_120D
;----------------------------------------------------------------------
L_0FC0:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        or      ax, ax                          ; 0B C0
        je      L_0FE9                          ; 74 1A
        cmp     ax, 0x384                       ; 3D 84 03
        jne     L_0FD7                          ; 75 03
        jmp     L_1194                          ; E9 BD 01
L_0FD7:
        cmp     ax, 0x708                       ; 3D 08 07
        jne     L_0FDF                          ; 75 03
        jmp     L_1169                          ; E9 8A 01
L_0FDF:
        cmp     ax, 0xa8c                       ; 3D 8C 0A
        jne     L_0FE7                          ; 75 03
        jmp     L_11C8                          ; E9 E1 01
L_0FE7:
        jmp     L_1023                          ; EB 3A
L_0FE9:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [bp + 0x30]        ; 8B 46 30
        mov     word ptr es:[bx], ax            ; 26 89 07
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        je      L_1002                          ; 74 0A
        mov     ax, word ptr [bp + 0x20]        ; 8B 46 20
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        jmp     L_1004                          ; EB 02
L_1002:
        sub     ax, ax                          ; 2B C0
L_1004:
        les     bx, ptr [bp + 0x22]             ; C4 5E 22
        add     ax, word ptr es:[bx + 4]        ; 26 03 47 04
L_100B:
        add     ax, word ptr [bp + 0x28]        ; 03 46 28
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     ax, word ptr [bp + 0x2e]        ; 8B 46 2E
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        add     ax, word ptr [bp + 0x20]        ; 03 46 20
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
L_1023:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x30]            ; FF 76 30
        push    word ptr [bp + 0x2e]            ; FF 76 2E
        call    L_120D                          ; E8 BE 01
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x30]            ; FF 76 30
        push    word ptr [bp + 0x2e]            ; FF 76 2E
        call    L_120D                          ; E8 AD 01
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 0xe], ax      ; 26 89 47 0E
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx], 4             ; 26 C7 07 04 00
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        cdq                                     ; 99
        mov     cx, 0x384                       ; B9 84 03
        idiv    cx                              ; F7 F9
        or      dx, dx                          ; 0B D2
        jne     L_10D4                          ; 75 0D
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        or      dx, dx                          ; 0B D2
        jne     L_10D4                          ; 75 03
        jmp     L_1205                          ; E9 31 01
L_10D4:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], 0x7fff        ; 26 C7 07 FF 7F
        mov     word ptr es:[bx + 4], 0x8000    ; 26 C7 47 04 00 80
        mov     word ptr es:[bx + 2], 0x7fff    ; 26 C7 47 02 FF 7F
        mov     word ptr es:[bx + 6], 0x8000    ; 26 C7 47 06 00 80
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
L_10F3:
        cmp     word ptr [bp - 0xa], 4          ; 83 7E F6 04
        jl      L_10FC                          ; 7C 03
        jmp     L_1205                          ; E9 09 01
L_10FC:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        les     di, ptr [bp + 0xc]              ; C4 7E 0C
        mov     si, word ptr es:[bx + di]       ; 26 8B 31
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx], si            ; 26 39 37
        jle     L_1114                          ; 7E 03
        mov     word ptr es:[bx], si            ; 26 89 37
L_1114:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        les     di, ptr [bp + 0xc]              ; C4 7E 0C
        mov     si, word ptr es:[bx + di]       ; 26 8B 31
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 4], si        ; 26 39 77 04
        jge     L_112E                          ; 7D 04
        mov     word ptr es:[bx + 4], si        ; 26 89 77 04
L_112E:
        mov     di, word ptr [bp - 0xa]         ; 8B 7E F6
        shl     di, 1                           ; D1 E7
        shl     di, 1                           ; D1 E7
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     si, word ptr es:[bx + di + 2]   ; 26 8B 71 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 2], si        ; 26 39 77 02
        jle     L_1149                          ; 7E 04
        mov     word ptr es:[bx + 2], si        ; 26 89 77 02
L_1149:
        mov     di, word ptr [bp - 0xa]         ; 8B 7E F6
        shl     di, 1                           ; D1 E7
        shl     di, 1                           ; D1 E7
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     si, word ptr es:[bx + di + 2]   ; 26 8B 71 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 6], si        ; 26 39 77 06
        jge     L_1164                          ; 7D 04
        mov     word ptr es:[bx + 6], si        ; 26 89 77 06
L_1164:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        jmp     L_10F3                          ; EB 8A
L_1169:
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        je      L_1179                          ; 74 0A
        mov     ax, word ptr [bp + 0x20]        ; 8B 46 20
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        jmp     L_117B                          ; EB 02
L_1179:
        sub     ax, ax                          ; 2B C0
L_117B:
        les     bx, ptr [bp + 0x2a]             ; C4 5E 2A
        add     ax, word ptr es:[bx + 4]        ; 26 03 47 04
        add     ax, word ptr [bp + 0x30]        ; 03 46 30
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x22]             ; C4 5E 22
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        jmp     L_100B                          ; E9 77 FE
L_1194:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [bp + 0x2e]        ; 8B 46 2E
        add     ax, word ptr [bp + 0x20]        ; 03 46 20
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 0x22]             ; C4 5E 22
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        add     ax, word ptr [bp + 0x26]        ; 03 46 26
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     ax, word ptr [bp + 0x30]        ; 8B 46 30
        mov     word ptr es:[bx], ax            ; 26 89 07
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        je      L_11EF                          ; 74 31
L_11BE:
        mov     ax, word ptr [bp + 0x20]        ; 8B 46 20
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        jmp     L_11F1                          ; EB 29
L_11C8:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [bp + 0x2e]        ; 8B 46 2E
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 0x22]             ; C4 5E 22
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        add     ax, word ptr [bp + 0x26]        ; 03 46 26
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     ax, word ptr [bp + 0x30]        ; 8B 46 30
        mov     word ptr es:[bx], ax            ; 26 89 07
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jne     L_11BE                          ; 75 CF
L_11EF:
        sub     ax, ax                          ; 2B C0
L_11F1:
        les     bx, ptr [bp + 0x1c]             ; C4 5E 1C
        add     ax, word ptr es:[bx + 4]        ; 26 03 47 04
        add     ax, word ptr [bp + 0x30]        ; 03 46 30
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        jmp     L_1023                          ; E9 1E FE
L_1205:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0x2e                            ; C2 2E 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_120D -- offset 0x120D -- 85 instr
; Dispatcher: tabla de decisiones cmp+jcc (85 instr).
; tags: dispatcher
; callers: sub_0140, sub_0FC0
;----------------------------------------------------------------------
L_120D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x10                        ; 83 EC 10
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     si, word ptr es:[bx]            ; 26 8B 37
        sub     si, word ptr [bp + 6]           ; 2B 76 06
        mov     di, word ptr es:[bx + 2]        ; 26 8B 7F 02
        sub     di, word ptr [bp + 4]           ; 2B 7E 04
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_1245                          ; 74 1A
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_177                  ; 9A 64 12 00 00 [FIXUP]
        push    di                              ; 57
        push    word ptr [bp + 8]               ; FF 76 08
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        call    far _entry_178                  ; 9A 58 12 00 00 [FIXUP]
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        jmp     L_1247                          ; EB 02
L_1245:
        mov     ax, si                          ; 8B C6
L_1247:
        add     ax, word ptr [bp + 6]           ; 03 46 06
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_126D                          ; 74 1A
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_178                  ; 9A 9D 12 00 00 [FIXUP]
        push    di                              ; 57
        push    word ptr [bp + 8]               ; FF 76 08
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        call    far _entry_177                  ; 9A 91 12 00 00 [FIXUP]
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        jmp     L_126F                          ; EB 02
L_126D:
        mov     ax, di                          ; 8B C7
L_126F:
        add     ax, word ptr [bp + 4]           ; 03 46 04
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     si, word ptr es:[bx + 4]        ; 26 8B 77 04
        sub     si, word ptr [bp + 6]           ; 2B 76 06
        mov     di, word ptr es:[bx + 6]        ; 26 8B 7F 06
        sub     di, word ptr [bp + 4]           ; 2B 7E 04
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_12A6                          ; 74 1A
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_177                  ; 9A C5 12 00 00 [FIXUP]
        push    di                              ; 57
        push    word ptr [bp + 8]               ; FF 76 08
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        call    far _entry_178                  ; 9A B9 12 00 00 [FIXUP]
        add     ax, word ptr [bp - 0xe]         ; 03 46 F2
        jmp     L_12A8                          ; EB 02
L_12A6:
        mov     ax, si                          ; 8B C6
L_12A8:
        add     ax, word ptr [bp + 6]           ; 03 46 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_12CE                          ; 74 1A
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_178                  ; 9A C4 0D 00 00 [FIXUP]
        push    di                              ; 57
        push    word ptr [bp + 8]               ; FF 76 08
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        call    far _entry_177                  ; 9A B7 0D 00 00 [FIXUP]
        sub     ax, word ptr [bp - 0x10]        ; 2B 46 F0
        jmp     L_12D0                          ; EB 02
L_12CE:
        mov     ax, di                          ; 8B C7
L_12D0:
        add     ax, word ptr [bp + 4]           ; 03 46 04
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_12FC -- offset 0x12FC -- 21 instr
; Funcion sin clasificar definitiva (21 instr).
; tags: small
; callers: sub_0140
;----------------------------------------------------------------------
L_12FC:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        mov     cx, 0x384                       ; B9 84 03
        idiv    cx                              ; F7 F9
        mov     si, dx                          ; 8B F2
        cmp     si, 0x1c2                       ; 81 FE C2 01
        jle     L_131D                          ; 7E 09
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, si                          ; 03 C6
        sub     ax, cx                          ; 2B C1
        jmp     L_1322                          ; EB 05
L_131D:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, si                          ; 03 C6
L_1322:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1329 -- offset 0x1329 -- 35 instr
; Funcion mediana (35 instr, 0 calls).
; tags: medium
; callers: sub_0A18, sub_138A
;----------------------------------------------------------------------
L_1329:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     si, word ptr es:[bx]            ; 26 8B 37
        cmp     si, 2                           ; 83 FE 02
        jl      L_135B                          ; 7C 23
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    si                              ; 56
        call    far _SEG1_3308                  ; 9A FA 04 00 00 [FIXUP]
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx]                ; 26 FF 37
        call    far _entry_390                  ; 9A 0B 05 00 00 [FIXUP]
L_135B:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     si, word ptr es:[bx]            ; 26 8B 37
        inc     word ptr es:[bx]                ; 26 FF 07
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr es:[bx + si + 2], ax   ; 26 89 40 02
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xe                             ; C2 0E 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_138A -- offset 0x138A -- 53 instr
; Funcion mediana (53 instr, 1 calls).
; tags: medium
; callers: sub_0A18
; calls (intra): sub_1329
;----------------------------------------------------------------------
L_138A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     di, word ptr [bp + 0xc]         ; 8B 7E 0C
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp + 8]           ; 03 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        les     bx, ptr [bp - 8]                ; C4 5E F8
        cmp     word ptr es:[bx - 4], si        ; 26 39 77 FC
        jne     L_13BD                          ; 75 06
        cmp     word ptr es:[bx - 2], di        ; 26 39 7F FE
        je      L_1402                          ; 74 45
L_13BD:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     bx, word ptr es:[bx]            ; 26 8B 1F
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp + 8]           ; 03 5E 08
        mov     es, word ptr [bp + 0xa]         ; 8E 46 0A
        mov     word ptr es:[bx], si            ; 26 89 37
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        inc     word ptr es:[bx]                ; 26 FF 07
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp + 8]           ; 03 5E 08
        mov     es, word ptr [bp + 0xa]         ; 8E 46 0A
        mov     word ptr es:[bx + 2], di        ; 26 89 7F 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx], 0x10          ; 26 83 3F 10
        jl      L_1402                          ; 7C 10
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    es                              ; 06
        push    bx                              ; 53
        call    L_1329                          ; E8 27 FF
L_1402:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        push    cs                              ; 0E

GDI_TEXT ENDS

        END
