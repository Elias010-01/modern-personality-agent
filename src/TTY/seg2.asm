; TTY/seg2.asm
; Semantic data - verified byte-exact
BITS 16

    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 005h, 000h, 000h               ; add ax, 0
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add word [bp + si], ax                   ; 01 02
    add al, cl                               ; 00 C8
    add byte [bx], dl                        ; 00 17
    db 001h, 050h, 000h               ; add word [bx + si], dx
    inc dx                                   ; 42
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add byte [bp + si], al                   ; 00 02
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add al, byte [bx + si]                   ; 02 00
    add byte [bx + si], al                   ; 00 00
    db 000h, 078h, 000h               ; add byte [bx + si], bh
    dec ax                                   ; 48
    add byte [si + 0x1800], cl               ; 00 8C 00 18
    add si, di                               ; 01 FE
    add dh, bh                               ; 00 FE
    add byte [bp + si], cl                   ; 00 0A
    add dl, bh                               ; 00 FA
    db 0FFh                           ; FF
    in al, dx                                ; EC
    or sp, bp                                ; 09 EC
    or word [bp + si], cx                    ; 09 0A
    add dl, bh                               ; 00 FA
    db 0FFh, 064h, 000h               ; jmp word [si]
    add byte fs:[bp + si], cl                ; 64 00 0A
    add dl, bh                               ; 00 FA
    db 0FFh                           ; FF
    db 0E8h, 003h, 0E8h               ; call 0xffffe85e
    add cx, word [bp + si]                   ; 03 0A
    add dl, bh                               ; 00 FA
    jmp word [bx + si - 0x5ffb]              ; FF A0 05 A0
    db 005h, 00Ah, 000h               ; add ax, 0xa
    cli                                      ; FA
    dec word [bp + si]                       ; FF 0A
    add byte [0x100], al                     ; 00 06 00 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [si + 0x74], dh                 ; 00 74 74
    db 079h, 000h                     ; jns 0x7c
    db 074h, 074h                     ; je 0xf2
    db 079h, 02Eh                     ; jns 0xae
    db 064h, 072h, 076h               ; jb 0xf9
    add byte [si + 0x74], dh                 ; 00 74 74
    db 079h, 02Eh                     ; jns 0xb6
    db 064h, 072h, 076h               ; jb 0x101
    add byte [bx + si], al                   ; 00 00
    imul sp, word [bp + di + 0x6f], 0x6e75   ; 69 63 6F 75 6E
    db 074h, 072h                     ; je 0x106
    db 079h, 000h                     ; jns 0x96
    db 069h, 06Eh, 074h, 06Ch, 000h   ; imul bp, word [bp + 0x74], 0x6c
    add byte [si + 0x74], ah                 ; 00 64 74
    dec bp                                   ; 4D
    dec di                                   ; 4F
    inc sp                                   ; 44
    inc bp                                   ; 45
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    or ax, 0xc00                             ; 0D 00 0C
    add byte [bp + si], cl                   ; 00 0A
    add byte [bx + si], ah                   ; 00 20
    db 000h, 055h, 000h               ; add byte [di], dl
    inc dx                                   ; 42
    add byte [bp + si], al                   ; 00 02
    add byte [bp + si], al                   ; 00 02
    db 000h, 050h, 000h               ; add byte [bx + si], dl
    inc dx                                   ; 42
    db 000h, 052h, 000h               ; add byte [bp + si], dl
    push ax                                  ; 50
    add byte [bp + si], al                   ; 00 02
    add byte [bp + si], al                   ; 00 02
    add byte [bp], cl                        ; 00 4E 00
    inc sp                                   ; 44
    add byte [bp + 0x100], ah                ; 00 A6 00 01
    test al, 0                               ; A8 00
    add word [bp + si + 0x100], bp           ; 01 AA 00 01
    db 0ACh                           ; lodsb al, byte [si]
    add byte [bx + di], al                   ; 00 01