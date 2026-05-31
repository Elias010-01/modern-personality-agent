; CALENDAR/seg10.asm
; Semantic data - verified byte-exact
BITS 16

    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 005h, 000h, 000h               ; add ax, 0
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], bl                        ; 00 1F
    sbb al, 0x1f                             ; 1C 1F
    push ds                                  ; 1E
    pop ds                                   ; 1F
    push ds                                  ; 1E
    pop ds                                   ; 1F
    pop ds                                   ; 1F
    push ds                                  ; 1E
    pop ds                                   ; 1F
    push ds                                  ; 1E
    pop ds                                   ; 1F
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [di - 0x4f5e], dh               ; 00 B5 A2 B0
    mov bl, 0xb3                             ; B3 B3
    mov al, 0xa2                             ; B0 A2
    mov ch, 0                                ; B5 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [0x3c00], bh                    ; 00 3E 00 3C
    add byte [bx + si], al                   ; 00 00
    add byte [bx], bl                        ; 00 1F
    add byte [bp + di], bh                   ; 00 3B
    db 000h, 05Ah, 000h               ; add byte [bp + si], bl
    db 078h, 000h                     ; js 0x72
    xchg di, ax                              ; 97
    add byte [di - 0x2c00], dh               ; 00 B5 00 D4
    add bl, dh                               ; 00 F3
    add byte [bx + di], dl                   ; 00 11
    add word [bx + si], si                   ; 01 30
    add word [bp + 1], cx                    ; 01 4E 01
    add byte [bx + si], al                   ; 00 00
    and byte [bx + si], ah                   ; 20 20
    and byte [bx + si], ah                   ; 20 20
    and byte [bx + si], ah                   ; 20 20
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 0FFh                           ; FF
    db 07Fh, 000h                     ; jg 0x8f
    add byte [bx + si], al                   ; 00 00
    db 02Eh, 043h                     ; inc bx
    inc cx                                   ; 41
    dec sp                                   ; 4C
    add byte [bp + di + 0x41], al            ; 00 43 41
    dec sp                                   ; 4C
    add byte [si + 0x2a], bl                 ; 00 5C 2A
    db 02Eh, 043h                     ; inc bx
    inc cx                                   ; 41
    dec sp                                   ; 4C
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    inc bx                                   ; 43
    popaw                                    ; 61
    db 06Ch                           ; insb byte es:[di], dx
    push di                                  ; 57
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 04Dh                     ; dec bp
    popaw                                    ; 61
    imul bp, word [bp], 0x6143               ; 69 6E 00 43 61
    db 06Ch                           ; insb byte es:[di], dx
    push di                                  ; 57
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 053h                     ; push bx
    db 075h, 062h                     ; jne 0x11a
    add byte [bp + di + 0x61], al            ; 00 43 61
    db 06Ch                           ; insb byte es:[di], dx
    push di                                  ; 57
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 04Dh                     ; dec bp
    popaw                                    ; 61
    imul bp, word [bp], 0x6143               ; 69 6E 00 43 61
    db 06Ch                           ; insb byte es:[di], dx
    push di                                  ; 57
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 053h                     ; push bx
    db 075h, 062h                     ; jne 0x12f
    add byte [bp + di + 0x61], al            ; 00 43 61
    db 06Ch                           ; insb byte es:[di], dx
    push di                                  ; 57
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 053h                     ; push bx
    db 075h, 062h                     ; jne 0x139
    add byte [bp + di + 0x61], al            ; 00 43 61
    db 06Ch                           ; insb byte es:[di], dx
    push di                                  ; 57
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 053h                     ; push bx
    db 075h, 062h                     ; jne 0x143
    add byte [di + 0x64], al                 ; 00 45 64
    db 069h, 074h, 000h, 045h, 064h   ; imul si, word [si], 0x6445
    db 069h, 074h, 000h, 022h, 05Ch   ; imul si, word [si], 0x5c22
    das                                      ; 2F
    pop bx                                   ; 5B
    pop bp                                   ; 5D
    cmp bh, byte [si + 0x3c]                 ; 3A 7C 3C
    sub di, word ds:[di]                     ; 3E 2B 3D
    cmp bp, word [si]                        ; 3B 2C
    and byte [bx + si], al                   ; 20 00
    add byte [bx + si], al                   ; 00 00
    inc sp                                   ; 44
    db 065h, 076h, 069h               ; jbe 0x16a
    db 063h, 065h, 000h               ; arpl word [di], sp
    db 077h, 069h                     ; ja 0x16f
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x17e
    add byte [bx + si], al                   ; 00 00
    add byte [bx], bl                        ; 00 1F
    add byte [bp + di], bh                   ; 00 3B
    db 000h, 05Ah, 000h               ; add byte [bp + si], bl
    db 078h, 000h                     ; js 0x116
    xchg di, ax                              ; 97
    add byte [di - 0x2c00], dh               ; 00 B5 00 D4
    add bl, dh                               ; 00 F3
    add byte [bx + di], dl                   ; 00 11
    add word [bx + si], si                   ; 01 30
    add word [bp + 1], cx                    ; 01 4E 01
    pop ds                                   ; 1F
    sbb al, 0x1f                             ; 1C 1F
    push ds                                  ; 1E
    pop ds                                   ; 1F
    push ds                                  ; 1E
    pop ds                                   ; 1F
    pop ds                                   ; 1F
    push ds                                  ; 1E
    pop ds                                   ; 1F
    push ds                                  ; 1E
    pop ds                                   ; 1F
    das                                      ; 2F
    cmp al, byte [bx + di + 0x4d]            ; 3A 41 4D
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    push ax                                  ; 50
    dec bp                                   ; 4D
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add al, byte [bp + di]                   ; 02 03
    add byte [bp + si], al                   ; 00 02
    add word [bp + di], ax                   ; 01 03
    add ax, word [bx + di]                   ; 03 01
    add al, byte [bx + si]                   ; 02 00
    imul ax, word [si + 0x61], 0x6574        ; 69 44 61 74 65
    add byte [bx + di + 0x54], ch            ; 00 69 54
    imul bp, word [di + 0x65], 0x6900        ; 69 6D 65 00 69
    dec sp                                   ; 4C
    db 07Ah, 065h                     ; jp 0x1c7
    db 072h, 06Fh                     ; jb 0x1d3
    add byte [bx + di + 0x59], ch            ; 00 69 59
    db 065h, 061h                     ; popaw
    db 072h, 04Fh                     ; jb 0x1ba
    db 066h, 066h, 073h, 065h         ; jae 0x1d4
    db 074h, 000h                     ; je 0x171
    db 073h, 031h                     ; jae 0x1a4
    xor word [di], si                        ; 31 35
    cmp word [bx + si], ax                   ; 39 00
    db 073h, 032h                     ; jae 0x1ab
    xor si, word [di]                        ; 33 35
    cmp word [bx + si], ax                   ; 39 00
    das                                      ; 2F
    add byte [bp + di + 0x44], dh            ; 00 73 44
    popaw                                    ; 61
    db 074h, 065h                     ; je 0x1e9
    add byte [bp + si], bh                   ; 00 3A
    add byte [bp + di + 0x54], dh            ; 00 73 54
    db 069h, 06Dh, 065h, 000h, 000h   ; imul bp, word [di + 0x65], 0
    db 069h, 06Eh, 074h, 06Ch, 000h   ; imul bp, word [bp + 0x74], 0x6c
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
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
    add al, dl                               ; 00 D0
    add ax, 0x5e8                            ; 05 E8 05
    db 0F0h                           ; F0
    add ax, 0x63c                            ; 05 3C 06