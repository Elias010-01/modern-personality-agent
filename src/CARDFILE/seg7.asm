; CARDFILE/seg7.asm
; Semantic data - verified byte-exact
BITS 16

    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 005h, 000h, 000h               ; add ax, 0
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 000h, 08Dh, 000h, 000h         ; add byte [di], cl
    db 000h, 074h, 000h               ; add byte [si], dh
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    dec bp                                   ; 4D
    inc di                                   ; 47
    inc bx                                   ; 43
    add byte [bx + si], al                   ; 00 00
    add byte [di + 0x47], cl                 ; 00 4D 47
    inc bx                                   ; 43
    add byte [0x5243], ch                    ; 00 2E 43 52
    inc sp                                   ; 44
    add byte [bp + di + 0x52], al            ; 00 43 52
    inc sp                                   ; 44
    add byte [bx + si], al                   ; 00 00
    dec bp                                   ; 4D
    inc di                                   ; 47
    inc bx                                   ; 43
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di + 0x52], al            ; 00 43 52
    inc sp                                   ; 44
    add byte [bp + si], ch                   ; 00 2A
    db 02Eh, 043h                     ; inc bx
    push dx                                  ; 52
    inc sp                                   ; 44
    add byte [bp + si], ch                   ; 00 2A
    db 02Eh, 043h                     ; inc bx
    push dx                                  ; 52
    inc sp                                   ; 44
    add byte [bp + si], ch                   ; 00 2A
    db 02Eh, 043h                     ; inc bx
    push dx                                  ; 52
    inc sp                                   ; 44
    add byte [bx + si], al                   ; 00 00
    add byte [si + 0x2a], bl                 ; 00 5C 2A
    db 02Eh, 043h                     ; inc bx
    push dx                                  ; 52
    inc sp                                   ; 44
    add byte [bx + si], al                   ; 00 00
    add byte [di + 0x6f], cl                 ; 00 4D 6F
    db 064h, 065h, 06Dh               ; insw word es:[di], dx
    add byte [bp + di + 0x4f], al            ; 00 43 4F
    dec bp                                   ; 4D
    xor word [bx + si], ax                   ; 31 00
    inc bx                                   ; 43
    dec di                                   ; 4F
    dec bp                                   ; 4D
    xor ch, byte [si]                        ; 32 2C
    push ax                                  ; 50
    sub al, 0x53                             ; 2C 53
    add byte [di + 0x6f], cl                 ; 00 4D 6F
    db 064h, 065h, 06Dh               ; insw word es:[di], dx
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], ah                   ; 00 20
    db 02Dh, 020h, 000h               ; sub ax, 0x20
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [di + 0x64], al                 ; 00 45 64
    db 069h, 074h, 000h, 000h, 000h   ; imul si, word [si], 0
    add byte [bp + si], ah                   ; 00 22
    add byte [bp + si], ah                   ; 00 22
    add byte [bp + si], ah                   ; 00 22
    add byte [bp + si], ah                   ; 00 22
    add byte [bp + di + 0x61], al            ; 00 43 61
    db 072h, 064h                     ; jb 0xf6
    imul ebp, dword [si + 0x65], 0x69570000  ; 66 69 6C 65 00 00 57 69
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x112
    add byte [si + 0x65], al                 ; 00 44 65
    db 076h, 069h                     ; jbe 0x10d
    db 063h, 065h, 000h               ; arpl word [di], sp
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [di + 0x64], al                 ; 00 45 64
    db 069h, 074h, 000h, 044h, 049h   ; imul si, word [si], 0x4944
    push bx                                  ; 53
    push ax                                  ; 50
    dec sp                                   ; 4C
    inc cx                                   ; 41
    pop cx                                   ; 59
    add byte [bx + si], al                   ; 00 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    inc bx                                   ; 43
    dec di                                   ; 4F
    dec bp                                   ; 4D
    xor al, byte [bx + si]                   ; 32 00
    inc cx                                   ; 41
    push sp                                  ; 54
    dec ax                                   ; 48
    xor byte [bx + si], al                   ; 30 00
    inc bx                                   ; 43
    dec di                                   ; 4F
    dec bp                                   ; 4D
    xor word [bp + si], di                   ; 31 3A
    add byte [bp + di], dh                   ; 00 33
    xor byte [bx + si], dh                   ; 30 30
    sub al, 0x6e                             ; 2C 6E
    sub al, 0x38                             ; 2C 38
    sub al, 0x31                             ; 2C 31
    add byte [bx + si + 0x6f], dl            ; 00 50 6F
    db 072h, 074h                     ; jb 0x152
    db 073h, 000h                     ; jae 0xe0
    inc cx                                   ; 41
    push sp                                  ; 54
    inc sp                                   ; 44
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
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
    add byte [bx + si - 0x67fe], al          ; 00 80 02 98
    add ah, byte [bx + si - 0x13fe]          ; 02 A0 02 EC
    db 002h                           ; 02