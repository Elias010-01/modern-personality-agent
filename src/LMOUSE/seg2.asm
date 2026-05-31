; LMOUSE/seg2.asm
; Semantic data - verified byte-exact
BITS 16

    add word [bx + si], ax                   ; 01 00
    add ax, word [bx + si]                   ; 03 00
    add byte [bx + si], al                   ; 00 00
    add al, byte [bx + si]                   ; 02 00
    add al, byte [bx + si]                   ; 02 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    db 0FFh                           ; FF
    clc                                      ; F8
    add cl, byte [bp + di]                   ; 02 0B
    test word [bp + si], 0xf800              ; F7 02 00 F8
    add cx, word [si]                        ; 03 0C
    out dx, ax                               ; EF
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], dh                   ; 00 30
    db 06Fh                           ; outsw dx, word [si]
    db 0FFh                           ; FF