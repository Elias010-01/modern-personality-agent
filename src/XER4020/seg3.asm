; XER4020/seg3.asm
; Semantic reconstruction - verified byte-exact
BITS 16

    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 005h, 000h, 000h               ; add ax, 0
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 001h, 002h                     ; add word [bp + si], ax
    db 000h, 0FEh                     ; add dh, bh
    db 000h, 0CBh                     ; add bl, cl
    db 000h, 0B0h, 004h, 088h         ; add byte [bx + si - 0x77fc], dh
    db 003h, 001h                     ; add ax, word [bx + di]
    db 000h, 004h                     ; add byte [si], al
    db 000h, 011h                     ; add byte [bx + di], dl
    db 000h, 008h                     ; add byte [bx + si], cl
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 008h                     ; add byte [bx + si], cl
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 008h                     ; add byte [bx + si], cl
    db 000h, 000h                     ; add byte [bx + si], al
    db 020h, 000h                     ; and byte [bx + si], al
    db 000h, 003h                     ; add byte [bp + di], al
    db 000h, 078h, 000h               ; add byte [bx + si], bh
    db 078h, 000h                     ; js 0x3c
    db 0AAh                           ; stosb byte es:[di], al
    db 000h, 054h, 001h               ; add byte [si + 1], dl
    db 0ECh                           ; in al, dx
    db 009h, 0F0h                     ; or ax, si
    db 007h                           ; pop es
    db 0B0h, 004h                     ; mov al, 4
    db 078h, 0FCh                     ; js 0x44
    db 038h, 063h, 060h               ; cmp byte [bp + di + 0x60], ah
    dec di                                   ; 4F
    db 0B0h, 004h                     ; mov al, 4
    db 078h, 0FCh                     ; js 0x4c
    db 0E8h, 003h, 020h               ; call 0x2056
    db 003h, 0B0h, 004h, 040h         ; add si, word [bx + si + 0x4004]
    cld                                      ; FC
    db 010h, 027h                     ; adc byte [bx], ah
    inc ax                                   ; 40
    db 01Fh                           ; pop ds
    db 0B0h, 004h                     ; mov al, 4
    inc ax                                   ; 40
    cld                                      ; FC
    inc ax                                   ; 40
    db 038h, 000h                     ; cmp byte [bx + si], al
    db 02Dh, 0B0h, 004h               ; sub ax, 0x4b0
    inc ax                                   ; 40
    cld                                      ; FC
    db 078h, 000h                     ; js 0x6a
    db 078h, 000h                     ; js 0x6c
    db 001h, 000h                     ; add word [bx + si], ax
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 001h                     ; add byte [bx + di], al
    db 002h, 000h                     ; add al, byte [bx + si]
    db 0CBh                           ; retf
    db 000h, 0FEh                     ; add dh, bh
    db 000h, 088h, 003h, 0B0h         ; add byte [bx + si - 0x4ffd], cl
    db 004h, 001h                     ; add al, 1
    db 000h, 004h                     ; add byte [si], al
    db 000h, 011h                     ; add byte [bx + di], dl
    db 000h, 008h                     ; add byte [bx + si], cl
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 008h                     ; add byte [bx + si], cl
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 008h                     ; add byte [bx + si], cl
    db 000h, 000h                     ; add byte [bx + si], al
    db 020h, 000h                     ; and byte [bx + si], al
    db 000h, 003h                     ; add byte [bp + di], al
    db 000h, 078h, 000h               ; add byte [bx + si], bh
    db 078h, 000h                     ; js 0xa4
    db 0AAh                           ; stosb byte es:[di], al
    db 000h, 054h, 001h               ; add byte [si + 1], dl
    db 0F0h                           ; F0
    db 007h                           ; pop es
    db 0ECh                           ; in al, dx
    db 009h, 088h, 003h, 050h         ; or word [bx + si + 0x5003], cx
    sti                                      ; FB
    db 060h                           ; pushaw
    dec di                                   ; 4F
    db 038h, 063h, 088h               ; cmp byte [bp + di - 0x78], ah
    db 003h, 050h, 0FBh               ; add dx, word [bx + si - 5]
    db 020h, 003h                     ; and byte [bp + di], al
    db 0E8h, 003h, 0C0h               ; call 0xffffc0c0
    db 003h, 050h, 0FBh               ; add dx, word [bx + si - 5]
    inc ax                                   ; 40
    db 01Fh                           ; pop ds
    db 010h, 027h                     ; adc byte [bx], ah
    db 0C0h, 003h, 050h               ; rol byte [bp + di], 0x50
    sti                                      ; FB
    db 000h, 02Dh                     ; add byte [di], ch
    inc ax                                   ; 40
    db 038h, 0C0h                     ; cmp al, al
    db 003h, 050h, 0FBh               ; add dx, word [bx + si - 5]
    db 078h, 000h                     ; js 0xd2
    db 078h, 000h                     ; js 0xd4
    db 001h, 000h                     ; add word [bx + si], ax
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 073h, 070h                     ; jae 0x152
    db 06Fh                           ; outsw dx, word [si]
    db 06Fh                           ; outsw dx, word [si]
    db 06Ch                           ; insb byte es:[di], dx
    db 020h, 066h, 061h               ; and byte [bp + 0x61], ah
    db 069h, 06Ch, 032h, 000h, 01Bh   ; imul bp, word [si + 0x32], 0x1b00
    db 00Dh, 050h, 000h               ; or ax, 0x50
    db 01Bh, 046h, 030h               ; sbb ax, word [bp + 0x30]
    db 000h, 01Bh                     ; add byte [bp + di], bl
    db 00Dh, 050h, 000h               ; or ax, 0x50
    db 065h, 070h, 064h               ; jo 0x15f
    db 06Fh                           ; outsw dx, word [si]
    db 063h, 020h                     ; arpl word [bx + si], sp
    db 021h, 074h, 072h               ; and word [si + 0x72], si
    db 075h, 065h                     ; jne 0x168
    db 000h, 065h, 070h               ; add byte [di + 0x70], ah
    db 06Ah, 06Fh                     ; push 0x6f
    db 062h, 020h                     ; bound sp, dword [bx + si]
    db 020h, 021h                     ; and byte [bx + di], ah
    db 065h, 070h, 050h               ; jo 0x15f
    db 074h, 072h                     ; je 0x183
    db 000h, 089h, 088h, 000h         ; add byte [bx + di + 0x88], cl
    db 000h, 050h, 000h               ; add byte [bx + si], dl
    db 088h, 003h                     ; mov byte [bp + di], al
    db 00Ah, 000h                     ; or al, byte [bx + si]
    db 004h, 001h                     ; add al, 1
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    push ax                                  ; 50
    db 023h, 000h                     ; and ax, word [bx + si]
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 09Ah, 004h, 000h         ; add byte [bp + si + 4], bl
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 088h, 088h, 000h         ; add byte [bx + si + 0x88], cl
    db 000h, 088h, 003h, 050h         ; add byte [bx + si + 0x5003], cl
    db 000h, 071h, 000h               ; add byte [bx + di], dh
    db 004h, 001h                     ; add al, 1
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    push ax                                  ; 50
    db 023h, 000h                     ; and ax, word [bx + si]
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 012h                     ; add byte [bp + si], dl
    db 005h, 000h, 000h               ; add ax, 0
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    sbb si, word [bx + 0x65]                 ; 1B 77 65
    add byte [bp + di], bl                   ; 00 1B
    xor byte [eax], dh                       ; 67 30 30
    xor byte [bx + si], dh                   ; 30 30
    and byte [bx + si], al                   ; 20 00
    add byte [bx + si], al                   ; 00 00
    db 064h, 075h, 06Dh               ; jne 0x230
    db 070h, 000h                     ; jo 0x1c5
    db 01Bh, 06Bh, 031h               ; sbb bp, word [bp + di + 0x31]
    db 000h, 00Dh                     ; add byte [di], cl
    db 000h, 020h                     ; add byte [bx + si], ah
    db 000h, 000h                     ; add byte [bx + si], al
    db 064h, 074h, 04Dh               ; je 0x21e
    dec di                                   ; 4F
    inc sp                                   ; 44
    inc bp                                   ; 45
    db 000h, 000h                     ; add byte [bx + si], al
    db 020h, 000h                     ; and byte [bx + si], al
    add byte [bx + si], al                   ; 00 00
    db 000h, 000h                     ; add byte [bx + si], al
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 00Ah, 000h                     ; or al, byte [bx + si]
    add byte [bx + si], al                   ; 00 00
    db 014h, 000h                     ; adc al, 0
    db 010h, 000h                     ; adc byte [bx + si], al
    db 028h, 000h                     ; sub byte [bx + si], al
    db 01Eh                           ; push ds
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 04Ch, 050h               ; add byte [si + 0x50], cl
    push sp                                  ; 54
    db 031h, 03Ah                     ; xor word [bp + si], di
    db 000h, 058h, 065h               ; add byte [bx + si + 0x65], bl
    db 072h, 06Fh                     ; jb 0x27d
    db 078h, 020h                     ; js 0x230
    db 034h, 030h                     ; xor al, 0x30
    db 032h, 030h                     ; xor dh, byte [bx + si]
    db 000h, 043h, 04Fh               ; add byte [bp + di + 0x4f], al
    dec bp                                   ; 4D
    db 031h, 03Ah                     ; xor word [bp + si], di
    db 000h, 058h, 065h               ; add byte [bx + si + 0x65], bl
    db 072h, 06Fh                     ; jb 0x28e
    db 078h, 020h                     ; js 0x241
    db 034h, 030h                     ; xor al, 0x30
    db 032h, 030h                     ; xor dh, byte [bx + si]
    db 000h, 04Ch, 050h               ; add byte [si + 0x50], cl
    push sp                                  ; 54
    db 032h, 03Ah                     ; xor bh, byte [bp + si]
    db 000h, 058h, 065h               ; add byte [bx + si + 0x65], bl
    db 072h, 06Fh                     ; jb 0x29f
    db 078h, 020h                     ; js 0x252
    db 034h, 030h                     ; xor al, 0x30
    db 032h, 030h                     ; xor dh, byte [bx + si]
    db 000h, 043h, 04Fh               ; add byte [bp + di + 0x4f], al
    dec bp                                   ; 4D
    db 032h, 03Ah                     ; xor bh, byte [bp + si]
    db 000h, 058h, 065h               ; add byte [bx + si + 0x65], bl
    db 072h, 06Fh                     ; jb 0x2b0
    db 078h, 020h                     ; js 0x263
    db 034h, 030h                     ; xor al, 0x30
    db 032h, 030h                     ; xor dh, byte [bx + si]
    db 000h, 04Ch, 050h               ; add byte [si + 0x50], cl
    push sp                                  ; 54
    db 033h, 03Ah                     ; xor di, word [bp + si]
    db 000h, 058h, 065h               ; add byte [bx + si + 0x65], bl
    db 072h, 06Fh                     ; jb 0x2c1
    db 078h, 020h                     ; js 0x274
    db 034h, 030h                     ; xor al, 0x30
    db 032h, 030h                     ; xor dh, byte [bx + si]
    db 000h, 000h                     ; add byte [bx + si], al
    db 001h, 002h                     ; add word [bp + si], ax
    db 004h, 008h                     ; add al, 8
    db 010h, 020h                     ; adc byte [bx + si], ah
    inc ax                                   ; 40
    db 080h, 0FEh, 0FDh               ; cmp dh, 0xfd
    sti                                      ; FB
    db 0F7h, 0EFh                     ; imul di
    db 0DFh, 0BFh, 07Fh, 080h         ; fistp qword [bx - 0x7f81]
    inc ax                                   ; 40
    db 020h, 010h                     ; and byte [bx + si], dl
    db 008h, 004h                     ; or byte [si], al
    db 002h, 001h                     ; add al, byte [bx + di]
    db 07Fh, 0BFh                     ; jg 0x233
    db 0DFh, 0EFh                     ; fucompi st(7)
    db 0F7h, 0FBh                     ; idiv bx
    std                                      ; FD
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    cld                                      ; FC
    clc                                      ; F8
    db 0F0h                           ; F0
    db 0E0h, 0C0h                     ; loopne 0x241
    db 080h, 001h, 003h               ; add byte [bx + di], 3
    db 007h                           ; pop es
    db 00Fh, 01Fh, 03Fh               ; nop word [bx]
    db 07Fh, 0FFh                     ; jg 0x289
    db 0FFh, 000h                     ; inc word [bx + si]
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 080h, 080h, 080h, 080h, 080h   ; add byte [bx + si - 0x7f80], 0x80
    db 080h, 080h, 080h, 001h, 002h   ; add byte [bx + si + 0x180], 2
    db 004h, 008h                     ; add al, 8
    db 010h, 020h                     ; adc byte [bx + si], ah
    inc ax                                   ; 40
    db 080h, 080h, 040h, 020h, 010h   ; add byte [bx + si + 0x2040], 0x10
    db 008h, 004h                     ; or byte [si], al
    db 002h, 001h                     ; add al, byte [bx + di]
    db 0FFh, 080h, 080h, 080h         ; inc word [bx + si - 0x7f80]
    db 080h, 080h, 080h, 080h, 081h   ; add byte [bx + si - 0x7f80], 0x81
    inc dx                                   ; 42
    db 024h, 018h                     ; and al, 0x18
    db 018h, 024h                     ; sbb byte [si], ah
    inc dx                                   ; 42
    db 081h, 054h, 0AAh, 078h, 078h   ; adc word [si - 0x56], 0x7878
    db 008h, 003h                     ; or byte [bp + di], al
    db 005h, 001h, 006h               ; add ax, 0x601
    db 002h, 004h                     ; add al, byte [si]
    db 000h, 0FFh                     ; add bh, bh
    db 0FFh                           ; FF
    db 0FFh, 000h                     ; inc word [bx + si]
    db 0FFh                           ; FF
    db 0FFh, 000h                     ; inc word [bx + si]
    db 000h, 0FFh                     ; add bh, bh
    db 000h, 0FFh                     ; add bh, bh
    db 000h, 0FFh                     ; add bh, bh
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 0FFh                           ; FF
    db 0FFh, 000h                     ; inc word [bx + si]
    db 000h, 0FFh                     ; add bh, bh
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 0FFh, 000h                     ; inc word [bx + si]
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 000h                     ; inc word [bx + si]
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 000h                     ; inc word [bx + si]
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 000h                     ; inc word [bx + si]
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 000h                     ; inc word [bx + si]
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 000h                     ; inc word [bx + si]
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 000h                     ; inc word [bx + si]
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 000h                     ; inc word [bx + si]
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 000h                     ; inc word [bx + si]
    push ax                                  ; 50
    db 069h, 063h, 061h, 000h, 045h   ; imul sp, word [bp + di + 0x61], 0x4500
    db 06Ch                           ; insb byte es:[di], dx
    db 069h, 074h, 065h, 000h, 046h   ; imul si, word [si + 0x65], 0x4600
    db 06Fh                           ; outsw dx, word [si]
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 035h                     ; je 0x34b
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 003h                     ; add byte [bp + di], al
    db 010h, 00Ch                     ; adc byte [si], cl
    db 000h, 004h                     ; add byte [si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 001h, 003h                     ; add word [bp + di], ax
    db 010h, 00Ah                     ; adc byte [bp + si], cl
    db 000h, 004h                     ; add byte [si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 002h, 003h                     ; add al, byte [bp + di]
    db 00Ch, 006h                     ; or al, 6
    db 000h, 004h                     ; add byte [si], al
    db 006h                           ; push es
    db 003h, 00Bh                     ; add cx, word [bp + di]
    db 003h, 011h                     ; add dx, word [bx + di]
    db 003h, 020h                     ; add sp, word [bx + si]
    db 000h, 0B8h, 000h, 0BFh         ; add byte [bx + si - 0x4100], bh
    db 000h, 0AFh, 000h, 0BAh         ; add byte [bx - 0x4600], ch
    db 000h, 0BCh, 000h, 07Ch         ; add byte [si + 0x7c00], bh
    db 000h, 0BDh, 000h, 0ABh         ; add byte [di - 0x5500], bh
    db 000h, 02Eh, 000h, 0F9h         ; add byte [0xf900], ch
    db 000h, 0FBh                     ; add bl, bh
    db 000h, 02Eh, 000h, 0F6h         ; add byte [0xf600], ch
    db 000h, 02Eh, 000h, 0B0h         ; add byte [0xb000], ch
    db 000h, 0B3h, 000h, 0FEh         ; add byte [bp + di - 0x200], dh
    db 000h, 02Eh, 000h, 02Eh         ; add byte [0x2e00], ch
    db 000h, 0A8h, 000h, 02Eh         ; add byte [bx + si + 0x2e00], ch
    db 000h, 02Eh, 000h, 0FCh         ; add byte [0xfc00], ch
    db 000h, 0F0h                     ; add al, dh
    db 000h, 02Eh, 000h, 0FAh         ; add byte [0xfa00], ch
    db 000h, 0FDh                     ; add ch, bh
    db 000h, 0F7h                     ; add bh, dh
    db 000h, 0F8h                     ; add al, bh
    db 000h, 02Eh, 000h, 0B9h         ; add byte [0xb900], ch
    db 000h, 0A1h, 000h, 0E0h         ; add byte [bx + di - 0x2000], ah
    db 000h, 0A2h, 000h, 0E1h         ; add byte [bp + si - 0x1f00], ah
    db 000h, 0D8h                     ; add al, bl
    db 000h, 0D0h                     ; add al, dl
    db 000h, 0D3h                     ; add bl, dl
    db 000h, 0B4h, 000h, 0A3h         ; add byte [si - 0x5d00], dh
    db 000h, 0DCh                     ; add ah, bl
    db 000h, 0A4h, 000h, 0A5h         ; add byte [si - 0x5b00], ah
    db 000h, 0E6h                     ; add dh, ah
    db 000h, 0E5h                     ; add ch, ah
    db 000h, 0A6h, 000h, 0A7h         ; add byte [bp - 0x5900], ah
    db 000h, 044h, 02Dh               ; add byte [si + 0x2d], al
    db 0B6h, 000h                     ; mov dh, 0
    db 0E8h, 000h, 0E7h               ; call 0xffffea9d
    db 000h, 0DFh                     ; add bh, bl
    db 000h, 0E9h                     ; add cl, ch
    db 000h, 0DAh                     ; add dl, bl
    db 000h, 02Eh, 000h, 0D2h         ; add byte [0xd200], ch
    db 000h, 0ADh, 000h, 0EDh         ; add byte [di - 0x1300], ch
    db 000h, 0AEh, 000h, 0DBh         ; add byte [bp - 0x2500], ch
    db 000h, 059h, 027h               ; add byte [bx + di + 0x27], bl
    db 0F1h                           ; int1
    db 000h, 0DEh                     ; add dh, bl
    db 000h, 0C8h                     ; add al, cl
    db 000h, 0C4h                     ; add ah, al
    db 000h, 0C1h                     ; add cl, al
    db 000h, 0E2h                     ; add dl, ah
    db 000h, 0CCh                     ; add ah, cl
    db 000h, 0D4h                     ; add ah, dl
    db 000h, 0D7h                     ; add bh, dl
    db 000h, 0B5h, 000h, 0C9h         ; add byte [di - 0x3700], dh
    db 000h, 0C5h                     ; add ch, al
    db 000h, 0C1h                     ; add cl, al
    db 000h, 0CDh                     ; add ch, cl
    db 000h, 0D9h                     ; add cl, bl
    db 000h, 0D5h                     ; add ch, dl
    db 000h, 0D1h                     ; add cl, dl
    db 000h, 0DDh                     ; add ch, bl
    db 000h, 02Eh, 000h, 0B7h         ; add byte [0xb700], ch
    db 000h, 0CAh                     ; add dl, cl
    db 000h, 0C6h                     ; add dh, al
    db 000h, 0C2h                     ; add dl, al
    db 000h, 0EAh                     ; add dl, ch
    db 000h, 0CEh                     ; add dh, cl
    db 000h, 02Eh, 000h, 0D6h         ; add byte [0xd600], ch
    db 000h, 0CBh                     ; add bl, cl
    db 000h, 0C7h                     ; add bh, al
    db 000h, 0C3h                     ; add bl, al
    db 000h, 0CFh                     ; add bh, cl
    db 000h, 0EFh                     ; add bh, ch
    db 000h, 0F1h                     ; add cl, dh
    db 000h, 0EEh                     ; add dh, ch
    db 000h, 0A1h, 005h, 00Ah         ; add byte [bx + di + 0xa05], ah
    db 0A3h, 00Ch, 00Ch               ; mov word [0xc0c], ax
    db 0A4h                           ; movsb byte es:[di], byte [si]
    db 00Ch, 00Ch                     ; or al, 0xc
    db 0A5h                           ; movsw word es:[di], word [si]
    db 00Ch, 00Ch                     ; or al, 0xc
    db 0A7h                           ; cmpsw word [si], word es:[di]
    db 00Ah, 00Ch                     ; or cl, byte [si]
    db 0A8h, 008h                     ; test al, 8
    db 009h, 0B0h, 008h, 008h         ; or word [bx + si + 0x808], si
    db 0BFh, 00Ch, 00Bh               ; mov di, 0xb0c
    db 0C4h, 00Ch                     ; les cx, [si]
    db 00Ch, 0C5h                     ; or al, 0xc5
    db 00Ch, 00Ch                     ; or al, 0xc
    db 0C6h                           ; C6
    db 00Ch, 00Ch                     ; or al, 0xc
    db 0C9h                           ; leave
    db 00Ch, 00Ch                     ; or al, 0xc
    db 0D1h, 00Ch                     ; ror word [si], 1
    db 00Ch, 0D6h                     ; or al, 0xd6
    db 00Ch, 00Ch                     ; or al, 0xc
    db 0D8h, 00Ch                     ; fmul dword [si]
    db 00Ch, 0DCh                     ; or al, 0xdc
    db 00Ch, 00Ch                     ; or al, 0xc
    fisttp word [bp + di]                    ; DF 0B
    db 00Bh, 0E0h                     ; or sp, ax
    or al, 0xb                               ; 0C 0B
    in al, 0xc                               ; E4 0C
    db 00Bh, 0E6h                     ; or sp, si
    or al, 0xc                               ; 0C 0C
    out 0xb, ax                              ; E7 0B
    db 00Bh, 0E8h                     ; or bp, ax
    or al, 0xb                               ; 0C 0B
    db 0E9h, 00Ch, 00Bh               ; jmp 0xf47
    in al, dx                                ; EC
    or byte [bx + si], cl                    ; 08 08
    int1                                     ; F1
    or cx, word [si]                         ; 0B 0C
    db 0F2h, 00Ah, 00Bh               ; or cl, byte [bp + di]
    db 0F6h, 00Ah, 00Bh               ; test byte [bp + si], 0xb
    clc                                      ; F8
    db 00Ch, 00Bh                     ; or al, 0xb
    stc                                      ; F9
    db 00Bh, 00Bh                     ; or cx, word [bp + di]
    cld                                      ; FC
    db 00Bh, 00Ch                     ; or cx, word [si]
    db 01Bh, 077h, 061h               ; sbb si, word [bx + 0x61]
    db 000h, 01Bh                     ; add byte [bp + di], bl
    inc bp                                   ; 45
    db 000h, 01Bh                     ; add byte [bp + di], bl
    db 077h, 062h                     ; ja 0x4bc
    db 000h, 01Bh                     ; add byte [bp + di], bl
    push dx                                  ; 52
    db 000h, 078h, 065h               ; add byte [bx + si + 0x65], bh
    db 072h, 034h                     ; jb 0x496
    db 030h, 032h                     ; xor byte [bp + si], dh
    db 030h, 000h                     ; xor byte [bx + si], al
    db 01Bh, 046h, 030h               ; sbb ax, word [bp + 0x30]
    db 01Bh, 046h, 031h               ; sbb ax, word [bp + 0x31]
    db 01Bh, 046h, 032h               ; sbb ax, word [bp + 0x32]
    db 01Bh, 046h, 033h               ; sbb ax, word [bp + 0x33]
    db 01Bh, 046h, 034h               ; sbb ax, word [bp + 0x34]
    db 01Bh, 00Dh                     ; sbb cx, word [di]
    push ax                                  ; 50
    db 01Bh, 00Ch                     ; sbb cx, word [si]
    db 01Bh, 045h, 01Bh               ; sbb ax, word [di + 0x1b]
    push dx                                  ; 52
    db 01Bh, 074h, 01Bh               ; sbb si, word [si + 0x1b]
    db 073h, 01Bh                     ; jae 0x49e
    db 075h, 01Bh                     ; jne 0x4a0
    db 073h, 000h                     ; jae 0x487
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 000h, 014h                     ; add byte [si], dl
    db 000h, 0FCh                     ; add ah, bh
    db 003h, 028h                     ; add bp, word [bx + si]
    db 005h, 03Ch, 000h               ; add ax, 0x3c
    db 03Ch, 000h                     ; cmp al, 0
    db 028h, 005h                     ; sub byte [di], al
    db 03Ch, 000h                     ; cmp al, 0
    db 080h, 003h, 0B0h               ; add byte [bp + di], 0xb0
    db 004h, 00Fh                     ; add al, 0xf
    db 000h, 015h                     ; add byte [di], dl
    db 000h, 0E0h                     ; add al, ah
    db 003h, 07Ah, 005h               ; add di, word [bp + si + 5]
    db 03Ch, 000h                     ; cmp al, 0
    db 03Ch, 000h                     ; cmp al, 0
    db 07Ah, 005h                     ; jp 0x4bf
    db 03Ch, 000h                     ; cmp al, 0
    db 060h                           ; pushaw
    db 003h, 000h                     ; add ax, word [bx + si]
    db 005h, 010h, 000h               ; add ax, 0x10
    db 016h                           ; push ss
    db 000h, 0DEh                     ; add dh, bl
    db 003h, 060h, 003h               ; add sp, word [bx + si + 3]
    db 00Fh, 000h, 046h, 000h         ; sldt word [bp]
    db 060h                           ; pushaw
    db 003h, 046h, 000h               ; add ax, word [bp]
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 017h                           ; pop ss
    db 000h, 0FCh                     ; add ah, bh
    db 003h, 090h, 006h, 03Ch         ; add dx, word [bx + si + 0x3c06]
    db 000h, 03Ch                     ; add byte [si], bh
    db 000h, 090h, 006h, 03Ch         ; add byte [bx + si + 0x3c06], dl
    db 000h, 080h, 003h, 000h         ; add byte [bx + si + 3], al
    db 006h                           ; push es
    db 018h, 000h                     ; sbb byte [bx + si], al
    db 018h, 000h                     ; sbb byte [bx + si], al
    pop sp                                   ; 5C
    db 003h, 0BEh, 004h, 03Ch         ; add di, word [bp + 0x3c04]
    db 000h, 03Ch                     ; add byte [si], bh
    db 000h, 0BEh, 004h, 03Ch         ; add byte [bp + 0x3c04], bh
    db 000h, 0E0h                     ; add al, ah
    db 002h, 040h, 004h               ; add al, byte [bx + si + 4]
    db 011h, 000h                     ; adc word [bx + si], ax
    sbb word [bx + si], ax                   ; 19 00
    mov al, 4                                ; B0 04
    sub byte [di], al                        ; 28 05
    cmp al, 0                                ; 3C 00
    cmp al, 0                                ; 3C 00
    sub byte [di], al                        ; 28 05
    cmp al, 0                                ; 3C 00
    cmp byte [si], al                        ; 38 04
    mov al, 4                                ; B0 04
    sbb word [bx + si], ax                   ; 19 00
    adc al, 0                                ; 14 00
    sub byte [di], al                        ; 28 05
    cld                                      ; FC
    add di, word [si]                        ; 03 3C
    add byte [si], bh                        ; 00 3C
    add byte [bx + si], ch                   ; 00 28
    db 005h, 03Ch, 000h               ; add ax, 0x3c
    add byte [bp + di], 0xb0                 ; 80 03 B0
    add al, 0xf                              ; 04 0F
    add byte [di], dl                        ; 00 15
    add byte [bp + si + 5], bh               ; 00 7A 05
    db 0E0h, 003h                     ; loopne 0x52f
    cmp al, 0                                ; 3C 00
    cmp al, 0                                ; 3C 00
    db 07Ah, 005h                     ; jp 0x537
    db 03Ch, 000h                     ; cmp al, 0
    db 060h                           ; pushaw
    db 003h, 000h                     ; add ax, word [bx + si]
    db 005h, 010h, 000h               ; add ax, 0x10
    db 016h                           ; push ss
    db 000h, 060h, 003h               ; add byte [bx + si + 3], ah
    db 0DEh, 003h                     ; fiadd word [bp + di]
    inc si                                   ; 46
    db 000h, 00Fh                     ; add byte [bx], cl
    db 000h, 060h, 003h               ; add byte [bx + si + 3], ah
    inc si                                   ; 46
    db 000h, 000h                     ; add byte [bx + si], al
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 000h, 017h                     ; add byte [bx], dl
    db 000h, 090h, 006h, 0FCh         ; add byte [bx + si - 0x3fa], dl
    db 003h, 03Ch                     ; add di, word [si]
    db 000h, 03Ch                     ; add byte [si], bh
    db 000h, 090h, 006h, 03Ch         ; add byte [bx + si + 0x3c06], dl
    db 000h, 080h, 003h, 000h         ; add byte [bx + si + 3], al
    db 006h                           ; push es
    db 018h, 000h                     ; sbb byte [bx + si], al
    db 018h, 000h                     ; sbb byte [bx + si], al
    db 0BEh, 004h, 05Ch               ; mov si, 0x5c04
    db 003h, 03Ch                     ; add di, word [si]
    db 000h, 03Ch                     ; add byte [si], bh
    db 000h, 0BEh, 004h, 03Ch         ; add byte [bp + 0x3c04], bh
    db 000h, 0E0h                     ; add al, ah
    db 002h, 040h, 004h               ; add al, byte [bx + si + 4]
    db 011h, 000h                     ; adc word [bx + si], ax
    db 066h, 004h, 063h               ; add al, 0x63
    or byte [bx + si], al                    ; 08 00
    and byte [bx + si], al                   ; 20 00
    add byte [bx + si], al                   ; 00 00
    sbb ax, word [bp + 0x32]                 ; 1B 46 32
    add byte [bp + di], bl                   ; 00 1B
    inc si                                   ; 46
    xor byte [bx + si], al                   ; 30 00
    add byte [bp + di + 0x4f], al            ; 00 43 4F
    dec bp                                   ; 4D
    xor word [bx + si], ax                   ; 31 00
    db 00Dh, 00Ah, 000h               ; or ax, 0xa
    add byte [bx + si + 0x20], 0x10          ; 80 40 20 10
    or byte [si], al                         ; 08 04
    add al, byte [bx + di]                   ; 02 01
    db 07Fh, 03Fh                     ; jg 0x5d9
    db 01Fh                           ; pop ds
    db 00Fh, 007h                     ; sysret
    db 003h, 001h                     ; add ax, word [bx + di]
    db 000h, 000h                     ; add byte [bx + si], al
    db 080h, 0C0h, 0E0h               ; add al, 0xe0
    db 0F0h                           ; F0
    clc                                      ; F8
    cld                                      ; FC
    db 0FEh                           ; FE