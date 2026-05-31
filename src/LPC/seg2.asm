; LPC/seg2.asm
; Semantic data - verified byte-exact
BITS 16

    add byte [bx + di], al                   ; 00 01
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si + 0x65], dh            ; 00 70 65
    db 06Eh                           ; outsb dx, byte [si]
    arpl word [bx + di + 0x6c], sp           ; 63 61 6C
    and byte [bx + si], ah                   ; 20 20
    db 064h, 061h                     ; popaw
    db 074h, 000h                     ; je 0x1f
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
    add byte [bp + di + 0x6f], al            ; 00 43 6F
    db 070h, 079h                     ; jo 0xb3
    db 072h, 069h                     ; jb 0xa5
    db 067h, 068h, 074h, 020h         ; push 0x2074
    xor word [bx + di], di                   ; 31 39
    cmp byte [di], dh                        ; 38 35
    dec sp                                   ; 4C
    imul si, word [si + 0x65], 0x502d        ; 69 74 65 2D 50
    db 065h, 06Eh                     ; outsb dx, byte gs:[si]
    and byte [bp + di + 0x6f], al            ; 20 43 6F
    db 06Dh                           ; insw word es:[di], dx
    db 070h, 061h                     ; jo 0xb3
    db 06Eh                           ; outsb dx, byte [si]
    db 079h, 062h                     ; jns 0xb7
    db 079h, 020h                     ; jns 0x77
    and byte [bx + si], ah                   ; 20 20
    push dx                                  ; 52
    db 06Fh                           ; outsw dx, word [si]
    and byte fs:[bp + di + 0x69], dl         ; 64 20 53 69
    db 06Ch                           ; insb byte es:[di], dx
    db 076h, 065h                     ; jbe 0xc7
    db 072h, 000h                     ; jb 0x64
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00