; HP7470A/seg2.asm
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
    add byte [bx + di], al                   ; 00 01
    add word [bx + 0x6900], di               ; 01 BF 00 69
    or ax, 0x9f6                             ; 0D F6 09
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add ax, word [bx + si]                   ; 03 00
    adc al, byte [bx + si]                   ; 12 00
    add byte [bx + si], al                   ; 00 00
    add word [bx + si], ax                   ; 01 00
    add ax, word [bx + si]                   ; 03 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte cs:[bx + si], cl                ; 2E 00 08
    add ah, ah                               ; 00 E4
    db 01Dh, 001h, 000h               ; sbb ax, 1
    add byte [bx + si], al                   ; 00 00
    or al, byte [bx + si]                    ; 0A 00
    or al, byte [bx + si]                    ; 0A 00
    push cs                                  ; 0E
    add al, cl                               ; 00 C8
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bp + si + 1], dl               ; 00 52 01
    push dx                                  ; 52
    add word [bx + di], ax                   ; 01 01
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
    inc cx                                   ; 41
    add byte [bx + si + 0x50], cl            ; 00 48 50
    and byte [bx], dh                        ; 20 37
    xor al, 0x37                             ; 34 37
    db 030h, 041h, 000h               ; xor byte [bx + di], al
    dec ax                                   ; 48
    push ax                                  ; 50
    and byte [bx], dh                        ; 20 37
    xor al, 0x37                             ; 34 37
    db 030h, 041h, 000h               ; xor byte [bx + di], al
    dec ax                                   ; 48
    push ax                                  ; 50
    and byte [bx], dh                        ; 20 37
    xor al, 0x37                             ; 34 37
    db 030h, 041h, 000h               ; xor byte [bx + di], al
    dec ax                                   ; 48
    push ax                                  ; 50
    push ax                                  ; 50
    db 06Ch                           ; insb byte es:[di], dx
    db 06Fh                           ; outsw dx, word [si]
    db 074h, 064h                     ; je 0x144
    db 074h, 04Dh                     ; je 0x12f
    dec di                                   ; 4F
    inc sp                                   ; 44
    inc bp                                   ; 45
    add byte [bx + si + 0x50], cl            ; 00 48 50
    and byte [bx], dh                        ; 20 37
    xor al, 0x37                             ; 34 37
    db 030h, 041h, 000h               ; xor byte [bx + di], al
    add byte [bx + si], al                   ; 00 00
    add byte [di + 0x6f], cl                 ; 00 4D 6F
    db 064h, 065h, 072h, 06Eh         ; jb 0x166
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
    db 07Fh, 00Eh                     ; jg 0x128
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
    db 064h, 065h, 072h, 06Eh         ; jb 0x1aa
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
    db 064h, 065h, 072h, 06Eh         ; jb 0x1c6
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
    xor al, 0x37                             ; 34 37
    db 030h, 041h, 000h               ; xor byte [bx + di], al
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    add byte [bx + si], al                   ; 00 00
    db 0FFh                           ; FF
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
    add byte [bx + si + 0x50], cl            ; 00 48 50
    and byte [bx], dh                        ; 20 37
    xor al, 0x37                             ; 34 37
    db 030h, 041h, 000h               ; xor byte [bx + di], al
    push ax                                  ; 50
    db 06Ch                           ; insb byte es:[di], dx
    db 065h, 061h                     ; popaw
    db 073h, 065h                     ; jae 0x23d
    and byte [si + 0x6f], ch                 ; 20 6C 6F
    popaw                                    ; 61
    and byte fs:[bx + di + 0x20], ah         ; 64 20 61 20
    db 06Eh                           ; outsb dx, byte [si]
    db 065h, 077h, 020h               ; ja 0x204
    db 073h, 068h                     ; jae 0x24e
    db 065h, 065h, 074h, 020h         ; je 0x20a
    db 06Fh                           ; outsw dx, word [si]
    db 066h, 020h, 070h, 061h         ; and byte [bx + si + 0x61], dh
    db 070h, 065h                     ; jo 0x256
    db 072h, 02Eh                     ; jb 0x221
    add byte [bx + si + 0x55], dl            ; 00 50 55
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
    add byte [bp + di + 0x4d], dl            ; 00 53 4D
    sub bh, byte [bp + di]                   ; 2A 3B
    add byte [bx + si + 0x55], dl            ; 00 50 55
    cmp ax, word [bx + si]                   ; 3B 00
    push ax                                  ; 50
    inc cx                                   ; 41
    add byte [bp + di + 0x4d], dl            ; 00 53 4D
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