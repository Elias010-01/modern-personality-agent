; NEC3550/seg2.asm
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
    add word [si], ax                        ; 01 04
    add byte [bx], dl                        ; 00 17
    add bx, cx                               ; 01 CB
    add byte [bx + si], dl                   ; 00 10
    db 002h, 0C0h                     ; add al, al
    add ax, word [bx + di]                   ; 03 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [si], dl                        ; 00 14
    add byte [bp + si], al                   ; 00 02
    add byte [bp + si + 2], al               ; 00 42 02
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], bl                   ; 00 1A
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 078h, 000h                     ; js 0x3a
    xor byte [bx + si], al                   ; 30 00
    add word [bx + si], 0x102                ; 81 00 02 01
    db 0EAh, 00Ah, 0F0h, 007h, 010h   ; ljmp 0x1007:0xf00a
    add al, byte [bx + si - 4]               ; 02 40 FC
    and al, 0x6d                             ; 24 6D
    pushaw                                   ; 60
    dec di                                   ; 4F
    adc byte [bp + si], al                   ; 10 02
    inc ax                                   ; 40
    cld                                      ; FC
    dec sp                                   ; 4C
    add al, 0x20                             ; 04 20
    add dx, word [bx + si]                   ; 03 10
    add al, byte [bx + si - 4]               ; 02 40 FC
    clc                                      ; F8
    sub al, byte [bx + si + 0x1f]            ; 2A 40 1F
    adc byte [bp + si], al                   ; 10 02
    inc ax                                   ; 40
    cld                                      ; FC
    db 0E0h, 03Dh                     ; loopne 0x9f
    add byte [di], ch                        ; 00 2D
    adc byte [bp + si], al                   ; 10 02
    inc ax                                   ; 40
    cld                                      ; FC
    db 078h, 000h                     ; js 0x6a
    xor byte [bx + si], al                   ; 30 00
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add al, 0                                ; 04 00
    retf                                     ; CB
    add byte [bx], dl                        ; 00 17
    add ax, ax                               ; 01 C0
    add dx, word [bx + si]                   ; 03 10
    add al, byte [bx + di]                   ; 02 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [si], dl                        ; 00 14
    add byte [bp + si], al                   ; 00 02
    add byte [bp + si + 2], al               ; 00 42 02
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], bl                   ; 00 1A
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    xor byte [bx + si], al                   ; 30 00
    db 078h, 000h                     ; js 0xa4
    add word [bx + si], 0x102                ; 81 00 02 01
    db 0F0h                           ; F0
    pop es                                   ; 07
    db 0EAh, 00Ah, 0C0h, 003h, 0F0h   ; ljmp 0xf003:0xc00a
    std                                      ; FD
    pushaw                                   ; 60
    dec di                                   ; 4F
    and al, 0x6d                             ; 24 6D
    rol byte [bp + di], 0xf0                 ; C0 03 F0
    std                                      ; FD
    and byte [bp + di], al                   ; 20 03
    dec sp                                   ; 4C
    add al, 0xc0                             ; 04 C0
    db 003h, 0F0h                     ; add si, ax
    std                                      ; FD
    inc ax                                   ; 40
    pop ds                                   ; 1F
    clc                                      ; F8
    db 02Ah, 0C0h                     ; sub al, al
    db 003h, 0F0h                     ; add si, ax
    std                                      ; FD
    add byte [di], ch                        ; 00 2D
    db 0E0h, 03Dh                     ; loopne 0x109
    rol byte [bp + di], 0xf0                 ; C0 03 F0
    std                                      ; FD
    db 078h, 000h                     ; js 0xd2
    xor byte [bx + si], al                   ; 30 00
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add al, 0                                ; 04 00
    db 064h, 001h, 0CBh               ; add bx, cx
    add byte [bx + si - 0x3ffe], ah          ; 00 A0 02 C0
    add ax, word [bx + di]                   ; 03 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], al                   ; 00 02
    add byte [bp + si + 2], al               ; 00 42 02
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], bl                   ; 00 1A
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 078h, 000h                     ; js 0x10a
    xor byte [bx + si], al                   ; 30 00
    add word [bx + si], 0x102                ; 81 00 02 01
    in al, 0xd                               ; E4 0D
    db 0F0h                           ; F0
    pop es                                   ; 07
    mov al, byte [0x4002]                    ; A0 02 40
    cld                                      ; FC
    db 0E8h, 08Ah, 060h               ; call 0x61a5
    dec di                                   ; 4F
    mov al, byte [0x4002]                    ; A0 02 40
    cld                                      ; FC
    db 078h, 005h                     ; js 0x127
    and byte [bp + di], al                   ; 20 03
    mov al, byte [0x4002]                    ; A0 02 40
    cld                                      ; FC
    mov al, 0x36                             ; B0 36
    inc ax                                   ; 40
    pop ds                                   ; 1F
    mov al, byte [0x4002]                    ; A0 02 40
    cld                                      ; FC
    ror byte [bp], 0x2d                      ; C0 4E 00 2D
    mov al, byte [0x4002]                    ; A0 02 40
    cld                                      ; FC
    db 078h, 000h                     ; js 0x13a
    xor byte [bx + si], al                   ; 30 00
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add al, 0                                ; 04 00
    retf                                     ; CB
    add byte [si + 1], ah                    ; 00 64 01
    rol byte [bp + di], 0xa0                 ; C0 03 A0
    add al, byte [bx + di]                   ; 02 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], al                   ; 00 02
    add byte [bp + si + 2], al               ; 00 42 02
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], bl                   ; 00 1A
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    xor byte [bx + si], al                   ; 30 00
    db 078h, 000h                     ; js 0x174
    add word [bx + si], 0x102                ; 81 00 02 01
    db 0F0h                           ; F0
    pop es                                   ; 07
    in al, 0xd                               ; E4 0D
    rol byte [bp + di], 0x60                 ; C0 03 60
    std                                      ; FD
    pushaw                                   ; 60
    dec di                                   ; 4F
    db 0E8h, 08Ah, 0C0h               ; call 0xffffc20f
    add sp, word [bx + si - 3]               ; 03 60 FD
    and byte [bp + di], al                   ; 20 03
    db 078h, 005h                     ; js 0x191
    rol byte [bp + di], 0x60                 ; C0 03 60
    std                                      ; FD
    inc ax                                   ; 40
    pop ds                                   ; 1F
    mov al, 0x36                             ; B0 36
    rol byte [bp + di], 0x60                 ; C0 03 60
    std                                      ; FD
    add byte [di], ch                        ; 00 2D
    ror byte [bp - 0x40], 3                  ; C0 4E C0 03
    pushaw                                   ; 60
    std                                      ; FD
    db 078h, 000h                     ; js 0x1a2
    xor byte [bx + si], al                   ; 30 00
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 06Eh                           ; outsb dx, byte [si]
    arpl word gs:[bp + di], si               ; 65 63 33
    xor ax, 0x3035                           ; 35 35 30
    db 02Eh, 065h, 078h, 065h         ; js 0x220
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + 0x65], ch                 ; 00 6E 65
    arpl word [bp + di], si                  ; 63 33
    xor ax, 0x3035                           ; 35 35 30
    db 02Eh, 065h, 078h, 065h         ; js 0x254
    add byte [bp + 0x65], ch                 ; 00 6E 65
    arpl word [bp + di], si                  ; 63 33
    xor ax, 0x3035                           ; 35 35 30
    add byte [di], cl                        ; 00 0D
    add ah, bh                               ; 00 FC
    db 003h, 0FCh                     ; add di, sp
    db 003h, 0E0h                     ; add sp, ax
    db 003h, 0DEh                     ; add bx, si
    add dx, word [bx + si]                   ; 03 10
    add ah, byte [bx + si + 0x3102]          ; 02 A0 02 31
    add al, byte [bx + si + 2]               ; 02 40 02
    push ds                                  ; 1E
    add byte [0xf00], bl                     ; 00 1E 00 0F
    add byte [bx], cl                        ; 00 0F
    add byte [bx + si], bl                   ; 00 18
    add byte [bx + si], bl                   ; 00 18
    add byte [bx + si], ch                   ; 00 28
    add byte [bx], cl                        ; 00 0F
    add byte [bp + si + 0x6f], al            ; 00 42 6F
    db 06Ch                           ; insb byte es:[di], dx
    and byte fs:[bx + si + 0x53], dl         ; 64 20 50 53
    add byte [bp + si + 0x6f], al            ; 00 42 6F
    db 06Ch                           ; insb byte es:[di], dx
    and byte fs:[bx + si + 0x53], dl         ; 64 20 50 53
    and byte [bx + di + 0x74], cl            ; 20 49 74
    popaw                                    ; 61
    db 06Ch                           ; insb byte es:[di], dx
    db 069h, 063h, 000h, 043h, 06Fh   ; imul sp, word [bp + di], 0x6f43
    db 075h, 072h                     ; jne 0x2a7
    imul sp, word [di + 0x72], 0x3720        ; 69 65 72 20 37
    xor al, byte [bx + si]                   ; 32 00
    inc bx                                   ; 43
    db 06Fh                           ; outsw dx, word [si]
    db 075h, 072h                     ; jne 0x2b2
    imul sp, word [di + 0x72], 0x3720        ; 69 65 72 20 37
    xor ah, byte [bx + si]                   ; 32 20
    dec bp                                   ; 4D
    db 075h, 06Ch                     ; jne 0x2b6
    db 074h, 069h                     ; je 0x2b5
    db 06Ch                           ; insb byte es:[di], dx
    imul bp, word [bp + 0x67], 0x6175        ; 69 6E 67 75 61
    db 06Ch                           ; insb byte es:[di], dx
    add byte [bp + di + 0x6f], al            ; 00 43 6F
    db 075h, 072h                     ; jne 0x2ca
    imul sp, word [di + 0x72], 0x3120        ; 69 65 72 20 31
    xor byte [bx + si], al                   ; 30 00
    inc bx                                   ; 43
    db 06Fh                           ; outsw dx, word [si]
    db 075h, 072h                     ; jne 0x2d5
    imul sp, word [di + 0x72], 0x3120        ; 69 65 72 20 31
    xor byte [bx + si], ah                   ; 30 20
    dec sp                                   ; 4C
    db 065h, 067h, 061h               ; popaw
    db 06Ch                           ; insb byte es:[di], dx
    db 020h, 041h, 000h               ; and byte [bx + di], al
    inc bx                                   ; 43
    db 06Fh                           ; outsw dx, word [si]
    db 075h, 072h                     ; jne 0x2e8
    imul sp, word [di + 0x72], 0x3120        ; 69 65 72 20 31
    xor byte [bx + si], ah                   ; 30 20
    dec sp                                   ; 4C
    db 065h, 067h, 061h               ; popaw
    db 06Ch                           ; insb byte es:[di], dx
    db 020h, 042h, 000h               ; and byte [bp + si], al
    push bx                                  ; 53
    arpl word [bp + si + 0x69], si           ; 63 72 69
    db 070h, 074h                     ; jo 0x2ff
    and byte [bx + di], dh                   ; 20 31
    xor ah, byte [bx + si]                   ; 32 20
    dec bp                                   ; 4D
    db 075h, 06Ch                     ; jne 0x2fe
    db 074h, 069h                     ; je 0x2fd
    db 06Ch                           ; insb byte es:[di], dx
    imul bp, word [bp + 0x67], 0x6175        ; 69 6E 67 75 61
    db 06Ch                           ; insb byte es:[di], dx
    add byte [di + 0x6c], al                 ; 00 45 6C
    imul si, word [si + 0x65], 0x3120        ; 69 74 65 20 31
    xor al, byte [bx + si]                   ; 32 00
    inc bp                                   ; 45
    db 06Ch                           ; insb byte es:[di], dx
    imul si, word [si + 0x65], 0x3120        ; 69 74 65 20 31
    xor ah, byte [bx + si]                   ; 32 20
    inc di                                   ; 47
    db 065h, 072h, 06Dh               ; jb 0x31f
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    add byte [di + 0x6c], al                 ; 00 45 6C
    imul si, word [si + 0x65], 0x3120        ; 69 74 65 20 31
    xor ah, byte [bx + si]                   ; 32 20
    dec bp                                   ; 4D
    db 075h, 06Ch                     ; jne 0x32d
    db 074h, 069h                     ; je 0x32c
    db 06Ch                           ; insb byte es:[di], dx
    imul bp, word [bp + 0x67], 0x6175        ; 69 6E 67 75 61
    db 06Ch                           ; insb byte es:[di], dx
    add byte [di + 0x6d], al                 ; 00 45 6D
    db 070h, 065h                     ; jo 0x334
    db 072h, 06Fh                     ; jb 0x340
    db 072h, 020h                     ; jb 0x2f3
    push ax                                  ; 50
    push bx                                  ; 53
    add byte [bx + 0x6f], al                 ; 00 47 6F
    db 074h, 068h                     ; je 0x342
    imul sp, word [bp + di + 0x20], 0x3231   ; 69 63 20 31 32
    and byte [si + 0x65], cl                 ; 20 4C 65
    db 067h, 061h                     ; popaw
    db 06Ch                           ; insb byte es:[di], dx
    db 020h, 042h, 000h               ; and byte [bp + si], al
    inc di                                   ; 47
    db 06Fh                           ; outsw dx, word [si]
    db 074h, 068h                     ; je 0x354
    imul sp, word [bp + di + 0x20], 0x3231   ; 69 63 20 31 32
    and byte [di + 0x75], cl                 ; 20 4D 75
    db 06Ch                           ; insb byte es:[di], dx
    db 074h, 069h                     ; je 0x360
    db 06Ch                           ; insb byte es:[di], dx
    imul bp, word [bp + 0x67], 0x6175        ; 69 6E 67 75 61
    db 06Ch                           ; insb byte es:[di], dx
    db 020h, 041h, 000h               ; and byte [bx + di], al
    dec di                                   ; 4F
    inc bx                                   ; 43
    push dx                                  ; 52
    sub ax, 0x2041                           ; 2D 41 20
    xor word [bp + si], si                   ; 31 32
    add byte [di + 0x6c], al                 ; 00 45 6C
    imul si, word [si + 0x65], 0x3120        ; 69 74 65 20 31
    xor ah, byte [bx + si]                   ; 32 20
    inc dx                                   ; 42
    db 072h, 069h                     ; jb 0x37f
    db 074h, 069h                     ; je 0x381
    db 073h, 068h                     ; jae 0x382
    add byte [bx + si + 0x69], dl            ; 00 50 69
    arpl word [bx + di + 0x20], sp           ; 63 61 20
    xor word [bx + si], si                   ; 31 30
    and byte [bp + si + 0x72], al            ; 20 42 72
    imul si, word [si + 0x69], 0x6873        ; 69 74 69 73 68
    add byte [bx + si + 0x69], dl            ; 00 50 69
    arpl word [bx + di + 0x20], sp           ; 63 61 20
    xor word [bx + si], si                   ; 31 30
    and byte [bp + 0x72], al                 ; 20 46 72
    db 065h, 06Eh                     ; outsb dx, byte gs:[si]
    db 063h, 068h, 000h               ; arpl word [bx + si], bp
    push ax                                  ; 50
    imul sp, word [bp + di + 0x61], 0x3120   ; 69 63 61 20 31
    xor byte [bx + si], ah                   ; 30 20
    inc di                                   ; 47
    db 065h, 072h, 06Dh               ; jb 0x3b3
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    add byte [bx + si + 0x69], dl            ; 00 50 69
    arpl word [bx + di + 0x20], sp           ; 63 61 20
    xor word [bx + si], si                   ; 31 30
    and byte [di + 0x75], cl                 ; 20 4D 75
    db 06Ch                           ; insb byte es:[di], dx
    db 074h, 069h                     ; je 0x3bf
    db 06Ch                           ; insb byte es:[di], dx
    imul bp, word [bp + 0x67], 0x6175        ; 69 6E 67 75 61
    db 06Ch                           ; insb byte es:[di], dx
    db 020h, 041h, 000h               ; and byte [bx + di], al
    dec bx                                   ; 4B
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    popaw                                    ; 61
    add byte [bx + si + 0x69], dl            ; 00 50 69
    arpl word [bx + di + 0x20], sp           ; 63 61 20
    xor word [bx + si], si                   ; 31 30
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    add byte [bp + si], al                   ; 00 02
    add byte [bx + si], al                   ; 00 00
    or al, byte [bx + si]                    ; 0A 00
    add byte [bx + si], al                   ; 00 00
    or al, byte [bx + si]                    ; 0A 00
    add byte [bp + si], al                   ; 00 02
    add byte [bx + si], al                   ; 00 00
    or al, 0                                 ; 0C 00
    add byte [bp + si], al                   ; 00 02
    push cs                                  ; 0E
    add byte [bx + si], al                   ; 00 00
    add al, byte [bx + si + 0xf]             ; 02 40 0F
    adc byte [bx + si], al                   ; 10 00
    add byte [bx + si], al                   ; 00 00
    adc byte [bx + si], al                   ; 10 00
    add byte [0x16], al                      ; 00 06 16 00
    add byte [si], al                        ; 00 04
    sbb al, byte [bx + si]                   ; 1A 00
    add byte [0x20], al                      ; 00 06 20 00
    add byte [si], al                        ; 00 04
    and al, 0                                ; 24 00
    add byte [bx + si], al                   ; 00 00
    and al, 0                                ; 24 00
    add byte [bx + si], al                   ; 00 00
    and al, 0                                ; 24 00
    add byte [bx + si], al                   ; 00 00
    and al, 0                                ; 24 00
    add byte [bx + si], al                   ; 00 00
    and al, 0                                ; 24 00
    add byte [bp + si], al                   ; 00 02
    add byte es:[bx + si], al                ; 26 00 00
    add ch, byte [bx + si]                   ; 02 28
    add byte [bp + di], al                   ; 00 03
    add byte [bx + si], ch                   ; 00 28
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], ch                   ; 00 28
    add byte [0], al                         ; 00 06 00 00
    add byte [bx + si], ch                   ; 00 28
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], ch                   ; 00 28
    add byte [bp + si], al                   ; 00 02
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], ch                   ; 00 28
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], ch                   ; 00 28
    add byte [0], al                         ; 00 06 00 00
    add byte [bx + si], ch                   ; 00 28
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], ch                   ; 00 28
    add byte [bx + si], al                   ; 00 00
    add al, byte [bx + si]                   ; 02 00
    add byte [bp + si], ch                   ; 00 2A
    add byte [bx + si], al                   ; 00 00
    add ch, byte [si]                        ; 02 2C
    add byte [bx + si], al                   ; 00 00
    add al, byte [bx + si]                   ; 02 00
    add byte [0], ch                         ; 00 2E 00 00
    add bl, byte [bp + di]                   ; 02 1B
    push dx                                  ; 52
    sbb dx, word [si + 0x1b]                 ; 1B 54 1B
    push dx                                  ; 52
    sbb dx, word [si + 0x1b]                 ; 1B 54 1B
    inc bx                                   ; 43
    sbb ax, word [bx + di + 0x1b]            ; 1B 41 1B
    xor bl, byte [bp + di]                   ; 32 1B
    pop bp                                   ; 5D
    sbb bx, word [si + 0x41]                 ; 1B 5C 41
    sbb bx, word [si + 0x45]                 ; 1B 5C 45
    sbb bx, word [si + 0x46]                 ; 1B 5C 46
    or ax, 0x5c1b                            ; 0D 1B 5C
    inc dx                                   ; 42
    sbb bx, word [si + 0x45]                 ; 1B 5C 45
    sbb bx, word [si + 0x46]                 ; 1B 5C 46
    or ax, 0x471b                            ; 0D 1B 47
    sbb cx, word [bx + si + 0x1b]            ; 1B 48 1B
    cmp bx, word [bp + di]                   ; 3B 1B
    cmp bl, byte [bp + di]                   ; 3A 1B
    cmp bl, byte [bp + di]                   ; 3A 1B
    cmp ax, word [bx + si]                   ; 3B 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si + 0x43af], al          ; 00 80 AF 43
    sub al, 0x75                             ; 2C 75
    and ah, byte [di + 0x27]                 ; 22 65 27
    popaw                                    ; 61
    pop si                                   ; 5E
    popaw                                    ; 61
    and ah, byte [bx + di + 0x60]            ; 22 61 60
    popaw                                    ; 61
    add byte [bp + di + 0x2c], ah            ; 00 63 2C
    db 065h, 05Eh                     ; pop si
    and ah, byte gs:[di + 0x60]              ; 65 22 65 60
    imul sp, word [bp + si], 0x5e69          ; 69 22 69 5E
    imul sp, word [bx + si + 0x41], 0x4122   ; 69 60 41 22 41
    add byte [di + 0x27], al                 ; 00 45 27
    popaw                                    ; 61
    db 000h, 041h, 000h               ; add byte [bx + di], al
    db 06Fh                           ; outsw dx, word [si]
    pop si                                   ; 5E
    db 06Fh                           ; outsw dx, word [si]
    and ch, byte [bx + 0x60]                 ; 22 6F 60
    db 075h, 05Eh                     ; jne 0x4c8
    db 075h, 060h                     ; jne 0x4cc
    db 079h, 022h                     ; jns 0x490
    dec di                                   ; 4F
    and dl, byte [di + 0x22]                 ; 22 55 22
    arpl word [bx], bp                       ; 63 2F
    and ax, word [bx + si]                   ; 23 00
    pop cx                                   ; 59
    db 03Dh, 050h, 000h               ; cmp ax, 0x50
    db 066h, 000h, 061h, 027h         ; add byte [bx + di + 0x27], ah
    imul sp, word [bx], 0x276f               ; 69 27 6F 27
    db 075h, 027h                     ; jne 0x4ab
    db 06Eh                           ; outsb dx, byte [si]
    db 07Eh, 04Eh                     ; jle 0x4d5
    db 07Eh, 061h                     ; jle 0x4ea
    pop di                                   ; 5F
    db 06Fh                           ; outsw dx, word [si]
    pop di                                   ; 5F
    test al, 0                               ; A8 00
    test ax, 0xaa00                          ; A9 00 AA
    add byte [bp + di - 0x5400], ch          ; 00 AB 00 AC
    add byte [di + 0x3c00], ch               ; 00 AD 00 3C
    cmp ax, 0x3d3e                           ; 3D 3E 3D
    sbb al, byte [bp + si]                   ; 1A 02
    and al, byte [bp + si]                   ; 22 02
    xor word [bp + si], ax                   ; 31 02
    cmp al, 2                                ; 3C 02
    push sp                                  ; 54
    add bl, byte [bx + 2]                    ; 02 5F 02
    db 072h, 002h                     ; jb 0x4ac
    test word [bp + si], ax                  ; 85 02
    pushf                                    ; 9C
    add ah, byte [di - 0x4afe]               ; 02 A5 02 B5
    db 002h, 0CBh                     ; add cl, bl
    db 002h, 0D6h                     ; add dl, dh
    db 002h, 0E8h                     ; add ch, al
    add al, byte [bx + di]                   ; 02 01
    add cx, word [bp + si]                   ; 03 0A
    add bx, word [bp + di]                   ; 03 1B
    add bp, word [bp + di]                   ; 03 2B
    add di, word [bp + si]                   ; 03 3A
    add cx, word [bx + di + 3]               ; 03 49 03
    pushaw                                   ; 60
    add sp, word [di + 3]                    ; 03 65 03
    and byte [bx + di], ah                   ; 20 21
    arpl word [si + 0x5f], cx                ; 63 4C 5F
    pop cx                                   ; 59
    db 07Ch, 05Fh                     ; jl 0x52f
    and bl, byte [bx + 0x5f]                 ; 22 5F 5F
    and ah, byte [bx + di + 0x2d]            ; 22 61 2D
    pop di                                   ; 5F
    pop di                                   ; 5F
    pop di                                   ; 5F
    pop di                                   ; 5F
    pop di                                   ; 5F
    pop di                                   ; 5F
    pop di                                   ; 5F
    pop di                                   ; 5F
    pop di                                   ; 5F
    pop di                                   ; 5F
    sub al, 0x5f                             ; 2C 5F
    pop di                                   ; 5F
    and al, byte [bx + di + 0x41]            ; 22 41 41
    pop di                                   ; 5F
    aas                                      ; 3F
    inc cx                                   ; 41
    inc cx                                   ; 41
    inc cx                                   ; 41
    inc cx                                   ; 41
    inc cx                                   ; 41
    inc cx                                   ; 41
    pop di                                   ; 5F
    inc bx                                   ; 43
    inc bp                                   ; 45
    inc bp                                   ; 45
    inc bp                                   ; 45
    inc bp                                   ; 45
    dec cx                                   ; 49
    dec cx                                   ; 49
    dec cx                                   ; 49
    dec cx                                   ; 49
    inc sp                                   ; 44
    dec si                                   ; 4E
    dec di                                   ; 4F
    dec di                                   ; 4F
    dec di                                   ; 4F
    dec di                                   ; 4F
    dec di                                   ; 4F
    pop di                                   ; 5F
    dec di                                   ; 4F
    push bp                                  ; 55
    push bp                                  ; 55
    push bp                                  ; 55
    push bp                                  ; 55
    pop cx                                   ; 59
    pop di                                   ; 5F
    pop di                                   ; 5F
    popaw                                    ; 61
    popaw                                    ; 61
    popaw                                    ; 61
    popaw                                    ; 61
    popaw                                    ; 61
    popaw                                    ; 61
    pop di                                   ; 5F
    arpl word [di + 0x65], sp                ; 63 65 65
    db 065h, 065h, 060h               ; pushaw
    imul bx, word [bp + 0x69], 0x6e64        ; 69 5E 69 64 6E
    db 06Fh                           ; outsw dx, word [si]
    db 06Fh                           ; outsw dx, word [si]
    db 06Fh                           ; outsw dx, word [si]
    db 06Fh                           ; outsw dx, word [si]
    db 06Fh                           ; outsw dx, word [si]
    pop di                                   ; 5F
    das                                      ; 2F
    db 075h, 075h                     ; jne 0x598
    db 075h, 075h                     ; jne 0x59a
    db 079h, 05Fh                     ; jns 0x586
    db 079h, 06Eh                     ; jns 0x597
    db 003h, 0F6h                     ; add si, si
    add di, word [bp + si]                   ; 03 3A
    add al, 0x6e                             ; 04 6E
    arpl word gs:[bp + di], si               ; 65 63 33
    xor ax, 0x3035                           ; 35 35 30
    add byte [bx + si], cl                   ; 00 08
    add byte [bp + si], cl                   ; 00 0A
    add byte [bp + si], cl                   ; 00 0A
    add byte [di], cl                        ; 00 0D
    add byte [di], cl                        ; 00 0D
    add byte [si + 0x74], ah                 ; 00 64 74
    dec bp                                   ; 4D
    dec di                                   ; 4F
    inc sp                                   ; 44
    inc bp                                   ; 45