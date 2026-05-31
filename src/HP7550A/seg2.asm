; HP7550A/seg2.asm
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
    add word [bx + si], ax                   ; 01 00
    add dh, bh                               ; 00 FE
    add ah, al                               ; 00 C4
    add byte [bp + si - 0x5fd9], bh          ; 00 BA 27 A0
    push ds                                  ; 1E
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    or word [bx + si], ax                    ; 09 00
    add byte ss:[bx + si], al                ; 36 00 00
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], cl                   ; 00 09
    add byte [bx + si], al                   ; 00 00
    add byte [bx - 0x5200], ch               ; 00 AF 00 AE
    add byte [bp + di - 0x1c00], cl          ; 00 8B 00 E4
    db 01Dh, 001h, 000h               ; sbb ax, 1
    add al, byte [bx + si]                   ; 02 00
    or al, byte [bx + si]                    ; 0A 00
    or al, byte [bx + si]                    ; 0A 00
    push cs                                  ; 0E
    add byte [bx + si + 2], bl               ; 00 58 02
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    clc                                      ; F8
    db 003h, 0F8h                     ; add di, ax
    add ax, word [bx + di]                   ; 03 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    dec cx                                   ; 49
    dec si                                   ; 4E
    cmp cx, word [bx + di + 0x4d]            ; 3B 49 4D
    xor byte [bp + di], bh                   ; 30 3B
    add byte [si + 0x49], al                 ; 00 44 49
    cmp ax, word [bx + si]                   ; 3B 00
    inc sp                                   ; 44
    dec cx                                   ; 49
    xor byte [si], ch                        ; 30 2C
    sub ax, 0x3b31                           ; 2D 31 3B
    add byte [bp + 0x53], dl                 ; 00 56 53
    add byte [bp + 0x53], dl                 ; 00 56 53
    cmp ax, word [bx + si]                   ; 3B 00
    inc si                                   ; 46
    push bx                                  ; 53
    add byte [bp + 0x53], al                 ; 00 46 53
    cmp ax, word [bx + si]                   ; 3B 00
    inc di                                   ; 47
    dec bp                                   ; 4D
    xor word [bx + di], si                   ; 31 31
    aaa                                      ; 37
    xor si, word [bp + si]                   ; 33 32
    sub al, 0x30                             ; 2C 30
    sub al, 0x30                             ; 2C 30
    sub al, 0x34                             ; 2C 34
    xor al, 0x3b                             ; 34 3B
    push ax                                  ; 50
    inc cx                                   ; 41
    xor byte [si], ch                        ; 30 2C
    xor byte [bp + di], bh                   ; 30 3B
    add byte [bx + si], al                   ; 00 00
    push ax                                  ; 50
    push bp                                  ; 55
    cmp ax, word [bx + si]                   ; 3B 00
    dec cx                                   ; 49
    push di                                  ; 57
    cmp dx, word [bp + di + 0x50]            ; 3B 53 50
    cmp ax, word [bx + si]                   ; 3B 00
    push ax                                  ; 50
    inc di                                   ; 47
    cmp ax, word [bx + si]                   ; 3B 00
    push ax                                  ; 50
    inc cx                                   ; 41
    add byte [si + 0x46], al                 ; 00 44 46
    cmp ax, word [bx + si]                   ; 3B 00
    add di, word [bp + di]                   ; 03 3B
    push ax                                  ; 50
    push bp                                  ; 55
    cmp ax, word [bx + si]                   ; 3B 00
    dec cx                                   ; 49
    push di                                  ; 57
    cmp dx, word [bp + di + 0x50]            ; 3B 53 50
    cmp ax, word [bx + si]                   ; 3B 00
    push ax                                  ; 50
    inc di                                   ; 47
    cmp ax, word [bx + si]                   ; 3B 00
    push ax                                  ; 50
    inc cx                                   ; 41
    add byte [bx + si + 0x50], cl            ; 00 48 50
    and byte [bx], dh                        ; 20 37
    xor ax, 0x3035                           ; 35 35 30
    inc cx                                   ; 41
    add byte [bx + si + 0x50], cl            ; 00 48 50
    and byte [bx], dh                        ; 20 37
    xor ax, 0x3035                           ; 35 35 30
    inc cx                                   ; 41
    add byte [bx + si + 0x50], cl            ; 00 48 50
    and byte [bx], dh                        ; 20 37
    xor ax, 0x3035                           ; 35 35 30
    inc cx                                   ; 41
    add byte [bx + si + 0x50], cl            ; 00 48 50
    push ax                                  ; 50
    db 06Ch                           ; insb byte es:[di], dx
    db 06Fh                           ; outsw dx, word [si]
    db 074h, 064h                     ; je 0x162
    db 074h, 04Dh                     ; je 0x14d
    dec di                                   ; 4F
    inc sp                                   ; 44
    inc bp                                   ; 45
    add byte [bx + si + 0x50], cl            ; 00 48 50
    and byte [bx], dh                        ; 20 37
    xor ax, 0x3035                           ; 35 35 30
    inc cx                                   ; 41
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    ltr word [bx + si]                       ; 0F 00 18
    add byte [0x2400], bl                    ; 00 1E 00 24
    add byte [di], ch                        ; 00 2D
    add byte [bp + di], dh                   ; 00 33
    add byte [bx + di], bh                   ; 00 39
    db 000h, 042h, 000h               ; add byte [bp + si], al
    dec bp                                   ; 4D
    db 06Fh                           ; outsw dx, word [si]
    db 064h, 065h, 072h, 06Eh         ; jb 0x196
    add byte [bx + si], al                   ; 00 00
    test word [bx + si], ax                  ; 85 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    db 000h, 090h, 001h, 000h         ; add byte [bx + si + 1], dl
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    xor byte [bx + di], al                   ; 30 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], ah                   ; 00 20
    db 07Fh, 00Eh                     ; jg 0x158
    add byte [bx + di], al                   ; 00 01
    add byte [bp + di], dh                   ; 00 33
    add byte [bx + si], al                   ; 00 00
    add byte [si], bh                        ; 00 3C
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], bh                        ; 00 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    add byte [di + 0x6f], cl                 ; 00 4D 6F
    db 064h, 065h, 072h, 06Eh         ; jb 0x1da
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    nop                                      ; 90
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    xor word [di + 0x6f], cx                 ; 31 4D 6F
    db 064h, 065h, 072h, 06Eh         ; jb 0x1f6
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    nop                                      ; 90
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    and byte [bx + 0xe], bh                  ; 20 7F 0E
    add byte [bx + si], dh                   ; 00 30
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si + 0x50], cl            ; 00 48 50
    and byte [bx], dh                        ; 20 37
    xor ax, 0x3035                           ; 35 35 30
    inc cx                                   ; 41
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    add bh, bh                               ; 00 FF
    add bh, bh                               ; 00 FF
    add byte [bx + si], al                   ; 00 00
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    db 0FFh, 080h, 000h, 000h         ; inc word [bx + si]
    rol byte [bx + si], 0xff                 ; C0 00 FF
    add bh, bh                               ; 00 FF
    rol byte [bx + si], 0                    ; C0 00 00
    push bx                                  ; 53
    push ax                                  ; 50
    add byte [bx + di + 0x57], cl            ; 00 49 57
    add byte [bx + di + 0x57], cl            ; 00 49 57
    add byte [bp + di], al                   ; 00 03
    cmp ax, word [bx + si]                   ; 3B 00
    push ax                                  ; 50
    push dx                                  ; 52
    add byte [bx + si], dh                   ; 00 30
    sub al, 0x2d                             ; 2C 2D
    add byte [si], ch                        ; 00 2C
    xor byte [bx + si], al                   ; 30 00
    cmp dx, word [bx + si + 0x41]            ; 3B 50 41
    cmp cx, word [si + 0x42]                 ; 3B 4C 42
    add byte [bx + si + 0x47], dl            ; 00 50 47
    cmp ax, word [bx + si]                   ; 3B 00
    dec ax                                   ; 48
    push ax                                  ; 50
    and byte [bx], dh                        ; 20 37
    xor ax, 0x3035                           ; 35 35 30
    inc cx                                   ; 41
    add byte [bx + si + 0x6c], dl            ; 00 50 6C
    db 065h, 061h                     ; popaw
    db 073h, 065h                     ; jae 0x271
    and byte [si + 0x6f], ch                 ; 20 6C 6F
    popaw                                    ; 61
    and byte fs:[bx + di + 0x20], ah         ; 64 20 61 20
    db 06Eh                           ; outsb dx, byte [si]
    db 065h, 077h, 020h               ; ja 0x238
    db 073h, 068h                     ; jae 0x282
    db 065h, 065h, 074h, 020h         ; je 0x23e
    db 06Fh                           ; outsw dx, word [si]
    db 066h, 020h, 070h, 061h         ; and byte [bx + si + 0x61], dh
    db 070h, 065h                     ; jo 0x28a
    db 072h, 02Eh                     ; jb 0x255
    add byte [bx + si + 0x55], dl            ; 00 50 55
    xor ch, byte [si]                        ; 32 2C
    xor word [bp + di], di                   ; 31 3B
    add byte [bx + di + 0x41], al            ; 00 41 41
    add byte [si + 0x54], cl                 ; 00 4C 54
    add byte [bx + si + 0x44], dl            ; 00 50 44
    cmp ax, word [bx + si]                   ; 3B 00
    inc cx                                   ; 41
    inc cx                                   ; 41
    add byte [si + 0x54], cl                 ; 00 4C 54
    cmp ax, word [bx + si]                   ; 3B 00
    push ax                                  ; 50
    dec bp                                   ; 4D
    xor byte [bp + di], bh                   ; 30 3B
    push ax                                  ; 50
    inc sp                                   ; 44
    cmp ax, word [bx + si]                   ; 3B 00
    inc cx                                   ; 41
    inc cx                                   ; 41
    add byte [bx + si + 0x4d], dl            ; 00 50 4D
    xor bh, byte [bp + di]                   ; 32 3B
    add byte [bp + 0x50], al                 ; 00 46 50
    cmp ax, word [bx + si]                   ; 3B 00
    push bx                                  ; 53
    inc bx                                   ; 43
    cmp cx, word [bx + di + 0x50]            ; 3B 49 50
    cmp ax, word [bx + si]                   ; 3B 00
    push ax                                  ; 50
    push bp                                  ; 55
    add byte [di + 0x57], al                 ; 00 45 57
    add byte [bp + 0x50], al                 ; 00 46 50
    cmp ax, word [bx + si]                   ; 3B 00
    push bx                                  ; 53
    inc bx                                   ; 43
    xor byte [si], ch                        ; 30 2C
    xor ch, byte [si]                        ; 32 2C
    xor byte [si], ch                        ; 30 2C
    xor bh, byte [bp + di]                   ; 32 3B
    add byte [bx + 0x47], dl                 ; 00 57 47
    add byte [di + 0x57], al                 ; 00 45 57
    add byte [bp + di + 0x43], dl            ; 00 53 43
    cmp cx, word [bx + di + 0x50]            ; 3B 49 50
    cmp ax, word [bx + si]                   ; 3B 00
    push ax                                  ; 50
    push bp                                  ; 55
    add byte [si + 0x54], cl                 ; 00 4C 54
    add byte [bx + si + 0x44], dl            ; 00 50 44
    add byte [si + 0x54], cl                 ; 00 4C 54
    cmp ax, word [bx + si]                   ; 3B 00
    push ax                                  ; 50
    push bp                                  ; 55
    cmp ax, word [bx + si]                   ; 3B 00
    push bx                                  ; 53
    push ax                                  ; 50
    add byte [bx + si + 0x55], dl            ; 00 50 55
    add byte [bx + si + 0x44], dl            ; 00 50 44
    add byte [bx + si + 0x55], dl            ; 00 50 55
    xor byte [si], ch                        ; 30 2C
    xor byte [bp + di], bh                   ; 30 3B
    add byte [di + 0x41], al                 ; 00 45 41
    xor ch, byte [si]                        ; 32 2C
    xor bh, byte [bp + di]                   ; 32 3B
    add byte [bp + 0x50], al                 ; 00 46 50
    cmp ax, word [bx + si]                   ; 3B 00
    push bx                                  ; 53
    inc bx                                   ; 43
    xor byte [si], ch                        ; 30 2C
    xor ch, byte [si]                        ; 32 2C
    xor byte [si], ch                        ; 30 2C
    xor bh, byte [bp + di]                   ; 32 3B
    push dx                                  ; 52
    inc cx                                   ; 41
    xor ch, byte [si]                        ; 32 2C
    xor bh, byte [bp + di]                   ; 32 3B
    add byte [di + 0x41], al                 ; 00 45 41
    xor ch, byte [si]                        ; 32 2C
    xor bh, byte [bp + di]                   ; 32 3B
    add byte [bp + di + 0x43], dl            ; 00 53 43
    cmp cx, word [bx + di + 0x50]            ; 3B 49 50
    cmp ax, word [bx + si]                   ; 3B 00
    push ax                                  ; 50
    push bp                                  ; 55
    add byte [bx + si + 0x4d], dl            ; 00 50 4D
    xor byte [bp + di], bh                   ; 30 3B
    push ax                                  ; 50
    inc sp                                   ; 44
    cmp ax, word [bx + si]                   ; 3B 00
    push ax                                  ; 50
    inc cx                                   ; 41
    add byte [bx + si + 0x4d], dl            ; 00 50 4D
    xor word [bp + di], di                   ; 31 3B
    add byte [bx + si + 0x4d], dl            ; 00 50 4D
    xor bh, byte [bp + di]                   ; 32 3B
    add byte [bp + 0x50], al                 ; 00 46 50
    cmp ax, word [bx + si]                   ; 3B 00
    push bx                                  ; 53
    dec bp                                   ; 4D
    sub bh, byte [bp + di]                   ; 2A 3B
    add byte [bx + si + 0x55], dl            ; 00 50 55
    cmp ax, word [bx + si]                   ; 3B 00
    push ax                                  ; 50
    inc cx                                   ; 41
    add byte [bp + di + 0x4d], dl            ; 00 53 4D
    cmp ax, word [bx + si]                   ; 3B 00
    push ax                                  ; 50
    push bp                                  ; 55
    xor word [si], bp                        ; 31 2C
    xor word [bp + di], di                   ; 31 3B
    push ax                                  ; 50
    dec bp                                   ; 4D
    xor byte [bp + di], bh                   ; 30 3B
    inc bx                                   ; 43
    dec cx                                   ; 49
    xor word [bp + di], di                   ; 31 3B
    push ax                                  ; 50
    dec bp                                   ; 4D
    xor bh, byte [bp + di]                   ; 32 3B
    add byte [bp + 0x50], al                 ; 00 46 50
    cmp ax, word [bx + si]                   ; 3B 00
    push bx                                  ; 53
    inc bx                                   ; 43
    cmp cx, word [bx + di + 0x50]            ; 3B 49 50
    cmp ax, word [bx + si]                   ; 3B 00
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add byte [bp + di], al                   ; 00 03
    add byte [si], al                        ; 00 04
    add byte [bp + si], al                   ; 00 02
    add byte [bx + di], al                   ; 00 01
    add byte [di], al                        ; 00 05
    add byte [si], al                        ; 00 04
    add byte [0x400], al                     ; 00 06 00 04
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], al                   ; 00 02
    add byte [bp + di], al                   ; 00 03
    add byte [di], al                        ; 00 05
    add byte [bx], al                        ; 00 07
    add byte [bx + di], cl                   ; 00 09
    add byte [bp + si], cl                   ; 00 0A
    add byte [si], cl                        ; 00 0C
    add byte [0x1000], cl                    ; 00 0E 00 10
    add byte [bp + si], dl                   ; 00 12
    add byte [bp + di], dl                   ; 00 13
    add byte [di], dl                        ; 00 15
    add byte [bx], dl                        ; 00 17
    add byte [bx + di], bl                   ; 00 19
    add byte [bp + di], bl                   ; 00 1B
    add byte [di], bl                        ; 00 1D
    add byte [bx], bl                        ; 00 1F
    add byte [bx + si], ah                   ; 00 20
    add byte [bp + si], ah                   ; 00 22
    add byte [si], ah                        ; 00 24
    add byte [0x2800], ah                    ; 00 26 00 28
    add byte [bp + si], ch                   ; 00 2A
    add byte [di], ch                        ; 00 2D
    add byte [bx], ch                        ; 00 2F
    add byte [bx + di], dh                   ; 00 31
    add byte [bp + di], dh                   ; 00 33
    add byte [di], dh                        ; 00 35
    add byte [bx], dh                        ; 00 37
    add byte [bp + si], bh                   ; 00 3A
    add byte [si], bh                        ; 00 3C
    add byte [0x4100], bh                    ; 00 3E 00 41
    db 000h, 043h, 000h               ; add byte [bp + di], al
    inc si                                   ; 46
    db 000h, 049h, 000h               ; add byte [bx + di], cl
    dec bx                                   ; 4B
    add byte [bp], cl                        ; 00 4E 00
    push cx                                  ; 51
    db 000h, 054h, 000h               ; add byte [si], dl
    push di                                  ; 57
    db 000h, 05Ah, 000h               ; add byte [bp + si], bl
    pop bp                                   ; 5D
    db 000h, 061h, 000h               ; add byte [bx + di], ah
    db 064h, 000h, 068h, 000h         ; add byte fs:[bx + si], ch
    imul ax, word [bx + si], 0x6f            ; 6B 00 6F
    db 000h, 073h, 000h               ; add byte [bp + di], dh
    db 077h, 000h                     ; ja 0x390
    db 07Bh, 000h                     ; jnp 0x392
    add byte [bx + si], 0x85                 ; 80 00 85
    add byte [bp + si - 0x7100], cl          ; 00 8A 00 8F
    add byte [si - 0x6600], dl               ; 00 94 00 9A
    add byte [bx + si - 0x5a00], ah          ; 00 A0 00 A6
    add byte [di - 0x4c00], ch               ; 00 AD 00 B4
    add byte [si - 0x3c00], bh               ; 00 BC 00 C4
    add ch, cl                               ; 00 CD
    add bh, dl                               ; 00 D7
    add cl, ah                               ; 00 E1
    add ah, ch                               ; 00 EC
    add al, bh                               ; 00 F8
    add byte [di], al                        ; 00 05
    add word [bp + di], dx                   ; 01 13
    add word [bp + si], sp                   ; 01 22
    add word [bp + di], si                   ; 01 33
    add word [bx + 1], ax                    ; 01 47 01
    pop bp                                   ; 5D
    add word [di + 1], si                    ; 01 75 01
    xchg cx, ax                              ; 91
    add word [bx + di - 0x29ff], si          ; 01 B1 01 D6
    add word [bp + si], ax                   ; 01 02
    add dh, byte [bx]                        ; 02 37
    add dh, byte [bx + 2]                    ; 02 77 02
    enter 0x2e02, 3                          ; C8 02 2E 03
    mov bh, 3                                ; B7 03
    db 077h, 004h                     ; ja 0x3da
    xchg si, ax                              ; 96
    add ax, 0x774                            ; 05 74 07
    das                                      ; 2F
    or sp, word [bx + di + 0x16]             ; 0B 61 16
    push bx                                  ; 53
    inc bx                                   ; 43
    cmp ax, word [bx + si]                   ; 3B 00
    inc si                                   ; 46
    push sp                                  ; 54
    add byte [si + 0x54], cl                 ; 00 4C 54
    add byte [di + 0x50], al                 ; 00 45 50
    cmp ax, word [bx + si]                   ; 3B 00
    dec sp                                   ; 4C
    push sp                                  ; 54
    cmp ax, word [bx + si]                   ; 3B 00
    dec cx                                   ; 49
    push ax                                  ; 50
    add byte [bp + di + 0x43], dl            ; 00 53 43
    xor byte [si], ch                        ; 30 2C
    xor ch, byte [si]                        ; 32 2C
    xor byte [si], ch                        ; 30 2C
    xor bh, byte [bp + di]                   ; 32 3B
    add byte [bx + si + 0x55], dl            ; 00 50 55
    cmp ax, word [bx + si]                   ; 3B 00
    push ax                                  ; 50
    inc cx                                   ; 41
    add byte [bx + si + 0x44], dl            ; 00 50 44
    cmp ax, word [bx + si]                   ; 3B 00
    push ax                                  ; 50
    push bp                                  ; 55
    cmp ax, word [bx + si]                   ; 3B 00
    push bx                                  ; 53
    dec cx                                   ; 49
    add byte [0x30], ch                      ; 00 2E 30 00
    add byte cs:[si], ch                     ; 2E 00 2C
    add byte [0x30], ch                      ; 00 2E 30 00
    add byte cs:[bp + di], bh                ; 2E 00 3B
    add byte [bp + di + 0x4c], dl            ; 00 53 4C
    db 02Eh, 035h, 03Bh, 000h         ; xor ax, 0x3b
    push bx                                  ; 53
    dec sp                                   ; 4C
    cmp ax, word [bx + si]                   ; 3B 00
    push ax                                  ; 50
    inc cx                                   ; 41
    add byte [bp + di + 0x50], al            ; 00 43 50
    xor byte [si], ch                        ; 30 2C
    sub ax, 0x352e                           ; 2D 2E 35
    cmp ax, word [bx + si]                   ; 3B 00
    dec sp                                   ; 4C
    inc dx                                   ; 42
    add byte [bp + di], al                   ; 00 03
    cmp ax, word [bx + si]                   ; 3B 00
    push ax                                  ; 50
    inc cx                                   ; 41
    add byte [bx + si + 0x44], dl            ; 00 50 44
    cmp ax, word [bx + si]                   ; 3B 00
    push ax                                  ; 50
    inc cx                                   ; 41
    add byte [bx + si + 0x55], dl            ; 00 50 55
    cmp ax, word [bx + si]                   ; 3B 00
    push ax                                  ; 50
    inc cx                                   ; 41
    add byte [bx + si + 0x44], dl            ; 00 50 44
    cmp ax, word [bx + si]                   ; 3B 00
    push ax                                  ; 50
    inc cx                                   ; 41
    add byte [bx + si + 0x55], dl            ; 00 50 55
    db 03Bh                           ; 3B