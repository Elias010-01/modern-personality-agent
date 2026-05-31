; TERMINAL/seg9.asm
; Semantic data - verified byte-exact
BITS 16

    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 005h, 000h, 000h               ; add ax, 0
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di + 0x43], ch            ; 00 69 43
    db 06Fh                           ; outsw dx, word [si]
    db 075h, 06Eh                     ; jne 0x83
    db 074h, 072h                     ; je 0x89
    db 079h, 000h                     ; jns 0x19
    db 069h, 06Eh, 074h, 06Ch, 000h   ; imul bp, word [bp + 0x74], 0x6c
    add word [bx + si], ax                   ; 01 00
    sub al, 0                                ; 2C 00
    add al, byte [bx + si]                   ; 02 00
    sub ax, 0x200                            ; 2D 00 02
    add byte [bx], ch                        ; 00 2F
    add byte [bp + di], al                   ; 00 03
    add byte [bp + 1], ah                    ; 00 66 01
    add al, 0                                ; 04 00
    and word [bx + si], ax                   ; 21 00
    push es                                  ; 06
    add byte [bx + di], dh                   ; 00 31
    add byte [bx], al                        ; 00 07
    add byte [bx], ah                        ; 00 27
    add byte [bx + si], cl                   ; 00 08
    add byte [bp + si], ah                   ; 00 22
    add byte [bx + di], cl                   ; 00 09
    add byte [0xa00], ch                     ; 00 2E 00 0A
    add byte [bx + di], ch                   ; 00 29
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
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], bl                   ; 00 18
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], bl                   ; 00 19
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [si + 0x2a], bl                 ; 00 5C 2A
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], cl                   ; 00 09
    add byte [bp + si], cl                   ; 00 0A
    add byte [bx + si], al                   ; 00 00
    add byte [si], dl                        ; 00 14
    add byte [di], dl                        ; 00 15
    add byte [bx + si], al                   ; 00 00
    add byte [0x1700], dl                    ; 00 16 00 17
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add byte [bp + si], al                   ; 00 02
    add byte [bp + si], al                   ; 00 02
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add byte [bp + si], al                   ; 00 02
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    and ax, 0x2900                           ; 25 00 29
    add byte [bx + si], al                   ; 00 00
    add byte [0x1000], cl                    ; 00 0E 00 10
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], bl                   ; 00 19
    add byte [bp + di], bl                   ; 00 1B
    add byte [bx + si], al                   ; 00 00
    add byte [si], bl                        ; 00 1C
    add byte [0], bl                         ; 00 1E 00 00
    add byte [bx], bl                        ; 00 1F
    add byte [bx + si], ah                   ; 00 20
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], ah                   ; 00 21
    add byte [bp + si], ah                   ; 00 22
    add byte [bx + si], al                   ; 00 00
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    sbb bp, word [bx]                        ; 1B 2F
    dec bx                                   ; 4B
    sbb bx, word [bp + di + 0x3f]            ; 1B 5B 3F
    xor word [bp + di], di                   ; 31 3B
    xor ah, byte [bp + di + 0x1b]            ; 32 63 1B
    pop bx                                   ; 5B
    xor byte [bp + 0x1b], ch                 ; 30 6E 1B
    pop bx                                   ; 5B
    aas                                      ; 3F
    xor word [bp + di], si                   ; 31 33
    db 06Eh                           ; outsb dx, byte [si]
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    pop ss                                   ; 17
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], cl                   ; 00 09
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
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    or word [bx + si], ax                    ; 09 00
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
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di + 0x4f], al            ; 00 43 4F
    dec bp                                   ; 4D
    aas                                      ; 3F
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add word [bx + di], ax                   ; 01 01
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    xor al, byte [bx + si]                   ; 32 00
    mov al, 4                                ; B0 04
    add byte [bx + si], al                   ; 00 00
    pop es                                   ; 07
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], al                   ; 00 02
    add byte [bx + si], al                   ; 00 00
    add byte [si], bh                        ; 00 3C
    add byte [bp + si], al                   ; 00 02
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
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add word [bx + di], ax                   ; 01 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bp + si], dh                   ; 00 32
    db 000h, 0B0h, 004h, 000h         ; add byte [bx + si + 4], dh
    add byte [bx], al                        ; 00 07
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], al                   ; 00 02
    add byte [bx + si], al                   ; 00 00
    add byte [si], bh                        ; 00 3C
    add byte [bp + si], al                   ; 00 02
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
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add word [bx + di], ax                   ; 01 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bp + si], dh                   ; 00 32
    db 000h, 0B0h, 004h, 000h         ; add byte [bx + si + 4], dh
    add byte [bx], al                        ; 00 07
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], al                   ; 00 02
    add byte [bx + si], al                   ; 00 00
    add byte [si], bh                        ; 00 3C
    add byte [bp + si], al                   ; 00 02
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
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], ah                   ; 00 20
    add byte [bp + si], cl                   ; 00 0A
    add byte [si + 0x65], al                 ; 00 44 65
    db 076h, 069h                     ; jbe 0x463
    db 063h, 065h, 000h               ; arpl word [di], sp
    db 077h, 069h                     ; ja 0x468
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x477
    add byte [bx + si], al                   ; 00 00
    add word [bx + si], ax                   ; 01 00
    inc cx                                   ; 41
    push sp                                  ; 54
    push si                                  ; 56
    xor byte [bx + si], ah                   ; 30 20
    push cx                                  ; 51
    xor byte [di], cl                        ; 30 0D
    inc cx                                   ; 41
    push sp                                  ; 54
    or ax, 0x2b00                            ; 0D 00 2B
    sub bp, word [bp + di]                   ; 2B 2B
    add byte [bx + di + 0x54], al            ; 00 41 54
    dec ax                                   ; 48
    xor byte [di], cl                        ; 30 0D
    add byte [bx + di + 0x54], al            ; 00 41 54
    dec ax                                   ; 48
    xor word [di], cx                        ; 31 0D
    add byte [bx + di + 0x54], al            ; 00 41 54
    pop dx                                   ; 5A
    or ax, 0x408                             ; 0D 08 04
    or byte [bx + si], al                    ; 08 00
    adc byte [si], al                        ; 10 04
    add ax, word [bx + si]                   ; 03 00
    adc al, 4                                ; 14 04
    add ax, word [bx + si]                   ; 03 00
    sbb byte [si], al                        ; 18 04
    add ax, 0x1e00                           ; 05 00 1E
    add al, 5                                ; 04 05
    add byte [si], ah                        ; 00 24
    add al, 4                                ; 04 04
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], al                   ; 00 02
    test al, 0                               ; A8 00
    add byte [di], cl                        ; 00 0D
    or al, byte [bx + si]                    ; 0A 00
    add byte [bp + si], cl                   ; 00 0A
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
    add byte [bx + si], al                   ; 00 00
    db 000h, 040h, 000h               ; add byte [bx + si], al
    inc dx                                   ; 42
    add byte [bx + si], al                   ; 00 00
    add byte [0x1700], al                    ; 00 06 00 17
    adc word [bx + si], ax                   ; 11 00
    add byte [bx + di], al                   ; 00 01
    and sp, word [bp + di + 0x800]           ; 23 A3 00 08
    and sp, word [bp + di - 0x58c0]          ; 23 A3 40 A7
    pop bx                                   ; 5B
    mov ax, word [0xd15c]                    ; A1 5C D1
    pop bp                                   ; 5D
    mov di, 0xb07b                           ; BF 7B B0
    db 07Ch, 0F1h                     ; jl 0x48e
    db 07Dh, 0E7h                     ; jge 0x486
    add byte [bp + si], cl                   ; 00 0A
    inc ax                                   ; 40
    db 0E0h, 05Bh                     ; loopne 0x4ff
    db 0E2h, 05Ch                     ; loop 0x502
    out 0x5d, ax                             ; E7 5D
    db 0EAh, 05Eh, 0EEh, 060h, 0F4h   ; ljmp 0xf460:0xee5e
    db 07Bh, 0E9h                     ; jnp 0x498
    db 07Ch, 0F9h                     ; jl 0x4aa
    db 07Dh, 0E8h                     ; jge 0x49b
    db 07Eh, 0FBh                     ; jle 0x4b0
    add byte [bp + si], cl                   ; 00 0A
    inc ax                                   ; 40
    les bx, [bp + di - 0x3a]                 ; C4 5B C6
    pop sp                                   ; 5C
    fcomp dword [di - 0x3b]                  ; D8 5D C5
    pop si                                   ; 5E
    fsub qword [bx + si - 0x1c]              ; DC 60 E4
    db 07Bh, 0E6h                     ; jnp 0x4ab
    db 07Ch, 0F8h                     ; jl 0x4bf
    db 07Dh, 0E5h                     ; jge 0x4ae
    db 07Eh, 0FCh                     ; jle 0x4c7
    add byte [bx + di], cl                   ; 00 09
    pop bx                                   ; 5B
    les bx, [si - 0x2a]                      ; C4 5C D6
    pop bp                                   ; 5D
    lds bx, [bp - 0x24]                      ; C5 5E DC
    pushaw                                   ; 60
    db 0E9h, 07Bh, 0E4h               ; jmp 0xffffe954
    db 07Ch, 0F6h                     ; jl 0x4d1
    db 07Dh, 0E5h                     ; jge 0x4c2
    db 07Eh, 0FCh                     ; jle 0x4db
    add byte [bx + di], cl                   ; 00 09
    and sp, word [bp + di - 0x1fc0]          ; 23 A3 40 E0
    pop bx                                   ; 5B
    mov al, 0x5c                             ; B0 5C
    out 0x5d, ax                             ; E7 5D
    db 0A7h                           ; cmpsw word [si], word es:[di]
    db 07Bh, 0E9h                     ; jnp 0x4d6
    db 07Ch, 0F9h                     ; jl 0x4e8
    db 07Dh, 0E8h                     ; jge 0x4d9
    db 07Eh, 0A8h                     ; jle 0x49b
    add byte [bx + si], cl                   ; 00 08
    inc ax                                   ; 40
    db 0A7h                           ; cmpsw word [si], word es:[di]
    pop bx                                   ; 5B
    les bx, [si - 0x2a]                      ; C4 5C D6
    pop bp                                   ; 5D
    fdivr qword [bp + di - 0x1c]             ; DC 7B E4
    db 07Ch, 0F6h                     ; jl 0x4f7
    db 07Dh, 0FCh                     ; jge 0x4ff
    db 07Eh, 0DFh                     ; jle 0x4e4
    add byte [bp + si], cl                   ; 00 0A
    inc ax                                   ; 40
    leave                                    ; C9
    pop bx                                   ; 5B
    les bx, [si - 0x2a]                      ; C4 5C D6
    pop bp                                   ; 5D
    lds bx, [bp - 0x24]                      ; C5 5E DC
    pushaw                                   ; 60
    db 0E9h, 07Bh, 0E4h               ; jmp 0xffffe990
    db 07Ch, 0F6h                     ; jl 0x50d
    db 07Dh, 0E5h                     ; jge 0x4fe
    db 07Eh, 0FCh                     ; jle 0x517
    add byte [bp + si], cl                   ; 00 0A
    and sp, word [bp + di - 0x58c0]          ; 23 A3 40 A7
    pop bx                                   ; 5B
    mov al, 0x5c                             ; B0 5C
    out 0x5d, ax                             ; E7 5D
    db 0E9h, 060h, 0F9h               ; jmp 0xfffffe89
    db 07Bh, 0E0h                     ; jnp 0x50b
    db 07Ch, 0F2h                     ; jl 0x51f
    db 07Dh, 0E8h                     ; jge 0x517
    db 07Eh, 0ECh                     ; jle 0x51d
    add byte [si], cl                        ; 00 0C
    db 023h, 0F9h                     ; and di, cx
    inc ax                                   ; 40
    db 0E0h, 05Bh                     ; loopne 0x593
    db 0E9h, 05Ch, 0E7h               ; jmp 0xffffec97
    pop bp                                   ; 5D
    db 0EAh, 05Eh, 0EEh, 060h, 0F4h   ; ljmp 0xf460:0xee5e
    pop di                                   ; 5F
    db 0E8h, 07Bh, 0E4h               ; call 0xffffe9c0
    db 07Ch, 0F6h                     ; jl 0x53d
    db 07Dh, 0FCh                     ; jge 0x545
    db 07Eh, 0FBh                     ; jle 0x546
    add byte [bp + si - 0x49fc], cl          ; 00 8A 04 B6
    add al, 0xcc                             ; 04 CC
    add al, 0xe0                             ; 04 E0
    add al, 0xa0                             ; 04 A0
    add al, 0xf4                             ; 04 F4
    add al, 0x1c                             ; 04 1C
    add ax, 0x48e                            ; 05 8E 04
    push es                                  ; 06
    add ax, 0x532                            ; 05 32 05
    and bl, byte [si + 0x2f]                 ; 22 5C 2F
    pop bx                                   ; 5B
    pop bp                                   ; 5D
    cmp bh, byte [si + 0x3c]                 ; 3A 7C 3C
    sub di, word ds:[di]                     ; 3E 2B 3D
    cmp bp, word [si]                        ; 3B 2C
    and byte [bx + si], al                   ; 20 00
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
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di - 0x7e7f], al          ; 00 81 81 81
    add word [bx + di], ax                   ; 01 01
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
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add bx, word [bx + si]                   ; 03 18
    add sp, word [bx + si]                   ; 03 20
    add bp, word [si + 3]                    ; 03 6C 03