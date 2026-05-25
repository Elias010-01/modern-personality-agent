; AUTO-GENERATED from original ATTKBD segment 3
; segment_size=831 bytes, flags=0x0041
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

ATTKBD_DATA SEGMENT BYTE PUBLIC 'DATA'

        db      0ffh, 0feh, 0ffh, 0feh, 008h, 000h, 00ah, 000h, 0ffh, 0ffh, 00ah, 000h, 000h, 000h, 000h, 000h ; FF FE FF FE 08 00 0A 00 FF FF 0A 00 00 00 00 00
        db      000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h ; 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
        db      000h, 000h, 000h, 000h, 000h, 000h, 050h, 01eh, 033h, 0c0h, 08eh, 0d8h, 0e4h, 060h, 03ch, 0f0h ; 00 00 00 00 00 00 50 1E 33 C0 8E D8 E4 60 3C F0
        db      073h, 03fh, 0a8h, 080h, 075h, 042h, 0f6h, 006h, 018h, 004h, 008h, 075h, 034h, 080h, 03eh, 049h ; 73 3F A8 80 75 42 F6 06 18 04 08 75 34 80 3E 49
        db      004h, 004h, 072h, 02dh, 08ah, 026h, 017h, 004h, 03ch, 045h, 074h, 004h, 03ch, 03ah, 075h, 005h ; 04 04 72 2D 8A 26 17 04 3C 45 74 04 3C 3A 75 05
        db      0f6h, 0c4h, 004h, 075h, 01ch, 03ch, 053h, 074h, 00dh, 03ch, 046h, 074h, 009h, 03ch, 037h, 075h ; F6 C4 04 75 1C 3C 53 74 0D 3C 46 74 09 3C 37 75
        db      017h, 0f6h, 0c4h, 003h, 075h, 00bh, 08ah, 026h, 017h, 004h, 0f6h, 0d4h, 0f6h, 0c4h, 00ch, 075h ; 17 F6 C4 03 75 0B 8A 26 17 04 F6 D4 F6 C4 0C 75
        db      007h, 01fh, 058h, 02eh, 0ffh, 02eh, 00ch, 000h, 053h, 050h, 0e4h, 061h, 08ah, 0e0h, 00ch, 080h ; 07 1F 58 2E FF 2E 0C 00 53 50 E4 61 8A E0 0C 80
        db      0e6h, 061h, 086h, 0e0h, 0e6h, 061h, 058h, 0b4h, 080h, 022h, 0e0h, 032h, 0c4h, 050h, 0b0h, 020h ; E6 61 86 E0 E6 61 58 B4 80 22 E0 32 C4 50 B0 20
        db      0e6h, 020h, 058h, 0e8h, 0f8h, 000h, 03ch, 054h, 075h, 022h, 00ah, 0e4h, 078h, 003h, 0e9h, 0cch ; E6 20 58 E8 F8 00 3C 54 75 22 0A E4 78 03 E9 CC
        db      000h, 0a1h, 00ah, 000h, 02eh, 0a3h, 01eh, 000h, 03dh, 000h, 0f0h, 074h, 0f1h, 0a1h, 008h, 000h ; 00 A1 0A 00 2E A3 1E 00 3D 00 F0 74 F1 A1 08 00
        db      02eh, 0a3h, 01ch, 000h, 05bh, 01fh, 058h, 02eh, 0ffh, 02eh, 01ch, 000h, 03ch, 060h, 075h, 007h ; 2E A3 1C 00 5B 1F 58 2E FF 2E 1C 00 3C 60 75 07
        db      02eh, 0a2h, 025h, 000h, 0e9h, 0ach, 000h, 02eh, 080h, 03eh, 024h, 000h, 000h, 074h, 003h, 0e9h ; 2E A2 25 00 E9 AC 00 2E 80 3E 24 00 00 74 03 E9
        db      0a1h, 000h, 02eh, 0feh, 006h, 024h, 000h, 0fbh, 08bh, 0d8h, 02eh, 080h, 03eh, 020h, 000h, 000h ; A1 00 2E FE 06 24 00 FB 8B D8 2E 80 3E 20 00 00
        db      074h, 017h, 02eh, 080h, 03eh, 025h, 000h, 000h, 074h, 00fh, 02eh, 0c6h, 006h, 025h, 000h, 000h ; 74 17 2E 80 3E 25 00 00 74 0F 2E C6 06 25 00 00
        db      03ch, 035h, 075h, 005h, 0b0h, 06fh, 0ebh, 070h, 090h, 0f6h, 006h, 017h, 004h, 004h, 074h, 019h ; 3C 35 75 05 B0 6F EB 70 90 F6 06 17 04 04 74 19
        db      03ch, 046h, 075h, 015h, 02eh, 0c6h, 006h, 023h, 000h, 000h, 0e8h, 06ah, 000h, 0b0h, 003h, 02eh ; 3C 46 75 15 2E C6 06 23 00 00 E8 6A 00 B0 03 2E
        db      080h, 03eh, 023h, 000h, 000h, 075h, 051h, 0ebh, 054h, 033h, 0dbh, 08ah, 0d8h, 0b0h, 0ffh, 080h ; 80 3E 23 00 00 75 51 EB 54 33 DB 8A D8 B0 FF 80
        db      0fbh, 059h, 073h, 044h, 02eh, 08ah, 087h, 0ceh, 002h, 032h, 0ffh, 080h, 0fbh, 047h, 072h, 038h ; FB 59 73 44 2E 8A 87 CE 02 32 FF 80 FB 47 72 38
        db      080h, 0fbh, 053h, 077h, 033h, 0f6h, 006h, 017h, 004h, 020h, 074h, 02ch, 0f6h, 006h, 017h, 004h ; 80 FB 53 77 33 F6 06 17 04 20 74 2C F6 06 17 04
        db      003h, 075h, 00dh, 08ah, 0c7h, 00ah, 0c0h, 075h, 01fh, 02eh, 08ah, 087h, 0e0h, 002h, 0ebh, 018h ; 03 75 0D 8A C7 0A C0 75 1F 2E 8A 87 E0 02 EB 18
        db      050h, 053h, 0b8h, 010h, 080h, 0b3h, 036h, 02eh, 0ffh, 01eh, 018h, 000h, 05bh, 058h, 02eh, 0ffh ; 50 53 B8 10 80 B3 36 2E FF 1E 18 00 5B 58 2E FF
        db      01eh, 018h, 000h, 0b8h, 010h, 000h, 0b3h, 036h, 02eh, 0ffh, 01eh, 018h, 000h, 02eh, 0c6h, 006h ; 1E 18 00 B8 10 00 B3 36 2E FF 1E 18 00 2E C6 06
        db      024h, 000h, 000h, 05bh, 01fh, 058h, 0cfh, 053h, 051h, 052h, 056h, 057h, 006h, 055h, 0cdh, 01bh ; 24 00 00 5B 1F 58 CF 53 51 52 56 57 06 55 CD 1B
        db      05dh, 007h, 05fh, 05eh, 05ah, 059h, 05bh, 0c3h, 02eh, 0feh, 006h, 023h, 000h, 0cfh, 0b3h, 002h ; 5D 07 5F 5E 5A 59 5B C3 2E FE 06 23 00 CF B3 02
        db      03ch, 02ah, 074h, 012h, 0b3h, 001h, 03ch, 036h, 074h, 00ch, 0b3h, 004h, 03ch, 01dh, 074h, 006h ; 3C 2A 74 12 B3 01 3C 36 74 0C B3 04 3C 1D 74 06
        db      0b3h, 008h, 03ch, 038h, 075h, 00fh, 00ah, 0e4h, 079h, 007h, 0f6h, 0d3h, 020h, 01eh, 017h, 004h ; B3 08 3C 38 75 0F 0A E4 79 07 F6 D3 20 1E 17 04
        db      0c3h, 008h, 01eh, 017h, 004h, 0c3h, 003h, 003h, 003h, 003h, 008h, 008h, 008h, 07fh, 009h, 009h ; C3 08 1E 17 04 C3 03 03 03 03 08 08 08 7F 09 09
        db      009h, 0ffh, 00dh, 00dh, 00dh, 00ah, 01bh, 01bh, 01bh, 01bh, 020h, 020h, 020h, 020h, 02bh, 00dh ; 09 FF 0D 0D 0D 0A 1B 1B 1B 1B 20 20 20 20 2B 0D
        db      00dh, 00ah, 030h, 030h, 029h, 0ffh, 031h, 031h, 021h, 0ffh, 032h, 032h, 040h, 080h, 033h, 033h ; 0D 0A 30 30 29 FF 31 31 21 FF 32 32 40 80 33 33
        db      023h, 0ffh, 034h, 034h, 024h, 0ffh, 035h, 035h, 025h, 0ffh, 036h, 036h, 05eh, 09eh, 037h, 037h ; 23 FF 34 34 24 FF 35 35 25 FF 36 36 5E 9E 37 37
        db      026h, 0ffh, 038h, 038h, 02ah, 0ffh, 039h, 039h, 028h, 0ffh, 041h, 061h, 041h, 001h, 042h, 062h ; 26 FF 38 38 2A FF 39 39 28 FF 41 61 41 01 42 62
        db      042h, 002h, 043h, 063h, 043h, 003h, 044h, 064h, 044h, 004h, 045h, 065h, 045h, 005h, 046h, 066h ; 42 02 43 63 43 03 44 64 44 04 45 65 45 05 46 66
        db      046h, 006h, 047h, 067h, 047h, 007h, 048h, 068h, 048h, 008h, 049h, 069h, 049h, 009h, 04ah, 06ah ; 46 06 47 67 47 07 48 68 48 08 49 69 49 09 4A 6A
        db      04ah, 00ah, 04bh, 06bh, 04bh, 00bh, 04ch, 06ch, 04ch, 00ch, 04dh, 06dh, 04dh, 00dh, 04eh, 06eh ; 4A 0A 4B 6B 4B 0B 4C 6C 4C 0C 4D 6D 4D 0D 4E 6E
        db      04eh, 00eh, 04fh, 06fh, 04fh, 00fh, 050h, 070h, 050h, 010h, 051h, 071h, 051h, 011h, 052h, 072h ; 4E 0E 4F 6F 4F 0F 50 70 50 10 51 71 51 11 52 72
        db      052h, 012h, 053h, 073h, 053h, 013h, 054h, 074h, 054h, 014h, 055h, 075h, 055h, 015h, 056h, 076h ; 52 12 53 73 53 13 54 74 54 14 55 75 55 15 56 76
        db      056h, 016h, 057h, 077h, 057h, 017h, 058h, 078h, 058h, 018h, 059h, 079h, 059h, 019h, 05ah, 07ah ; 56 16 57 77 57 17 58 78 58 18 59 79 59 19 5A 7A
        db      05ah, 01ah, 060h, 030h, 030h, 0ffh, 061h, 031h, 031h, 0ffh, 062h, 032h, 032h, 0ffh, 063h, 033h ; 5A 1A 60 30 30 FF 61 31 31 FF 62 32 32 FF 63 33
        db      033h, 0ffh, 064h, 034h, 034h, 0ffh, 065h, 035h, 035h, 0ffh, 066h, 036h, 036h, 0ffh, 067h, 037h ; 33 FF 64 34 34 FF 65 35 35 FF 66 36 36 FF 67 37
        db      037h, 0ffh, 068h, 038h, 038h, 0ffh, 069h, 039h, 039h, 0ffh, 06eh, 02eh, 02eh, 0ffh, 0bbh, 03dh ; 37 FF 68 38 38 FF 69 39 39 FF 6E 2E 2E FF BB 3D
        db      02bh, 0ffh, 0bch, 02ch, 03ch, 0ffh, 0bdh, 02dh, 05fh, 09fh, 0beh, 02eh, 03eh, 0ffh, 0bah, 03bh ; 2B FF BC 2C 3C FF BD 2D 5F 9F BE 2E 3E FF BA 3B
        db      03ah, 0ffh, 0bfh, 02fh, 03fh, 0ffh, 0c0h, 060h, 07eh, 0ffh, 0dbh, 05bh, 07bh, 01bh, 0dch, 05ch ; 3A FF BF 2F 3F FF C0 60 7E FF DB 5B 7B 1B DC 5C
        db      07ch, 01ch, 0ddh, 05dh, 07dh, 01dh, 0deh, 027h, 022h, 0ffh, 06ah, 02ah, 02ah, 0ffh, 06dh, 02dh ; 7C 1C DD 5D 7D 1D DE 27 22 FF 6A 2A 2A FF 6D 2D
        db      02dh, 0ffh, 06bh, 02bh, 02bh, 0ffh, 06fh, 02fh, 02fh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 01bh ; 2D FF 6B 2B 2B FF 6F 2F 2F FF FF FF FF FF FF 1B
        db      031h, 032h, 033h, 034h, 035h, 036h, 037h, 038h, 039h, 030h, 0bdh, 0bbh, 008h, 009h, 051h, 057h ; 31 32 33 34 35 36 37 38 39 30 BD BB 08 09 51 57
        db      045h, 052h, 054h, 059h, 055h, 049h, 04fh, 050h, 0dbh, 0ddh, 00dh, 011h, 041h, 053h, 044h, 046h ; 45 52 54 59 55 49 4F 50 DB DD 0D 11 41 53 44 46
        db      047h, 048h, 04ah, 04bh, 04ch, 0bah, 0deh, 0c0h, 010h, 0dch, 05ah, 058h, 043h, 056h, 042h, 04eh ; 47 48 4A 4B 4C BA DE C0 10 DC 5A 58 43 56 42 4E
        db      04dh, 0bch, 0beh, 0bfh, 010h, 06ah, 012h, 020h, 014h, 070h, 071h, 072h, 073h, 074h, 075h, 076h ; 4D BC BE BF 10 6A 12 20 14 70 71 72 73 74 75 76
        db      077h, 078h, 079h, 090h, 091h, 024h, 026h, 021h, 06dh, 025h, 00ch, 027h, 06bh, 023h, 028h, 022h ; 77 78 79 90 91 24 26 21 6D 25 0C 27 6B 23 28 22
        db      02dh, 02eh, 0ffh, 0ffh, 0ffh, 07ah, 07bh, 067h, 068h, 069h, 06dh, 064h, 065h, 066h, 06bh, 061h ; 2D 2E FF FF FF 7A 7B 67 68 69 6D 64 65 66 6B 61
        db      062h, 063h, 060h, 06eh, 007h, 008h, 009h, 0ffh, 004h, 005h, 006h, 0ffh, 001h, 002h, 003h ; 62 63 60 6E 07 08 09 FF 04 05 06 FF 01 02 03

ATTKBD_DATA ENDS

        END
