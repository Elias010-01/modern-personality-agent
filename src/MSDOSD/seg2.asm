; MSDOSD/seg2.asm
; Semantic data - verified byte-exact
BITS 16

    add byte [bp + si], al                   ; 00 02
    add word [bx + di], ax                   ; 01 01
    add byte [bp + si], al                   ; 00 02
    inc ax                                   ; 40
    add byte [bx + si + 1], al               ; 00 40 01
    inc byte [bx + di]                       ; FE 01
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add al, byte [bp + si]                   ; 02 02
    add word [bx + si], ax                   ; 01 00
    db 002h, 070h, 000h               ; add dh, byte [bx + si]
    add byte [bp + si], 0xff                 ; 80 02 FF
    add word [bx + si], ax                   ; 01 00
    or byte [bx + si], al                    ; 08 00
    add al, byte [bx + si]                   ; 02 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], al                   ; 00 02
    add word [bx + di], ax                   ; 01 01
    add byte [bp + si], al                   ; 00 02
    inc ax                                   ; 40
    add byte [bx + si + 1], ch               ; 00 68 01
    cld                                      ; FC
    add al, byte [bx + si]                   ; 02 00
    or word [bx + si], ax                    ; 09 00
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], al                   ; 00 02
    add al, byte [bx + di]                   ; 02 01
    add byte [bp + si], al                   ; 00 02
    db 070h, 000h                     ; jo 0x41
    rol byte [bp + si], 1                    ; D0 02
    std                                      ; FD
    add al, byte [bx + si]                   ; 02 00
    or word [bx + si], ax                    ; 09 00
    add al, byte [bx + si]                   ; 02 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], al                   ; 00 02
    add word [bx + di], ax                   ; 01 01
    add byte [bp + si], al                   ; 00 02
    db 0E0h, 000h                     ; loopne 0x54
    pushaw                                   ; 60
    or cx, di                                ; 09 F9
    pop es                                   ; 07
    add byte [bx], cl                        ; 00 0F
    add byte [bp + si], al                   ; 00 02
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add al, byte [bp + si]                   ; 02 02
    add word [bx + si], ax                   ; 01 00
    db 002h, 070h, 000h               ; add dh, byte [bx + si]
    mov al, byte [0xf905]                    ; A0 05 F9
    add ax, word [bx + si]                   ; 03 00
    or word [bx + si], ax                    ; 09 00
    add al, byte [bx + si]                   ; 02 00
    add byte [bx + si], al                   ; 00 00
    cmp word [bx + di], ax                   ; 39 01
    cmp ax, word [bx + di]                   ; 3B 01
    pop di                                   ; 5F
    add word [bp + si + 1], sp               ; 01 62 01
    inc bx                                   ; 43
    or cx, cx                                ; 09 C9
    add al, byte [bx + si]                   ; 02 00
    add byte [bx + di + 0x42], cl            ; 00 49 42
    dec bp                                   ; 4D
    inc dx                                   ; 42
    dec cx                                   ; 49
    dec di                                   ; 4F
    db 02Eh, 043h                     ; inc bx
    dec di                                   ; 4F
    dec bp                                   ; 4D
    add byte [bx + di + 0x42], cl            ; 00 49 42
    dec bp                                   ; 4D
    inc sp                                   ; 44
    dec di                                   ; 4F
    push bx                                  ; 53
    db 02Eh, 043h                     ; inc bx
    dec di                                   ; 4F
    dec bp                                   ; 4D
    add byte [bp + di + 0x4f], al            ; 00 43 4F
    dec bp                                   ; 4D
    dec bp                                   ; 4D
    inc cx                                   ; 41
    dec si                                   ; 4E
    inc sp                                   ; 44
    db 02Eh, 043h                     ; inc bx
    dec di                                   ; 4F
    dec bp                                   ; 4D
    add byte [bx + si - 0x7500], al          ; 00 80 00 8B
    add byte [bp + 0x700], dl                ; 00 96 00 07
    pop es                                   ; 07
    add byte [bx + si], al                   ; 00 00
    inc cx                                   ; 41
    db 03Ah, 05Ch, 000h               ; cmp bl, byte [si]
    db 0FFh                           ; FF
    db 0FFh                           ; FF