; REVERSI/seg2.asm
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
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], cl                   ; 00 09
    add byte [bp + si], cl                   ; 00 0A
    add byte [bp + di], cl                   ; 00 0B
    add byte [bx + di], al                   ; 00 01
    add bh, bh                               ; 00 FF
    db 0FFh, 0F7h                     ; push di
    db 0FFh, 0F6h                     ; push si
    db 0FFh, 0F5h                     ; push bp
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add byte [di], ch                        ; 00 2D
    add byte [bp + di], cl                   ; 00 0B
    add byte [bp + si], dl                   ; 00 12
    db 000h, 051h, 000h               ; add byte [bx + di], dl
    pop ax                                   ; 58
    add byte [di], cl                        ; 00 0D
    add byte [bx], bl                        ; 00 1F
    add byte [bx + si], dl                   ; 00 10
    add byte [di], bh                        ; 00 3D
    add byte [0x5300], ah                    ; 00 26 00 53
    db 000h, 044h, 000h               ; add byte [si], al
    push si                                  ; 56
    add byte [0x2900], cl                    ; 00 0E 00 29
    add byte [bx], cl                        ; 00 0F
    add byte [bp + di], dh                   ; 00 33
    add byte [bx + si], dh                   ; 00 30
    db 000h, 054h, 000h               ; add byte [si], dl
    cmp al, byte [bx + si]                   ; 3A 00
    push bp                                  ; 55
    add byte [bx + di], ah                   ; 00 21
    add byte [si], ah                        ; 00 24
    add byte [bx], bh                        ; 00 3F
    db 000h, 042h, 000h               ; add byte [bp + si], al
    and al, byte [bx + si]                   ; 22 00
    and ax, word [bx + si]                   ; 23 00
    sub ax, word [bx + si]                   ; 2B 00
    add byte cs:[di], dh                     ; 2E 00 35
    add byte [bx + si], bh                   ; 00 38
    db 000h, 040h, 000h               ; add byte [bx + si], al
    inc cx                                   ; 41
    add byte [bx + si], bl                   ; 00 18
    add byte [bx + di], bl                   ; 00 19
    add byte [bp + si], ch                   ; 00 2A
    add byte [bx], ch                        ; 00 2F
    add byte [si], dh                        ; 00 34
    add byte [bx + di], bh                   ; 00 39
    db 000h, 04Ah, 000h               ; add byte [bp + si], cl
    dec bx                                   ; 4B
    add byte [bx], dl                        ; 00 17
    add byte [bp + si], bl                   ; 00 1A
    add byte [bx + si], ah                   ; 00 20
    add byte [di], ah                        ; 00 25
    add byte [0x4300], bh                    ; 00 3E 00 43
    db 000h, 049h, 000h               ; add byte [bx + di], cl
    dec sp                                   ; 4C
    add byte [si], cl                        ; 00 0C
    add byte [bx + di], dl                   ; 00 11
    add byte [di], dl                        ; 00 15
    add byte [si], bl                        ; 00 1C
    db 000h, 047h, 000h               ; add byte [bx], al
    dec si                                   ; 4E
    db 000h, 052h, 000h               ; add byte [bp + si], dl
    push di                                  ; 57
    add byte [0x1b00], dl                    ; 00 16 00 1B
    db 000h, 048h, 000h               ; add byte [bx + si], cl
    dec bp                                   ; 4D
    add byte [bx + si], al                   ; 00 00
    add byte [di + 0x41], cl                 ; 00 4D 41
    dec cx                                   ; 49
    dec si                                   ; 4E
    inc cx                                   ; 41
    inc bx                                   ; 43
    inc bx                                   ; 43
    add byte [bp + si + 0x65], dl            ; 00 52 65
    db 076h, 065h                     ; jbe 0x115
    db 072h, 073h                     ; jb 0x125
    imul ax, word [bx + si], 0xaa            ; 69 00 AA 00
    push bp                                  ; 55
    add byte [bp + si + 0x5500], ch          ; 00 AA 00 55
    add byte [bp + si + 0x5500], ch          ; 00 AA 00 55
    add byte [bp + si + 0x5500], ch          ; 00 AA 00 55
    add byte [bp + si + 0x65], dl            ; 00 52 65
    db 076h, 065h                     ; jbe 0x12d
    db 072h, 073h                     ; jb 0x13d
    db 069h, 000h, 009h, 000h         ; imul ax, word [bx + si], 9
    or al, byte [bx + si]                    ; 0A 00
    or ax, word [bx + si]                    ; 0B 00
    add word [bx + si], ax                   ; 01 00
    db 0FFh                           ; FF
    db 0FFh, 0F7h                     ; push di
    db 0FFh, 0F6h                     ; push si
    db 0FFh, 0F5h                     ; push bp
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add al, byte [bx + si]                   ; 02 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    add word [bx + si], ax                   ; 01 00
    add byte [bx + di], al                   ; 00 01
    jmp word [bp + di - 8]                   ; FF 63 F8
    or byte [0x806], al                      ; 08 06 06 08
    clc                                      ; F8
    arpl word [bx + si], ax                  ; 63 00
    add al, bh                               ; 00 F8
    db 0E8h, 0FCh, 0FDh               ; call 0xfffffefc
    std                                      ; FD
    cld                                      ; FC
    db 0E8h, 0F8h, 000h               ; call 0x1fd
    add byte [bx + si], cl                   ; 00 08
    cld                                      ; FC
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    cld                                      ; FC
    or byte [bx + si], al                    ; 08 00
    add byte [0x4fd], al                     ; 00 06 FD 04
    add byte [bx + si], al                   ; 00 00
    add al, 0xfd                             ; 04 FD
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    std                                      ; FD
    add al, 0                                ; 04 00
    add byte [si], al                        ; 00 04
    std                                      ; FD
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    or ah, bh                                ; 08 FC
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    cld                                      ; FC
    or byte [bx + si], al                    ; 08 00
    add al, bh                               ; 00 F8
    db 0E8h, 0FCh, 0FDh               ; call 0xffffff2e
    std                                      ; FD
    cld                                      ; FC
    db 0E8h, 0F8h, 000h               ; call 0x22f
    add byte [bp + di - 8], ah               ; 00 63 F8
    or byte [0x806], al                      ; 08 06 06 08
    clc                                      ; F8
    arpl word [bp + di - 8], sp              ; 63 63 F8
    or byte [0x806], al                      ; 08 06 06 08
    clc                                      ; F8
    arpl word [bx + si], ax                  ; 63 00
    add al, bh                               ; 00 F8
    db 0E8h, 000h, 001h               ; call 0x24e
    add word [bx + si], ax                   ; 01 00
    db 0E8h, 0F8h, 000h               ; call 0x24b
    add byte [bx + si], cl                   ; 00 08
    add byte [bx], al                        ; 00 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    clc                                      ; F8
    db 0E8h, 000h, 001h               ; call 0x280
    add word [bx + di], ax                   ; 01 01
    or byte [si], cl                         ; 08 0C
    add byte [bx + si], al                   ; 00 00
    arpl ax, di                              ; 63 F8
    or byte [0x806], al                      ; 08 06 06 08
    or al, 0x63                              ; 0C 63
    arpl ax, di                              ; 63 F8
    or byte [0x806], al                      ; 08 06 06 08
    clc                                      ; F8
    arpl word [bx + si], ax                  ; 63 00
    add al, bh                               ; 00 F8
    db 0E8h, 000h, 001h               ; call 0x29c
    add word [bx + si], ax                   ; 01 00
    db 0E8h, 0F8h, 000h               ; call 0x299
    add byte [bx + si], cl                   ; 00 08
    add byte [bx], al                        ; 00 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    or al, 8                                 ; 0C 08
    add byte [bx + di], al                   ; 00 01
    add word [bx + di], ax                   ; 01 01
    db 0E8h, 0F8h, 000h               ; call 0x2cb
    add byte [bp + di + 0xc], ah             ; 00 63 0C
    or byte [0x806], al                      ; 08 06 06 08
    clc                                      ; F8
    arpl word [bp + di - 8], sp              ; 63 63 F8
    or byte [0x806], al                      ; 08 06 06 08
    clc                                      ; F8
    arpl word [bx + si], ax                  ; 63 00
    add al, bh                               ; 00 F8
    db 0E8h, 000h, 001h               ; call 0x2ea
    add word [bx + si], ax                   ; 01 00
    db 0E8h, 0F8h, 000h               ; call 0x2e7
    add byte [bx + si], cl                   ; 00 08
    add byte [bx], al                        ; 00 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    or al, 8                                 ; 0C 08
    add byte [bx + di], al                   ; 00 01
    add word [bx + di], ax                   ; 01 01
    or byte [si], cl                         ; 08 0C
    add byte [bx + si], al                   ; 00 00
    arpl word [si], cx                       ; 63 0C
    or byte [0x806], al                      ; 08 06 06 08
    or al, 0x63                              ; 0C 63
    arpl ax, di                              ; 63 F8
    or byte [0x806], al                      ; 08 06 06 08
    or al, 0x63                              ; 0C 63
    add byte [bx + si], al                   ; 00 00
    clc                                      ; F8
    db 0E8h, 000h, 001h               ; call 0x338
    add word [bx + si], ax                   ; 01 00
    or byte [si], cl                         ; 08 0C
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    clc                                      ; F8
    db 0E8h, 000h, 001h               ; call 0x36a
    add word [bx + di], ax                   ; 01 01
    db 0E8h, 0F8h, 000h               ; call 0x367
    add byte [bp + di - 8], ah               ; 00 63 F8
    or byte [0x806], al                      ; 08 06 06 08
    clc                                      ; F8
    arpl word [bp + di - 8], sp              ; 63 63 F8
    or byte [0x806], al                      ; 08 06 06 08
    or al, 0x63                              ; 0C 63
    add byte [bx + si], al                   ; 00 00
    clc                                      ; F8
    db 0E8h, 000h, 001h               ; call 0x386
    add word [bx + si], ax                   ; 01 00
    or byte [si], cl                         ; 08 0C
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    clc                                      ; F8
    db 0E8h, 000h, 001h               ; call 0x3b8
    add word [bx + di], ax                   ; 01 01
    or byte [si], cl                         ; 08 0C
    add byte [bx + si], al                   ; 00 00
    arpl ax, di                              ; 63 F8
    or byte [0x806], al                      ; 08 06 06 08
    or al, 0x63                              ; 0C 63
    arpl ax, di                              ; 63 F8
    or byte [0x806], al                      ; 08 06 06 08
    or al, 0x63                              ; 0C 63
    add byte [bx + si], al                   ; 00 00
    clc                                      ; F8
    db 0E8h, 000h, 001h               ; call 0x3d4
    add word [bx + si], ax                   ; 01 00
    or byte [si], cl                         ; 08 0C
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    or al, 8                                 ; 0C 08
    add byte [bx + di], al                   ; 00 01
    add word [bx + di], ax                   ; 01 01
    db 0E8h, 0F8h, 000h               ; call 0x403
    add byte [bp + di + 0xc], ah             ; 00 63 0C
    or byte [0x806], al                      ; 08 06 06 08
    clc                                      ; F8
    arpl word [bp + di - 8], sp              ; 63 63 F8
    or byte [0x806], al                      ; 08 06 06 08
    or al, 0x63                              ; 0C 63
    add byte [bx + si], al                   ; 00 00
    clc                                      ; F8
    db 0E8h, 000h, 001h               ; call 0x422
    add word [bx + si], ax                   ; 01 00
    or byte [si], cl                         ; 08 0C
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    or al, 8                                 ; 0C 08
    add byte [bx + di], al                   ; 00 01
    add word [bx + di], ax                   ; 01 01
    or byte [si], cl                         ; 08 0C
    add byte [bx + si], al                   ; 00 00
    arpl word [si], cx                       ; 63 0C
    or byte [0x806], al                      ; 08 06 06 08
    or al, 0x63                              ; 0C 63
    arpl word [si], cx                       ; 63 0C
    or byte [0x806], al                      ; 08 06 06 08
    clc                                      ; F8
    arpl word [bx + si], ax                  ; 63 00
    add byte [si], cl                        ; 00 0C
    or byte [bx + si], al                    ; 08 00
    add word [bx + di], ax                   ; 01 01
    add al, ch                               ; 00 E8
    clc                                      ; F8
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    clc                                      ; F8
    db 0E8h, 000h, 001h               ; call 0x4a2
    add word [bx + di], ax                   ; 01 01
    db 0E8h, 0F8h, 000h               ; call 0x49f
    add byte [bp + di - 8], ah               ; 00 63 F8
    or byte [0x806], al                      ; 08 06 06 08
    clc                                      ; F8
    arpl word [bp + di + 0xc], sp            ; 63 63 0C
    or byte [0x806], al                      ; 08 06 06 08
    clc                                      ; F8
    arpl word [bx + si], ax                  ; 63 00
    add byte [si], cl                        ; 00 0C
    or byte [bx + si], al                    ; 08 00
    add word [bx + di], ax                   ; 01 01
    add al, ch                               ; 00 E8
    clc                                      ; F8
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    clc                                      ; F8
    db 0E8h, 000h, 001h               ; call 0x4f0
    add word [bx + di], ax                   ; 01 01
    or byte [si], cl                         ; 08 0C
    add byte [bx + si], al                   ; 00 00
    arpl ax, di                              ; 63 F8
    or byte [0x806], al                      ; 08 06 06 08
    or al, 0x63                              ; 0C 63
    arpl word [si], cx                       ; 63 0C
    or byte [0x806], al                      ; 08 06 06 08
    clc                                      ; F8
    arpl word [bx + si], ax                  ; 63 00
    add byte [si], cl                        ; 00 0C
    or byte [bx + si], al                    ; 08 00
    add word [bx + di], ax                   ; 01 01
    add al, ch                               ; 00 E8
    clc                                      ; F8
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    or al, 8                                 ; 0C 08
    add byte [bx + di], al                   ; 00 01
    add word [bx + di], ax                   ; 01 01
    db 0E8h, 0F8h, 000h               ; call 0x53b
    add byte [bp + di + 0xc], ah             ; 00 63 0C
    or byte [0x806], al                      ; 08 06 06 08
    clc                                      ; F8
    arpl word [bp + di + 0xc], sp            ; 63 63 0C
    or byte [0x806], al                      ; 08 06 06 08
    clc                                      ; F8
    arpl word [bx + si], ax                  ; 63 00
    add byte [si], cl                        ; 00 0C
    or byte [bx + si], al                    ; 08 00
    add word [bx + di], ax                   ; 01 01
    add al, ch                               ; 00 E8
    clc                                      ; F8
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    or al, 8                                 ; 0C 08
    add byte [bx + di], al                   ; 00 01
    add word [bx + di], ax                   ; 01 01
    or byte [si], cl                         ; 08 0C
    add byte [bx + si], al                   ; 00 00
    arpl word [si], cx                       ; 63 0C
    or byte [0x806], al                      ; 08 06 06 08
    or al, 0x63                              ; 0C 63
    arpl word [si], cx                       ; 63 0C
    or byte [0x806], al                      ; 08 06 06 08
    or al, 0x63                              ; 0C 63
    add byte [bx + si], al                   ; 00 00
    or al, 8                                 ; 0C 08
    add byte [bx + di], al                   ; 00 01
    add word [bx + si], ax                   ; 01 00
    or byte [si], cl                         ; 08 0C
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    clc                                      ; F8
    db 0E8h, 000h, 001h               ; call 0x5da
    add word [bx + di], ax                   ; 01 01
    db 0E8h, 0F8h, 000h               ; call 0x5d7
    add byte [bp + di - 8], ah               ; 00 63 F8
    or byte [0x806], al                      ; 08 06 06 08
    clc                                      ; F8
    arpl word [bp + di + 0xc], sp            ; 63 63 0C
    or byte [0x806], al                      ; 08 06 06 08
    or al, 0x63                              ; 0C 63
    add byte [bx + si], al                   ; 00 00
    or al, 8                                 ; 0C 08
    add byte [bx + di], al                   ; 00 01
    add word [bx + si], ax                   ; 01 00
    or byte [si], cl                         ; 08 0C
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    clc                                      ; F8
    db 0E8h, 000h, 001h               ; call 0x628
    add word [bx + di], ax                   ; 01 01
    or byte [si], cl                         ; 08 0C
    add byte [bx + si], al                   ; 00 00
    arpl ax, di                              ; 63 F8
    or byte [0x806], al                      ; 08 06 06 08
    or al, 0x63                              ; 0C 63
    arpl word [si], cx                       ; 63 0C
    or byte [0x806], al                      ; 08 06 06 08
    or al, 0x63                              ; 0C 63
    add byte [bx + si], al                   ; 00 00
    or al, 8                                 ; 0C 08
    add byte [bx + di], al                   ; 00 01
    add word [bx + si], ax                   ; 01 00
    or byte [si], cl                         ; 08 0C
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    or al, 8                                 ; 0C 08
    add byte [bx + di], al                   ; 00 01
    add word [bx + di], ax                   ; 01 01
    db 0E8h, 0F8h, 000h               ; call 0x673
    add byte [bp + di + 0xc], ah             ; 00 63 0C
    or byte [0x806], al                      ; 08 06 06 08
    clc                                      ; F8
    arpl word [bp + di + 0xc], sp            ; 63 63 0C
    or byte [0x806], al                      ; 08 06 06 08
    or al, 0x63                              ; 0C 63
    add byte [bx + si], al                   ; 00 00
    or al, 8                                 ; 0C 08
    add byte [bx + di], al                   ; 00 01
    add word [bx + si], ax                   ; 01 00
    or byte [si], cl                         ; 08 0C
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    push es                                  ; 06
    add word [si], ax                        ; 01 04
    add word [bx + di], ax                   ; 01 01
    add al, 1                                ; 04 01
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    pop es                                   ; 07
    add al, 4                                ; 04 04
    pop es                                   ; 07
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    or al, 8                                 ; 0C 08
    add byte [bx + di], al                   ; 00 01
    add word [bx + di], ax                   ; 01 01
    or byte [si], cl                         ; 08 0C
    add byte [bx + si], al                   ; 00 00
    arpl word [si], cx                       ; 63 0C
    or byte [0x806], al                      ; 08 06 06 08
    or al, 0x63                              ; 0C 63
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 081h, 081h, 081h, 001h, 001h, 000h ; add word [bx + di + 0x181], 1
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    xchg byte [bp + si], ah                  ; 86 22
    sahf                                     ; 9E
    and ah, byte [bp - 0xdde]                ; 22 A6 22 F2
    db 022h                           ; 22