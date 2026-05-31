; PSCRIPT/seg4.asm
; Semantic data - verified byte-exact
BITS 16

    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 005h, 000h, 000h               ; add ax, 0
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si + 0x6f], dl            ; 00 50 6F
    db 073h, 074h                     ; jae 0x90
    push bx                                  ; 53
    arpl word [bp + si + 0x69], si           ; 63 72 69
    db 070h, 074h                     ; jo 0x96
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 067h, 073h, 061h               ; jae 0x8c
    db 076h, 065h                     ; jbe 0x92
    and byte [di], ah                        ; 20 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[bp + di + 0x6c], al         ; 64 20 43 6C
    imul si, word [bx + si + 0x42], 0x786f   ; 69 70 42 6F 78
    or al, byte [bx + si]                    ; 0A 00
    db 067h, 072h, 065h               ; jb 0xab
    db 073h, 074h                     ; jae 0xbc
    db 06Fh                           ; outsw dx, word [si]
    db 072h, 065h                     ; jb 0xb0
    or al, byte [bx + si]                    ; 0A 00
    add byte [bx + si], al                   ; 00 00
    add byte [di], ah                        ; 00 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[bp + di + 0x65], dl         ; 64 20 53 65
    db 074h, 04Ah                     ; je 0xa4
    db 075h, 073h                     ; jne 0xcf
    db 074h, 069h                     ; je 0xc7
    db 066h, 079h, 00Ah               ; jns 0x6b
    add byte [di], ah                        ; 00 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[di], ah                     ; 64 20 25
    db 071h, 020h                     ; jno 0x8e
    push bx                                  ; 53
    db 074h, 072h                     ; je 0xe3
    inc dx                                   ; 42
    db 06Ch                           ; insb byte es:[di], dx
    db 074h, 00Ah                     ; je 0x7f
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    imul sp, word [bp + di + 0x6f], 0x6e75   ; 69 63 6F 75 6E
    db 074h, 072h                     ; je 0xf8
    db 079h, 000h                     ; jns 0x88
    db 069h, 06Eh, 074h, 06Ch, 000h   ; imul bp, word [bp + 0x74], 0x6c
    add byte [di], ah                        ; 00 25
    arpl word [bx + si], ax                  ; 63 00
    db 06Ch                           ; insb byte es:[di], dx
    db 065h, 074h, 074h               ; je 0x109
    db 065h, 072h, 00Ah               ; jb 0xa2
    add byte [si + 0x65], ch                 ; 00 6C 65
    db 067h, 061h                     ; popaw
    db 06Ch                           ; insb byte es:[di], dx
    or al, byte [bx + si]                    ; 0A 00
    db 06Ch                           ; insb byte es:[di], dx
    db 065h, 074h, 074h               ; je 0x118
    db 065h, 072h, 00Ah               ; jb 0xb1
    add byte [di], ah                        ; 00 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[bp + di + 0x65], dl         ; 64 20 53 65
    db 074h, 04Dh                     ; je 0x102
    db 065h, 074h, 072h               ; je 0x12a
    db 069h, 063h, 073h, 00Ah, 000h   ; imul sp, word [bp + di + 0x73], 0xa
    db 075h, 073h                     ; jne 0x132
    db 065h, 072h, 064h               ; jb 0x126
    imul sp, word [bp + di + 0x74], 0x6220   ; 69 63 74 20 62
    imul bp, word gs:[esi + 0x20], 0x232f    ; 65 67 69 6E 20 2F 23
    arpl word [bx + 0x70], bp                ; 63 6F 70
    imul sp, word [di + 0x73], 0x2520        ; 69 65 73 20 25
    and byte fs:[si + 0x65], ah              ; 64 20 64 65
    db 066h, 020h, 065h, 06Eh         ; and byte [di + 0x6e], ah
    or al, byte fs:[bx + si]                 ; 64 0A 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [di + 0x6e], ah                 ; 00 65 6E
    or al, byte fs:[bx + si]                 ; 64 0A 00
    db 025h, 063h, 000h               ; and ax, 0x63
    and ax, 0x2064                           ; 25 64 20
    and ax, 0x2064                           ; 25 64 20
    add byte [bp + si], cl                   ; 00 0A
    add byte [di + 0x6a], ah                 ; 00 65 6A
    arpl word gs:[si + 0xa], si              ; 65 63 74 0A
    add byte [di], ah                        ; 00 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[bx + si], al                ; 64 20 00
    das                                      ; 2F
    and ax, 0x2073                           ; 25 73 20
    add byte [bx], ch                        ; 00 2F
    db 066h, 06Fh                     ; outsd dx, dword [si]
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 025h                     ; je 0x157
    and byte fs:[bx + di + 0x4e], al         ; 64 20 41 4E
    push bx                                  ; 53
    dec cx                                   ; 49
    inc si                                   ; 46
    db 06Fh                           ; outsw dx, word [si]
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 020h                     ; je 0x15d
    add byte [bp + 0x6f], ah                 ; 00 66 6F
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 00Ah                     ; je 0x14d
    add byte [di], ah                        ; 00 25
    and byte fs:[bx + 0x44], al              ; 64 20 47 44
    dec cx                                   ; 49
    push ax                                  ; 50
    db 06Fh                           ; outsw dx, word [si]
    db 06Ch                           ; insb byte es:[di], dx
    db 079h, 04Ch                     ; jns 0x19b
    db 069h, 06Eh, 065h, 00Ah, 000h   ; imul bp, word [bp + 0x65], 0xa
    and ax, 0x2064                           ; 25 64 20
    and ax, 0x2064                           ; 25 64 20
    push bx                                  ; 53
    db 074h, 061h                     ; je 0x1be
    db 072h, 074h                     ; jb 0x1d3
    inc si                                   ; 46
    db 069h, 06Ch, 06Ch, 00Ah, 000h   ; imul bp, word [si + 0x6c], 0xa
    and ax, 0x2064                           ; 25 64 20
    and ax, 0x2064                           ; 25 64 20
    add byte [di], ah                        ; 00 25
    and byte fs:[bx + si + 0x6f], dl         ; 64 20 50 6F
    db 06Ch                           ; insb byte es:[di], dx
    db 079h, 050h                     ; jns 0x1c4
    db 06Fh                           ; outsw dx, word [si]
    imul bp, word [bp + 0x74], 0xa73         ; 69 6E 74 73 0A
    add byte [di], ah                        ; 00 25
    and byte fs:[di + 0x6e], al              ; 64 20 45 6E
    db 064h, 046h                     ; inc si
    db 069h, 06Ch, 06Ch, 00Ah, 000h   ; imul bp, word [si + 0x6c], 0xa
    and ax, 0x2064                           ; 25 64 20
    and ax, 0x2064                           ; 25 64 20
    add byte [di], ah                        ; 00 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[bx + si], al                ; 64 20 00
    and ax, 0x2064                           ; 25 64 20
    and ax, 0x2064                           ; 25 64 20
    add byte [di], ah                        ; 00 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[bx + si], al                ; 64 20 00
    inc di                                   ; 47
    inc sp                                   ; 44
    dec cx                                   ; 49
    inc cx                                   ; 41
    db 072h, 063h                     ; jb 0x20c
    or al, byte [bx + si]                    ; 0A 00
    and ax, 0x2064                           ; 25 64 20
    and ax, 0x2064                           ; 25 64 20
    add byte [di], ah                        ; 00 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[bx + si], al                ; 64 20 00
    inc di                                   ; 47
    inc sp                                   ; 44
    dec cx                                   ; 49
    inc bp                                   ; 45
    db 06Ch                           ; insb byte es:[di], dx
    db 06Ch                           ; insb byte es:[di], dx
    imul si, word [bx + si + 0x73], 0xa65    ; 69 70 73 65 0A
    add byte [bx + 0x44], al                 ; 00 47 44
    dec cx                                   ; 49
    push ax                                  ; 50
    imul sp, word [di + 0xa], 0x2500         ; 69 65 0A 00 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[bx + si], al                ; 64 20 00
    and ax, 0x2064                           ; 25 64 20
    and ax, 0x2064                           ; 25 64 20
    and ax, 0x2064                           ; 25 64 20
    inc di                                   ; 47
    inc sp                                   ; 44
    dec cx                                   ; 49
    push bx                                  ; 53
    arpl word [bx + di + 0x6e], sp           ; 63 61 6E
    dec sp                                   ; 4C
    db 069h, 06Eh, 065h, 00Ah, 000h   ; imul bp, word [bp + 0x65], 0xa
    and ax, 0x2064                           ; 25 64 20
    and ax, 0x2064                           ; 25 64 20
    add byte [di], ah                        ; 00 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[bx + si], al                ; 64 20 00
    inc di                                   ; 47
    inc sp                                   ; 44
    dec cx                                   ; 49
    push dx                                  ; 52
    arpl word gs:[si + 0xa], si              ; 65 63 74 0A
    add byte [bp + di + 0x76], dh            ; 00 73 76
    push ax                                  ; 50
    popaw                                    ; 61
    db 074h, 020h                     ; je 0x227
    db 072h, 065h                     ; jb 0x26e
    db 073h, 074h                     ; jae 0x27f
    db 06Fh                           ; outsw dx, word [si]
    db 072h, 065h                     ; jb 0x273
    or al, byte [bx + si]                    ; 0A 00
    das                                      ; 2F
    db 073h, 076h                     ; jae 0x289
    push ax                                  ; 50
    popaw                                    ; 61
    db 074h, 020h                     ; je 0x237
    db 073h, 061h                     ; jae 0x27a
    db 076h, 065h                     ; jbe 0x280
    and byte [si + 0x65], ah                 ; 20 64 65
    db 066h, 00Ah, 000h               ; or al, byte [bx + si]
    cmp al, 0                                ; 3C 00
    and ax, 0x3230                           ; 25 30 32
    db 078h, 000h                     ; js 0x228
    and byte ds:[di], ah                     ; 3E 20 25
    and byte fs:[bp + di + 0x65], dl         ; 64 20 53 65
    db 074h, 050h                     ; je 0x281
    popaw                                    ; 61
    db 074h, 074h                     ; je 0x2a8
    db 065h, 072h, 06Eh               ; jb 0x2a5
    or al, byte [bx + si]                    ; 0A 00
    and ax, 0x2064                           ; 25 64 20
    and ax, 0x2064                           ; 25 64 20
    push bx                                  ; 53
    db 065h, 074h, 042h               ; je 0x285
    db 072h, 075h                     ; jb 0x2ba
    db 073h, 068h                     ; jae 0x2af
    or al, byte [bx + si]                    ; 0A 00
    and ax, 0x2064                           ; 25 64 20
    push bx                                  ; 53
    db 065h, 074h, 042h               ; je 0x292
    db 072h, 075h                     ; jb 0x2c7
    db 073h, 068h                     ; jae 0x2bc
    or al, byte [bx + si]                    ; 0A 00
    and ax, 0x2064                           ; 25 64 20
    push bx                                  ; 53
    db 065h, 074h, 042h               ; je 0x29f
    db 072h, 075h                     ; jb 0x2d4
    db 073h, 068h                     ; jae 0x2c9
    or al, byte [bx + si]                    ; 0A 00
    and ax, 0x2064                           ; 25 64 20
    push bx                                  ; 53
    db 065h, 074h, 042h               ; je 0x2ac
    db 072h, 075h                     ; jb 0x2e1
    db 073h, 068h                     ; jae 0x2d6
    or al, byte [bx + si]                    ; 0A 00
    out dx, ax                               ; EF
    out dx, ax                               ; EF
    out dx, ax                               ; EF
    out dx, ax                               ; EF
    out dx, ax                               ; EF
    out dx, ax                               ; EF
    out dx, ax                               ; EF
    out dx, ax                               ; EF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    std                                      ; FD
    sti                                      ; FB
    imul di                                  ; F7 EF
    fistp qword [bx + 0x7f7f]                ; DF BF 7F 7F
    mov di, 0xefdf                           ; BF DF EF
    idiv bx                                  ; F7 FB
    std                                      ; FD
    db 0FEh                           ; FE
    out dx, ax                               ; EF
    out dx, ax                               ; EF
    out dx, ax                               ; EF
    add bh, ch                               ; 00 EF
    out dx, ax                               ; EF
    out dx, ax                               ; EF
    out dx, ax                               ; EF
    db 07Eh, 0BDh                     ; jle 0x257
    db 0DBh                           ; DB
    out 0xe7, ax                             ; E7 E7
    db 0DBh, 0BDh, 07Eh, 025h         ; fstp xword [di + 0x257e]
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[bp + di + 0x65], dl         ; 64 20 53 65
    db 074h, 050h                     ; je 0x300
    db 065h, 06Eh                     ; outsb dx, byte gs:[si]
    or al, byte [bx + si]                    ; 0A 00
    dec si                                   ; 4E
    push bp                                  ; 55
    dec sp                                   ; 4C
    dec sp                                   ; 4C
    add byte [bx + si], ch                   ; 00 28
    db 000h, 05Ch, 000h               ; add byte [si], bl
    pop sp                                   ; 5C
    add byte [bx + di], ch                   ; 00 29
    add byte [bx + si], al                   ; 00 00
    and ax, 0x3230                           ; 25 30 32
    db 078h, 025h                     ; js 0x2ec
    xor byte [bp + si], dh                   ; 30 32
    db 078h, 025h                     ; js 0x2f0
    xor byte [bp + si], dh                   ; 30 32
    db 078h, 000h                     ; js 0x2cf
    and ax, 0x3230                           ; 25 30 32
    db 078h, 000h                     ; js 0x2d4
    or al, byte [bx + si]                    ; 0A 00
    and ax, 0x2064                           ; 25 64 20
    and ax, 0x2064                           ; 25 64 20
    and ax, 0x2064                           ; 25 64 20
    push bx                                  ; 53
    arpl word [bx + di + 0x6e], sp           ; 63 61 6E
    or al, byte [bx + si]                    ; 0A 00
    add byte [bx + si], al                   ; 00 00
    db 07Fh, 03Fh                     ; jg 0x328
    pop ds                                   ; 1F
    sysret                                   ; 0F 07
    add ax, word [bx + di]                   ; 03 01
    and ax, 0x2064                           ; 25 64 20
    and ax, 0x2064                           ; 25 64 20
    and ax, 0x2064                           ; 25 64 20
    and ax, 0x2064                           ; 25 64 20
    inc dx                                   ; 42
    db 06Fh                           ; outsw dx, word [si]
    db 078h, 00Ah                     ; js 0x308
    add byte [bx + si], al                   ; 00 00
    add word [bx + di], ax                   ; 01 01
    add al, byte [bx + si]                   ; 02 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    adc word [bx + si], ax                   ; 11 00
    or byte [bx + si], al                    ; 08 00
    add byte [bx + si], al                   ; 00 00
    add al, 0                                ; 04 00
    add al, byte [bx + si]                   ; 02 00
    add byte [bx + si], al                   ; 00 00
    inc byte [bx + si]                       ; FE 00
    db 0F2h, 000h, 0FFh               ; add bh, bh
    add al, ah                               ; 00 E0
    pop ds                                   ; 1F
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    sub al, 1                                ; 2C 01
    sub al, 1                                ; 2C 01
    test al, 1                               ; A8 01
    push ax                                  ; 50
    db 003h, 0FEh                     ; add di, si
    add dh, bh                               ; 00 FE
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add ah, ch                               ; 00 EC
    or sp, bp                                ; 09 EC
    or word [bx + si], ax                    ; 09 00
    add byte [bx + si], al                   ; 00 00
    db 000h, 064h, 000h               ; add byte [si], ah
    add byte fs:[bx + si], al                ; 64 00 00
    add byte [bx + si], al                   ; 00 00
    add al, ch                               ; 00 E8
    db 003h, 0E8h                     ; add bp, ax
    add ax, word [bx + si]                   ; 03 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si - 0x5ffb], ah          ; 00 A0 05 A0
    db 005h, 000h, 000h               ; add ax, 0
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    adc al, 0                                ; 14 00
    push dx                                  ; 52
    add cx, word [si + 4]                    ; 03 4C 04
    and byte [bp + di], al                   ; 20 03
    xor ax, word [si]                        ; 33 04
    sbb word [bx + si], ax                   ; 19 00
    or al, 0                                 ; 0C 00
    adc ax, 0x5200                           ; 15 00 52
    add di, word [bx + si + 5]               ; 03 78 05
    mov al, byte [0x1402]                    ; A0 02 14
    db 005h, 059h, 000h               ; add ax, 0x59
    xor al, byte [bx + si]                   ; 32 00
    push ss                                  ; 16
    add byte [bp + di], bh                   ; 00 3B
    add dx, word [bx + di + 0x2004]          ; 03 91 04 20
    add si, word [bp + di]                   ; 03 33
    add al, 0x19                             ; 04 19
    add byte [si], cl                        ; 00 0C
    add byte [bx], dl                        ; 00 17
    add byte [bp + si + 3], dl               ; 00 52 03
    dec sp                                   ; 4C
    add al, 1                                ; 04 01
    db 003h, 0F8h                     ; add di, ax
    add bp, word [bx + si]                   ; 03 28
    add byte [bp + si], ch                   ; 00 2A
    add byte [bx + si + 0x73], dh            ; 00 70 73
    arpl word [bp + si + 0x69], si           ; 63 72 69
    db 070h, 074h                     ; jo 0x41b
    add byte [bx + si + 0x73], dh            ; 00 70 73
    arpl word [bp + si + 0x69], si           ; 63 72 69
    db 070h, 074h                     ; jo 0x423
    add byte [si + 0x65], ah                 ; 00 64 65
    db 076h, 069h                     ; jbe 0x41d
    db 063h, 065h, 000h               ; arpl word [di], sp
    push ax                                  ; 50
    db 06Fh                           ; outsw dx, word [si]
    db 073h, 074h                     ; jae 0x42f
    push bx                                  ; 53
    arpl word [bp + si + 0x69], si           ; 63 72 69
    db 070h, 074h                     ; jo 0x435
    add byte [bp + si + 0x65], dh            ; 00 72 65
    db 073h, 06Fh                     ; jae 0x435
    db 06Ch                           ; insb byte es:[di], dx
    db 075h, 074h                     ; jne 0x43d
    imul bp, word [bx + 0x6e], 0x5000        ; 69 6F 6E 00 50
    db 06Fh                           ; outsw dx, word [si]
    db 073h, 074h                     ; jae 0x445
    push bx                                  ; 53
    arpl word [bp + si + 0x69], si           ; 63 72 69
    db 070h, 074h                     ; jo 0x44b
    add byte [bx + si + 0x61], dh            ; 00 70 61
    db 070h, 065h                     ; jo 0x441
    db 072h, 000h                     ; jb 0x3de
    push ax                                  ; 50
    db 06Fh                           ; outsw dx, word [si]
    db 073h, 074h                     ; jae 0x456
    push bx                                  ; 53
    arpl word [bp + si + 0x69], si           ; 63 72 69
    db 070h, 074h                     ; jo 0x45c
    add byte [bx + si + 0x6f], dl            ; 00 50 6F
    db 073h, 074h                     ; jae 0x461
    push bx                                  ; 53
    arpl word [bp + si + 0x69], si           ; 63 72 69
    db 070h, 074h                     ; jo 0x467
    add byte [si + 0x65], ah                 ; 00 64 65
    db 076h, 069h                     ; jbe 0x461
    db 063h, 065h, 000h               ; arpl word [di], sp
    db 070h, 061h                     ; jo 0x45e
    db 070h, 065h                     ; jo 0x464
    db 072h, 000h                     ; jb 0x401
    db 072h, 065h                     ; jb 0x468
    db 073h, 06Fh                     ; jae 0x474
    db 06Ch                           ; insb byte es:[di], dx
    db 075h, 074h                     ; jne 0x47c
    imul bp, word [bx + 0x6e], 0x5000        ; 69 6F 6E 00 50
    db 06Fh                           ; outsw dx, word [si]
    db 073h, 074h                     ; jae 0x484
    push bx                                  ; 53
    arpl word [bp + si + 0x69], si           ; 63 72 69
    db 070h, 074h                     ; jo 0x48a
    add byte [si + 0x74], ah                 ; 00 64 74
    dec bp                                   ; 4D
    db 06Fh                           ; outsw dx, word [si]
    db 064h, 065h, 000h, 000h         ; add byte gs:[bx + si], al
    add byte [di], ah                        ; 00 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[di], ah                     ; 64 20 25
    db 071h, 020h                     ; jno 0x44c
    push bx                                  ; 53
    db 074h, 072h                     ; je 0x4a1
    inc dx                                   ; 42
    db 06Ch                           ; insb byte es:[di], dx
    db 074h, 00Ah                     ; je 0x43d
    add byte [di], ah                        ; 00 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[di], ah                     ; 64 20 25
    and byte fs:[bx], ch                     ; 64 20 2F
    push bx                                  ; 53
    db 079h, 06Dh                     ; jns 0x4bd
    db 062h, 06Fh, 06Ch               ; bound bp, dword [bx + 0x6c]
    and byte [bp + 0x6f], ah                 ; 20 66 6F
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 00Ah                     ; je 0x463
    add byte [bx + si], dh                   ; 00 30
    and byte [di], ah                        ; 20 25
    and byte fs:[bp + si + 0x6d], dh         ; 64 20 72 6D
    db 06Fh                           ; outsw dx, word [si]
    db 076h, 065h                     ; jbe 0x4c9
    db 074h, 06Fh                     ; je 0x4d5
    or al, byte [bx + si]                    ; 0A 00
    sub byte [si + 0x32], bl                 ; 28 5C 32
    aaa                                      ; 37
    xor al, 0x29                             ; 34 29
    and byte [bp + di + 0x68], dh            ; 20 73 68
    db 06Fh                           ; outsw dx, word [si]
    db 077h, 00Ah                     ; ja 0x47e
    add byte [bx + si], ch                   ; 00 28
    and ax, 0x2963                           ; 25 63 29
    and byte [bp + di + 0x68], dh            ; 20 73 68
    db 06Fh                           ; outsw dx, word [si]
    db 077h, 00Ah                     ; ja 0x489
    db 000h                           ; 00