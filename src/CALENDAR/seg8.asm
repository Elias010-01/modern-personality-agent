; AUTO-GENERATED from original CALENDAR segment 8
; segment_size=310 bytes, flags=0x0110
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

CALENDAR_TEXT SEGMENT BYTE PUBLIC 'CODE'

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
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     word ptr [bp - 0x10], si        ; 89 76 F0
        mov     di, 1                           ; BF 01 00
L_0018:
        cmp     di, 4                           ; 83 FF 04
        jle     L_0020                          ; 7E 03
        jmp     L_00FE                          ; E9 DE 00
L_0020:
        mov     bx, word ptr [0x140]            ; 8B 1E 40 01
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     al, byte ptr [bx + di + 0x145]  ; 8A 81 45 01
        sub     ah, ah                          ; 2A E4
        or      ax, ax                          ; 0B C0
        je      L_0046                          ; 74 14
        cmp     ax, 1                           ; 3D 01 00
        je      L_0089                          ; 74 52
        cmp     ax, 2                           ; 3D 02 00
        je      L_009D                          ; 74 61
        cmp     ax, 3                           ; 3D 03 00
        jne     L_0044                          ; 75 03
        jmp     L_00C5                          ; E9 81 00
L_0044:
        jmp     L_0086                          ; EB 40
L_0046:
        test    byte ptr [bp + 6], 4            ; F6 46 06 04
        je      L_0086                          ; 74 3A
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        cmp     byte ptr [bx], 0xff             ; 80 3F FF
        jne     L_0063                          ; 75 0F
        push    bx                              ; 53
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_0063                          ; 7D 05
        sub     ax, ax                          ; 2B C0
        jmp     L_0106                          ; E9 A3 00
L_0063:
        push    si                              ; 56
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        add     ax, 0x7fec                      ; 05 EC 7F
        push    ax                              ; 50
        call    L_0113                          ; E8 A1 00
        mov     si, ax                          ; 8B F0
        cmp     di, 1                           ; 83 FF 01
        jne     L_007D                          ; 75 04
        mov     byte ptr [si], 0x2c             ; C6 04 2C
        inc     si                              ; 46
L_007D:
        cmp     di, 4                           ; 83 FF 04
        je      L_0086                          ; 74 04
L_0082:
        mov     byte ptr [si], 0x20             ; C6 04 20
        inc     si                              ; 46
L_0086:
        inc     di                              ; 47
        jmp     L_0018                          ; EB 8F
L_0089:
        push    si                              ; 56
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        sub     ah, ah                          ; 2A E4
        add     ax, 0x7fdf                      ; 05 DF 7F
        push    ax                              ; 50
        call    L_0113                          ; E8 7A 00
        mov     si, ax                          ; 8B F0
        jmp     L_0082                          ; EB E5
L_009D:
        test    byte ptr [bp + 6], 8            ; F6 46 06 08
        jne     L_0086                          ; 75 E3
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 1]           ; 8A 47 01
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    si                              ; 56
        push    word ptr [0x144]                ; FF 36 44 01
        call    far _entry_44                   ; 9A DF 00 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        cmp     word ptr [0x140], 0             ; 83 3E 40 01 00
        jne     L_0082                          ; 75 C3
        mov     byte ptr [si], 0x2c             ; C6 04 2C
        inc     si                              ; 46
        jmp     L_0082                          ; EB BD
L_00C5:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bx + 3]           ; 8B 47 03
        sub     ax, word ptr [0x13e]            ; 2B 06 3E 01
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_44                   ; 9A F5 00 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        push    dx                              ; 52
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_44                   ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        jmp     L_007D                          ; E9 7F FF
L_00FE:
        mov     byte ptr [si], 0                ; C6 04 00
        mov     ax, si                          ; 8B C6
        sub     ax, word ptr [bp - 0x10]        ; 2B 46 F0
L_0106:
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
; sub_0113 -- offset 0x0113 -- 18 instr
; Funcion sin clasificar definitiva (18 instr).
; tags: calls_user, small
; calls (inter): USER.LOADSTRING
;----------------------------------------------------------------------
L_0113:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        push    word ptr [0x2fe]                ; FF 36 FE 02
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        add     ax, si                          ; 03 C6
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      004h                            ; 04

CALENDAR_TEXT ENDS

        END
