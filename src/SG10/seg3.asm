; SG10/seg3.asm
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
    add dh, bh                               ; 00 FE
    add bl, cl                               ; 00 CB
    add al, dl                               ; 00 D0
    db 002h, 0C0h                     ; add al, al
    add ax, word [bx + di]                   ; 03 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], dl                   ; 00 11
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], al                   ; 00 02
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    and byte [bx + si], al                   ; 20 00
    add byte [bp + di], al                   ; 00 03
    db 000h, 078h, 000h               ; add byte [bx + si], bh
    dec ax                                   ; 48
    add byte [si + 0x1800], cl               ; 00 8C 00 18
    add si, di                               ; 01 FE
    add dh, bh                               ; 00 FE
    db 000h, 048h, 000h               ; add byte [bx + si], cl
    mov bh, bh                               ; 88 FF
    in al, dx                                ; EC
    or sp, bp                                ; 09 EC
    db 009h, 048h, 000h               ; or word [bx + si], cx
    mov bh, bh                               ; 88 FF
    db 064h, 000h, 064h, 000h         ; add byte fs:[si], ah
    dec ax                                   ; 48
    add byte [bx + si - 0x1701], cl          ; 00 88 FF E8
    db 003h, 0E8h                     ; add bp, ax
    db 003h, 048h, 000h               ; add cx, word [bx + si]
    mov bh, bh                               ; 88 FF
    mov al, byte [0xa005]                    ; A0 05 A0
    db 005h, 048h, 000h               ; add ax, 0x48
    mov bh, bh                               ; 88 FF
    dec ax                                   ; 48
    db 000h, 078h, 000h               ; add byte [bx + si], bh
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add al, byte [bx + si]                   ; 02 00
    retf                                     ; CB
    add dh, bh                               ; 00 FE
    add al, al                               ; 00 C0
    db 003h, 0D0h                     ; add dx, ax
    add al, byte [bx + di]                   ; 02 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], dl                   ; 00 11
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], al                   ; 00 02
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    and byte [bx + si], al                   ; 20 00
    add byte [bp + di], al                   ; 00 03
    db 000h, 048h, 000h               ; add byte [bx + si], cl
    db 078h, 000h                     ; js 0xa4
    mov word [bx + si], es                   ; 8C 00
    sbb byte [bx + di], al                   ; 18 01
    inc byte [bx + si]                       ; FE 00
    inc byte [bx + si]                       ; FE 00
    db 078h, 000h                     ; js 0xae
    mov ax, 0xecff                           ; B8 FF EC
    or sp, bp                                ; 09 EC
    db 009h, 078h, 000h               ; or word [bx + si], di
    mov ax, 0x64ff                           ; B8 FF 64
    db 000h, 064h, 000h               ; add byte [si], ah
    db 078h, 000h                     ; js 0xbe
    mov ax, 0xe8ff                           ; B8 FF E8
    db 003h, 0E8h                     ; add bp, ax
    db 003h, 078h, 000h               ; add di, word [bx + si]
    mov ax, 0xa0ff                           ; B8 FF A0
    add ax, 0x5a0                            ; 05 A0 05
    db 078h, 000h                     ; js 0xce
    mov ax, 0x78ff                           ; B8 FF 78
    db 000h, 048h, 000h               ; add byte [bx + si], cl
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 01Bh, 040h, 000h               ; sbb ax, word [bx + si]
    or al, 0                                 ; 0C 00
    db 01Bh, 040h, 000h               ; sbb ax, word [bx + si]
    add byte [bx + di + 0x63], ch            ; 00 69 63
    db 06Fh                           ; outsw dx, word [si]
    db 075h, 06Eh                     ; jne 0x15c
    db 074h, 072h                     ; je 0x162
    db 079h, 000h                     ; jns 0xf2
    db 069h, 06Eh, 074h, 06Ch, 000h   ; imul bp, word [bp + 0x74], 0x6c
    add byte [bp + si], cl                   ; 00 0A
    add byte [di], cl                        ; 00 0D
    add byte [di], cl                        ; 00 0D
    add byte [bx + si], ah                   ; 00 20
    add byte [bx + si], al                   ; 00 00
    add byte [si + 0x74], ah                 ; 00 64 74
    dec bp                                   ; 4D
    dec di                                   ; 4F
    inc sp                                   ; 44
    inc bp                                   ; 45
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    sbb byte [si + 0x7848], cl               ; 18 8C 48 78
    push ax                                  ; 50
    imul sp, word [bp + di + 0x61], 0x4320   ; 69 63 61 20 43
    db 06Fh                           ; outsw dx, word [si]
    db 06Dh                           ; insw word es:[di], dx
    db 070h, 072h                     ; jo 0x18c
    db 065h, 073h, 073h               ; jae 0x190
    db 065h, 064h, 000h, 050h, 069h   ; add byte fs:[bx + si + 0x69], dl
    db 063h, 061h, 000h               ; arpl word [bx + di], sp
    push ax                                  ; 50
    imul sp, word [bp + di + 0x61], 0x4520   ; 69 63 61 20 45
    db 078h, 070h                     ; js 0x19d
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 065h, 064h, 020h, 043h, 06Fh ; and byte fs:[bp + di + 0x6f], al
    db 06Dh                           ; insw word es:[di], dx
    db 070h, 072h                     ; jo 0x1aa
    db 065h, 073h, 073h               ; jae 0x1ae
    db 065h, 064h, 000h, 050h, 069h   ; add byte fs:[bx + si + 0x69], dl
    arpl word [bx + di + 0x20], sp           ; 63 61 20
    inc bp                                   ; 45
    db 078h, 070h                     ; js 0x1b6
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 065h, 064h, 000h, 045h, 06Ch ; add byte fs:[di + 0x6c], al
    imul si, word [si + 0x65], 0x4500        ; 69 74 65 00 45
    db 06Ch                           ; insb byte es:[di], dx
    imul si, word [si + 0x65], 0x4520        ; 69 74 65 20 45
    db 078h, 070h                     ; js 0x1cb
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 065h, 064h, 000h, 050h, 072h ; add byte fs:[bx + si + 0x72], dl
    db 06Fh                           ; outsw dx, word [si]
    db 070h, 06Fh                     ; jo 0x1d5
    db 072h, 074h                     ; jb 0x1dc
    imul bp, word [bx + 0x6e], 0x6c61        ; 69 6F 6E 61 6C
    add byte [bx + si + 0x72], dl            ; 00 50 72
    db 06Fh                           ; outsw dx, word [si]
    db 070h, 06Fh                     ; jo 0x1e2
    db 072h, 074h                     ; jb 0x1e9
    imul bp, word [bx + 0x6e], 0x6c61        ; 69 6F 6E 61 6C
    and byte [di + 0x78], al                 ; 20 45 78
    db 070h, 061h                     ; jo 0x1e0
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 065h, 064h, 000h, 000h   ; add byte fs:[bx + si], al
    add byte [bx + si], al                   ; 00 00
    add cx, word [bx + di]                   ; 03 09
    pop es                                   ; 07
    add byte [si], al                        ; 00 04
    add byte [bx + si], al                   ; 00 00
    add word [bp + di], ax                   ; 01 03
    or word [si], cx                         ; 09 0C
    add byte [si], al                        ; 00 04
    add byte [bx + si], al                   ; 00 00
    add al, byte [bp + di]                   ; 02 03
    or word [0x400], cx                      ; 09 0E 00 04
    add byte [bx + si], al                   ; 00 00
    add ax, word [bp + di]                   ; 03 03
    or word [bx + si], bx                    ; 09 18
    add byte [si], al                        ; 00 04
    add byte [bx + si], al                   ; 00 00
    add al, 3                                ; 04 03
    or word [bp + si], cx                    ; 09 0A
    add byte [si], al                        ; 00 04
    add byte [bx + si], al                   ; 00 00
    add ax, 0x903                            ; 05 03 09
    adc al, 0                                ; 14 00
    add al, 0                                ; 04 00
    add word [0x902], ax                     ; 01 06 02 09
    or al, 0                                 ; 0C 00
    add al, 0                                ; 04 00
    add word [bx], ax                        ; 01 07
    add cl, byte [bx + di]                   ; 02 09
    sbb byte [bx + si], al                   ; 18 00
    add al, 0                                ; 04 00
    add word [0x902], ax                     ; 01 06 02 09
    or al, 1                                 ; 0C 01
    add al, 0                                ; 04 00
    add word [bx], ax                        ; 01 07
    add cl, byte [bx + di]                   ; 02 09
    sbb byte [bx + di], al                   ; 18 01
    add al, 0x10                             ; 04 10
    add word [bx + si], sp                   ; 01 20
    add word [di], sp                        ; 01 25
    add word [0x4c01], di                    ; 01 3E 01 4C
    add word [bp + si + 1], dx               ; 01 52 01
    popaw                                    ; 61
    add word [bp + 1], bp                    ; 01 6E 01
    db 073h, 067h                     ; jae 0x24d
    xor word [bx + si], si                   ; 31 30
    add byte [bx + si], al                   ; 00 00
    sbb al, 2                                ; 1C 02
    or byte [bx + si], al                    ; 08 00
    and byte [bx + si], al                   ; 20 00
    add byte [bx + si], al                   ; 00 00
    sbb ax, word [bp + si + 5]               ; 1B 42 05
    sbb si, word [si]                        ; 1B 34
    add byte [bp + di], bl                   ; 00 1B
    db 035h, 000h, 000h               ; xor ax, 0
    add byte [bp + di], bl                   ; 00 1B
    db 02Dh, 031h, 000h               ; sub ax, 0x31
    sbb bp, word [di]                        ; 1B 2D
    xor byte [bx + si], al                   ; 30 00
    or ax, 0x1b00                            ; 0D 00 1B
    inc dx                                   ; 42
    add ax, 0x421b                           ; 05 1B 42
    add cx, word [bx]                        ; 03 0F
    add byte [bp + si], dl                   ; 00 12
    sbb ax, word [bp + si + 1]               ; 1B 42 01
    add byte [bp + si], dl                   ; 00 12
    sbb ax, word [bp + si + 5]               ; 1B 42 05
    sbb ax, word [bp + si + 2]               ; 1B 42 02
    add byte [bp + di], bl                   ; 00 1B
    inc dx                                   ; 42
    add ax, 0x421b                           ; 05 1B 42
    add bx, word [bp + di]                   ; 03 1B
    inc dx                                   ; 42
    add word [bp + di], bx                   ; 01 1B
    inc dx                                   ; 42
    add al, 0x1b                             ; 04 1B
    inc dx                                   ; 42
    add word [bp + di], bx                   ; 01 1B
    inc dx                                   ; 42
    add ax, 0x421b                           ; 05 1B 42
    add ax, 0x571b                           ; 05 1B 57
    xor word [bp + di], bx                   ; 31 1B
    inc dx                                   ; 42
    add bx, word [bp + di]                   ; 03 1B
    push di                                  ; 57
    xor byte [bp + di], bl                   ; 30 1B
    inc dx                                   ; 42
    add word [bp + di], bx                   ; 01 1B
    inc dx                                   ; 42
    add al, 0x1b                             ; 04 1B
    inc dx                                   ; 42
    add ax, 0x571b                           ; 05 1B 57
    xor word [bp + di], bx                   ; 31 1B
    push di                                  ; 57
    xor byte [bp + di], bl                   ; 30 1B
    inc dx                                   ; 42
    add word [bp + di], bx                   ; 01 1B
    inc dx                                   ; 42
    add al, 0x1b                             ; 04 1B
    inc dx                                   ; 42
    add ax, 0x421b                           ; 05 1B 42
    add bx, word [bp + di]                   ; 03 1B
    inc dx                                   ; 42
    add word [bp + di], bx                   ; 01 1B
    inc dx                                   ; 42
    add al, 0x1b                             ; 04 1B
    inc di                                   ; 47
    sbb cx, word [bx + si + 0xf]             ; 1B 48 0F
    push cs                                  ; 0E
    sbb ax, word [bx + 8]                    ; 1B 47 08
    adc al, 0x12                             ; 14 12
    push cs                                  ; 0E
    sbb ax, word [bx + 0x1b]                 ; 1B 47 1B
    dec ax                                   ; 48
    adc al, 0x1b                             ; 14 1B
    inc dx                                   ; 42
    add ax, 0x421b                           ; 05 1B 42
    add bl, byte [bp + di]                   ; 02 1B
    inc dx                                   ; 42
    add word [bp + di], bx                   ; 01 1B
    inc dx                                   ; 42
    add al, 0x1b                             ; 04 1B
    inc dx                                   ; 42
    add ax, 0x421b                           ; 05 1B 42
    add bl, byte [bp + di]                   ; 02 1B
    push di                                  ; 57
    xor word [bp + di], bx                   ; 31 1B
    push di                                  ; 57
    xor byte [bp + di], bl                   ; 30 1B
    inc dx                                   ; 42
    add word [bp + di], bx                   ; 01 1B
    inc dx                                   ; 42
    add al, 0x1b                             ; 04 1B
    inc dx                                   ; 42
    add ax, 0x421b                           ; 05 1B 42
    add bl, byte [bp + di]                   ; 02 1B
    inc di                                   ; 47
    sbb cx, word [bx + si + 0x1b]            ; 1B 48 1B
    inc dx                                   ; 42
    add word [bp + di], bx                   ; 01 1B
    inc dx                                   ; 42
    add al, 0x1b                             ; 04 1B
    inc dx                                   ; 42
    add ax, 0x421b                           ; 05 1B 42
    add cl, byte [0x471b]                    ; 02 0E 1B 47
    sbb cx, word [bx + si + 0x14]            ; 1B 48 14
    sbb ax, word [bp + si + 1]               ; 1B 42 01
    sbb ax, word [bp + si + 4]               ; 1B 42 04
    sbb ax, word [bp + si + 5]               ; 1B 42 05
    sbb si, word [bx + si + 0x31]            ; 1B 70 31
    sbb si, word [bx + si + 0x30]            ; 1B 70 30
    sbb ax, word [bp + si + 4]               ; 1B 42 04
    sbb ax, word [bp + si + 5]               ; 1B 42 05
    sbb si, word [bx + si + 0x31]            ; 1B 70 31
    sbb dx, word [bx + 0x31]                 ; 1B 57 31
    sbb dx, word [bx + 0x30]                 ; 1B 57 30
    sbb si, word [bx + si + 0x30]            ; 1B 70 30
    sbb ax, word [bp + si + 4]               ; 1B 42 04
    sbb ax, word [bx + si + 0x1b]            ; 1B 40 1B
    inc bx                                   ; 43
    sbb cx, word [bp + si + 0x1b]            ; 1B 4A 1B
    pop cx                                   ; 59
    sbb ax, word [di + 0x1b]                 ; 1B 45 1B
    inc si                                   ; 46
    sbb si, word [si]                        ; 1B 34
    sbb si, word [di]                        ; 1B 35
    sbb cx, word [bp + di + 0x1b]            ; 1B 4B 1B
    dec bx                                   ; 4B
    sbb dx, word [bp + di + 0x30]            ; 1B 53 30
    sbb dx, word [si + 0x1b]                 ; 1B 54 1B
    push bx                                  ; 53
    xor word [bp + di], bx                   ; 31 1B
    push sp                                  ; 54
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    adc al, 0                                ; 14 00
    cld                                      ; FC
    add bx, word [bx + si]                   ; 03 18
    add bx, word [0x2400]                    ; 03 1E 00 24
    add byte [bx + si], bl                   ; 00 18
    add bx, word [bp + di]                   ; 03 1B
    add byte [di], dl                        ; 00 15
    add al, ah                               ; 00 E0
    add cx, word [bx + di + 3]               ; 03 49 03
    db 00Fh                           ; 0F
    add byte [si], bh                        ; 00 3C
    add byte [bx + di + 3], cl               ; 00 49 03
    xor ax, word [bx + si]                   ; 33 00
    push ss                                  ; 16
    add dh, bl                               ; 00 DE
    add sp, word [bx + si + 3]               ; 03 60 03
    sldt word [bp]                           ; 0F 00 46 00
    pushaw                                   ; 60
    add di, word [di]                        ; 03 3D
    add byte [si], dl                        ; 00 14
    add byte [bx + si], bl                   ; 00 18
    db 003h, 0FCh                     ; add di, sp
    add sp, word [si]                        ; 03 24
    add byte [0x1800], bl                    ; 00 1E 00 18
    add bx, word [bp + di]                   ; 03 1B
    add byte [di], dl                        ; 00 15
    add byte [bx + di + 3], cl               ; 00 49 03
    db 0E0h, 003h                     ; loopne 0x33d
    cmp al, 0                                ; 3C 00
    str word [bx + di + 3]                   ; 0F 00 49 03
    xor ax, word [bx + si]                   ; 33 00
    push ss                                  ; 16
    add byte [bx + si + 3], ah               ; 00 60 03
    fiadd word [bp + di]                     ; DE 03
    inc si                                   ; 46
    add byte [bx], cl                        ; 00 0F
    add byte [bx + si + 3], ah               ; 00 60 03
    cmp ax, 0x1b00                           ; 3D 00 1B
    dec sp                                   ; 4C
    add byte [bx + si], al                   ; 00 00
    db 01Bh, 041h, 000h               ; sbb ax, word [bx + di]
    or al, byte [si]                         ; 0A 04
    add dx, si                               ; 01 F2
    add word [di], ax                        ; 01 05
    clc                                      ; F8
    add word [bp + si], ax                   ; 01 02
    sti                                      ; FB
    add word [bx + si], ax                   ; 01 00
    cld                                      ; FC
    add word [bx + si], ax                   ; 01 00
    std                                      ; FD
    add word [bp + di], ax                   ; 01 03
    add word [bp + si], ax                   ; 01 02
    add ax, word [di]                        ; 03 05
    add al, byte [bx + di]                   ; 02 01
    pop es                                   ; 07
    add al, byte [bx]                        ; 02 07
    lar ax, word [si]                        ; 0F 02 04
    adc al, 2                                ; 14 02
    pop es                                   ; 07
    db 089h, 088h, 000h, 000h         ; mov word [bx + si], cx
    sub byte [bx + si], al                   ; 28 00
    rol byte [bp + di], 5                    ; C0 03 05
    add byte [bx + di], al                   ; 00 01
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add al, al                               ; 00 C0
    adc al, byte [bx + si]                   ; 12 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [3], ah                         ; 00 26 03 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si + 0x88], cl            ; 00 88 88 00
    add al, al                               ; 00 C0
    add bp, word [bx + si]                   ; 03 28
    db 000h, 078h, 000h               ; add byte [bx + si], bh
    add word [bx + di], ax                   ; 01 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    rcl byte [bp + si], 0                    ; C0 12 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add ah, bh                               ; 00 FC
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
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], bl                   ; 00 1B
    aaa                                      ; 37
    db 06Eh                           ; outsb dx, byte [si]
    arpl word [bp + di], bx                  ; 63 1B
    aaa                                      ; 37
    add byte [bx + si], al                   ; 00 00
    and byte [bx + si], al                   ; 20 00
    pop bx                                   ; 5B
    pop es                                   ; 07
    arpl word [bx], bp                       ; 63 2F
    and ax, word [bp + di]                   ; 23 03
    dec di                                   ; 4F
    pop ax                                   ; 58
    pop cx                                   ; 59
    db 03Dh, 07Ch, 000h               ; cmp ax, 0x7c
    pop bp                                   ; 5D
    add word [bp + di + 7], di               ; 01 7B 07
    add byte cs:[bx + di + 0x5f], ah         ; 2E 00 61 5F
    cmp al, 0x3d                             ; 3C 3D
    add byte cs:[0x2e00], ch                 ; 2E 00 2E 00 2E
    add byte [di], ch                        ; 00 2D
    add byte [bp + di + 1], bl               ; 00 5B 01
    sub bx, word [bx + 0x2e]                 ; 2B 5F 2E
    add byte [0x2700], ch                    ; 00 2E 00 27
    add byte [0x2e00], ch                    ; 00 2E 00 2E
    add byte [0x2c00], ch                    ; 00 2E 00 2C
    add byte [0x6f00], ch                    ; 00 2E 00 6F
    pop di                                   ; 5F
    db 03Eh, 03Dh, 02Eh, 000h         ; cmp ax, 0x2e
    add byte cs:[0x5d00], ch                 ; 2E 00 2E 00 5D
    pop es                                   ; 07
    inc cx                                   ; 41
    pushaw                                   ; 60
    inc cx                                   ; 41
    daa                                      ; 27
    inc cx                                   ; 41
    pop si                                   ; 5E
    inc cx                                   ; 41
    db 07Eh, 05Bh                     ; jle 0x4b4
    add bl, byte [di + 4]                    ; 02 5D 04
    pop bx                                   ; 5B
    add al, 0x43                             ; 04 43
    sub al, 0x45                             ; 2C 45
    pushaw                                   ; 60
    inc ax                                   ; 40
    add ax, 0x5e45                           ; 05 45 5E
    inc bp                                   ; 45
    and cl, byte [bx + di + 0x60]            ; 22 49 60
    dec cx                                   ; 49
    daa                                      ; 27
    dec cx                                   ; 49
    pop si                                   ; 5E
    dec cx                                   ; 49
    and al, byte [si + 0x2d]                 ; 22 44 2D
    pop sp                                   ; 5C
    pop es                                   ; 07
    dec di                                   ; 4F
    pushaw                                   ; 60
    dec di                                   ; 4F
    daa                                      ; 27
    dec di                                   ; 4F
    pop si                                   ; 5E
    dec di                                   ; 4F
    db 07Eh, 05Ch                     ; jle 0x4d9
    add ch, byte [0x5c00]                    ; 02 2E 00 5C
    add al, 0x55                             ; 04 55
    pushaw                                   ; 60
    push bp                                  ; 55
    daa                                      ; 27
    push bp                                  ; 55
    pop si                                   ; 5E
    pop bp                                   ; 5D
    add bl, byte [bx + di + 0x27]            ; 02 59 27
    db 070h, 062h                     ; jo 0x4f0
    db 07Eh, 002h                     ; jle 0x492
    inc ax                                   ; 40
    add word [bx + di + 0x27], sp            ; 01 61 27
    popaw                                    ; 61
    pop si                                   ; 5E
    popaw                                    ; 61
    db 07Eh, 07Bh                     ; jle 0x514
    db 002h, 061h, 000h               ; add ah, byte [bx + di]
    db 07Bh, 004h                     ; jnp 0x4a2
    pop sp                                   ; 5C
    add word [di + 1], di                    ; 01 7D 01
    db 07Bh, 001h                     ; jnp 0x4a5
    db 065h, 05Eh                     ; pop si
    and bh, byte gs:[bp + 6]                 ; 65 22 7E 06
    imul sp, word [bx], 0x5e69               ; 69 27 69 5E
    imul sp, word [bp + si], 0x2d64          ; 69 22 64 2D
    db 07Ch, 007h                     ; jl 0x4bb
    db 07Ch, 006h                     ; jl 0x4bc
    db 06Fh                           ; outsw dx, word [si]
    daa                                      ; 27
    db 06Fh                           ; outsw dx, word [si]
    pop si                                   ; 5E
    db 06Fh                           ; outsw dx, word [si]
    db 07Eh, 07Ch                     ; jle 0x539
    add ch, byte [0x7c00]                    ; 02 2E 00 7C
    add al, 0x7c                             ; 04 7C
    add word [di + 0x27], si                 ; 01 75 27
    db 075h, 05Eh                     ; jne 0x526
    db 07Dh, 002h                     ; jge 0x4cc
    db 079h, 027h                     ; jns 0x4f3
    db 070h, 062h                     ; jo 0x530
    db 079h, 022h                     ; jns 0x4f2
    mov ax, word [0xa0c]                     ; A1 0C 0A
    mov word [0xc0c], ax                     ; A3 0C 0C
    db 0A7h                           ; cmpsw word [si], word es:[di]
    or al, 0xc                               ; 0C 0C
    test al, 8                               ; A8 08
    or word [bx + si + 0x80c], si            ; 09 B0 0C 08
    mov di, 0xb0c                            ; BF 0C 0B
    les cx, [si]                             ; C4 0C
    or al, 0xc5                              ; 0C C5
    or al, 0xc                               ; 0C 0C
    db 0C6h                           ; C6
    or al, 0xc                               ; 0C 0C
    leave                                    ; C9
    or al, 0xc                               ; 0C 0C
    ror word [si], 1                         ; D1 0C
    or al, 0xd6                              ; 0C D6
    or al, 0xc                               ; 0C 0C
    fmul dword [si]                          ; D8 0C
    or al, 0xdc                              ; 0C DC
    or al, 0xc                               ; 0C 0C
    fisttp word [si]                         ; DF 0C
    db 00Bh, 0E0h                     ; or sp, ax
    or al, 0xb                               ; 0C 0B
    in al, 0xc                               ; E4 0C
    db 00Bh, 0E6h                     ; or sp, si
    or al, 0xc                               ; 0C 0C
    out 0xc, ax                              ; E7 0C
    or al, 0xe8                              ; 0C E8
    or al, 0xb                               ; 0C 0B
    db 0E9h, 00Ch, 00Bh               ; jmp 0x101b
    in al, dx                                ; EC
    or al, 0xa                               ; 0C 0A
    int1                                     ; F1
    or al, 0xc                               ; 0C 0C
    db 0F2h, 00Ch, 00Bh               ; or al, 0xb
    db 0F6h, 00Ch, 00Bh               ; test byte [si], 0xb
    clc                                      ; F8
    or al, 0xb                               ; 0C 0B
    stc                                      ; F9
    or al, 0xb                               ; 0C 0B
    cld                                      ; FC
    or al, 0xc                               ; 0C 0C