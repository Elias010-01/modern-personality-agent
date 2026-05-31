; ======================================================================
; MSDOS / seg1.asm   (segment 1 of MSDOS)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         0
; Total instructions:                    0
; 
; Classification (pass8):
;   C-origin (high+medium):              0
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     0 (0 unique)
; ======================================================================
; AUTO-GENERATED from original MSDOS segment 1
; segment_size=519 bytes, flags=0x0140
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

MSDOS_TEXT SEGMENT BYTE PUBLIC 'CODE'

        mov     si, 0x364                       ; BE 64 03
L_0003:
        xor     ax, ax                          ; 33 C0
        push    ds                              ; 1E
        ;   ^ arg lpMsg (high/segment)
        push    si                              ; 56
        ;   ^ arg lpMsg (low/offset)
        push    ax                              ; 50
        ;   ^ arg hWnd
        push    ax                              ; 50
        ;   ^ arg wMsgFilterMin
        push    ax                              ; 50
        ;   ^ arg wMsgFilterMax
        ; --> GETMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax) -> BOOL
        call    far USER.GETMESSAGE             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0023                          ; 74 10
        push    ds                              ; 1E
        ;   ^ arg lpMsg (high/segment)
        push    si                              ; 56
        ;   ^ arg lpMsg (low/offset)
        ; --> TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        push    ds                              ; 1E
        ;   ^ arg lpMsg (high/segment)
        push    si                              ; 56
        ;   ^ arg lpMsg (low/offset)
        ; --> DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        jmp     3                               ; EB E0
;   [conditional branch target (if/else)] L_0023
L_0023:
        mov     ah, 0x4c                        ; B4 4C
        int     0x21                            ; CD 21
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [0x170], 0             ; 83 3E 70 01 00
        je      L_005C                          ; 74 21
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_42                   ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_41                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_005C                          ; 75 07
;   [loop start] L_0055
L_0055:
        sub     ax, ax                          ; 2B C0
;   [loop start] L_0057
L_0057:
        sub     dx, dx                          ; 2B D2
        jmp     L_01FD                          ; E9 A1 01
;   [conditional branch target (if/else)] L_005C
L_005C:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x1a                        ; 3D 1A 00
        jne     L_0067                          ; 75 03
        jmp     L_0131                          ; E9 CA 00
;   [conditional branch target (if/else)] L_0067
L_0067:
        jbe     L_006C                          ; 76 03
        jmp     L_01A4                          ; E9 38 01
;   [conditional branch target (if/else)] L_006C
L_006C:
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0x16                        ; 3D 16 00
        jbe     L_0077                          ; 76 03
        jmp     L_01C8                          ; E9 51 01
;   [conditional branch target (if/else)] L_0077
L_0077:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x176]        ; 2E FF A7 76 01
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_40                   ; 9A FF FF 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0057                          ; EB C5
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _entry_39                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0055                          ; EB B9
        cmp     word ptr [0xc8], 0              ; 83 3E C8 00 00
        je      L_0055                          ; 74 B2
        push    word ptr [0xc8]                 ; FF 36 C8 00
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0055                          ; EB A7
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _entry_38                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0055                          ; EB 9D
;   [loop start] L_00B8
L_00B8:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_37                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0055                          ; EB 93
;   [loop start] L_00C2
L_00C2:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_36                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0055                          ; EB 86
;   [loop start] L_00CF
L_00CF:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        jmp     L_016E                          ; E9 96 00
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_35                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0055                          ; E9 6C FF
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_26                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0055                          ; E9 5E FF
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _entry_34                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0055                          ; E9 53 FF
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xba                        ; B8 BA 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_31                   ; 9A 4F 01 00 00 [FIXUP]
        jmp     L_0055                          ; E9 43 FF
        mov     word ptr [0xd2], 1              ; C7 06 D2 00 01 00
        jmp     L_0055                          ; E9 3A FF
        cmp     word ptr [bp + 0xc], 7          ; 83 7E 0C 07
        jne     L_0126                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0128                          ; EB 02
;   [conditional branch target (if/else)] L_0126
L_0126:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0128
L_0128:
        push    ax                              ; 50
        call    far _entry_33                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0055                          ; E9 24 FF
;   [unconditional branch target] L_0131
L_0131:
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0055                          ; E9 1C FF
        cmp     word ptr [0xd2], 0              ; 83 3E D2 00 00
        je      L_0159                          ; 74 19
        mov     word ptr [0xca], 1              ; C7 06 CA 00 01 00
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xbb                        ; B8 BB 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_31                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xca], 0              ; C7 06 CA 00 00 00
;   [conditional branch target (if/else)] L_0159
L_0159:
        mov     ax, word ptr [0xd2]             ; A1 D2 00
        cdq                                     ; 99
        jmp     L_01FD                          ; E9 9D 00
;   [loop start] L_0160
L_0160:
        cmp     word ptr [bp + 0xa], 0x7d0      ; 81 7E 0A D0 07
        jne     L_01C8                          ; 75 61
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x7d0                       ; B8 D0 07
        push    ax                              ; 50
;   [unconditional branch target] L_016E
L_016E:
        call    far _entry_30                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0055                          ; E9 DF FE
        xchg    dx, ax                          ; 92
        add     byte ptr [si - 0x3800], bl      ; 00 9C 00 C8
        add     ax, cx                          ; 01 C8
        add     ax, bx                          ; 01 D8
        add     al, cl                          ; 00 C8
        add     word ptr [bp + di], bx          ; 01 1B
        add     word ptr [bp + di], bx          ; 01 1B
        add     ax, cx                          ; 01 C8
        add     ax, cx                          ; 01 C8
        add     ax, cx                          ; 01 C8
        add     ax, cx                          ; 01 C8
        add     ax, cx                          ; 01 C8
        add     ax, cx                          ; 01 C8
        add     ax, cx                          ; 01 C8
        add     word ptr [bp - 0x3800], bp      ; 01 AE 00 C8
        add     ax, cx                          ; 01 C8
        add     ax, cx                          ; 01 C8
        add     cx, bp                          ; 01 E9
        add     al, cl                          ; 00 C8
        add     ax, cx                          ; 01 C8
        add     word ptr [bx + di], di          ; 01 39
        add     word ptr [di], di               ; 01 3D
        adc     al, byte ptr [bx + di]          ; 12 01
        je      L_0160                          ; 74 B7
        ja      L_01DE                          ; 77 33
        cmp     ax, 0x100                       ; 3D 00 01
        jb      L_01C8                          ; 72 18
        cmp     ax, 0x101                       ; 3D 01 01
        ja      L_01B8                          ; 77 03
        jmp     L_00C2                          ; E9 0A FF
;   [conditional branch target (if/else)] L_01B8
L_01B8:
        cmp     ax, 0x102                       ; 3D 02 01
        jne     L_01C0                          ; 75 03
        jmp     L_00B8                          ; E9 F8 FE
;   [conditional branch target (if/else)] L_01C0
L_01C0:
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_01C8                          ; 75 03
        jmp     L_00CF                          ; E9 07 FF
;   [loop start (also forward branch)] L_01C8
L_01C8:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg wMsg
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg wParam
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lParam (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lParam (low/offset)
        ; --> DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.DEFWINDOWPROC          ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01FD                          ; EB 1F
;   [conditional branch target (if/else)] L_01DE
L_01DE:
        sub     ax, 0x3ff                       ; 2D FF 03
        cmp     ax, 5                           ; 3D 05 00
        ja      L_01C8                          ; 77 E2
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x1ee]        ; 2E FF A7 EE 01
        jg      L_01F0                          ; 7F 00
;   [conditional branch target (if/else)] L_01F0
L_01F0:
        test    word ptr [bx + si], 0xf7        ; F7 00 F7 00
        enter   0x201, 1                        ; C8 01 02 01
        adc     al, byte ptr [bx + di]          ; 12 01
        jmp     L_0055                          ; E9 58 FE
;   [unconditional branch target] L_01FD
L_01FD:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      00ah                            ; 0A

MSDOS_TEXT ENDS

        END
