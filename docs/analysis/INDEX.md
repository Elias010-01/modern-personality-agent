# Windows 1.03 - Documentacion automatica

Esta documentacion se genera automaticamente por el pipeline de analisis
(`bootstrap/analyze/`) a partir de los `.asm` humano-legibles en `src/`.

## Resumen global

- **Modulos analizados**: 69
- **Funciones totales**: 3954
- **Confidence**:
    - high (API conocida): **145**
    - medium (convencion o patron): **1864**
    - low (heuristica generica): **1198**
    - unknown: **747**

## Indices

- [Por modulo](by-module.md)
- [Por clasificacion](by-classification.md)
- [Top APIs invocadas](top-apis.md)
- [Lista alfabetica de funciones](api-by-name.md)
- [Call graph](callgraph.md)

## Documentacion por modulo

- [ATTDC](ATTDC.md) - 41 funcs (high=0, medium=19)
- [ATTDEB](ATTDEB.md) - 39 funcs (high=0, medium=19)
- [ATTKBD](ATTKBD.md) - 6 funcs (high=0, medium=2)
- [ATTMOUSE](ATTMOUSE.md) - 2 funcs (high=0, medium=2)
- [CALC](CALC.md) - 132 funcs (high=0, medium=70)
- [CALENDAR](CALENDAR.md) - 207 funcs (high=0, medium=80)
- [CARDFILE](CARDFILE.md) - 87 funcs (high=0, medium=52)
- [CGA](CGA.md) - 55 funcs (high=0, medium=25)
- [CITOH](CITOH.md) - 14 funcs (high=0, medium=7)
- [CLIPBRD](CLIPBRD.md) - 26 funcs (high=0, medium=15)
- [CLOCK](CLOCK.md) - 24 funcs (high=0, medium=7)
- [COMM](COMM.md) - 43 funcs (high=0, medium=16)
- [CONTROL](CONTROL.md) - 154 funcs (high=0, medium=67)
- [DENMARK](DENMARK.md) - 6 funcs (high=0, medium=4)
- [EGAHIBW](EGAHIBW.md) - 38 funcs (high=0, medium=20)
- [EGAHIRES](EGAHIRES.md) - 45 funcs (high=0, medium=20)
- [EGALORES](EGALORES.md) - 45 funcs (high=0, medium=20)
- [EGAMONO](EGAMONO.md) - 38 funcs (high=0, medium=20)
- [EPSON](EPSON.md) - 16 funcs (high=0, medium=9)
- [EPSONMX](EPSONMX.md) - 14 funcs (high=0, medium=7)
- [FRANCE](FRANCE.md) - 5 funcs (high=0, medium=2)
- [FTG](FTG.md) - 4 funcs (high=0, medium=2)
- [GDI](GDI.md) - 314 funcs (high=31, medium=153)
- [GENIUS](GENIUS.md) - 42 funcs (high=0, medium=18)
- [GERMANY](GERMANY.md) - 5 funcs (high=0, medium=2)
- [HERCULES](HERCULES.md) - 57 funcs (high=0, medium=27)
- [HP7470A](HP7470A.md) - 2 funcs (high=0, medium=2)
- [HP7475A](HP7475A.md) - 4 funcs (high=0, medium=3)
- [HP7550A](HP7550A.md) - 2 funcs (high=0, medium=2)
- [HPLASER](HPLASER.md) - 2 funcs (high=0, medium=1)
- [HPLASERP](HPLASERP.md) - 2 funcs (high=0, medium=1)
- [IBMGRX](IBMGRX.md) - 14 funcs (high=0, medium=7)
- [ITALY](ITALY.md) - 5 funcs (high=0, medium=3)
- [JOYMOUSE](JOYMOUSE.md) - 7 funcs (high=0, medium=4)
- [KERNEL](KERNEL.md) - 268 funcs (high=55, medium=105)
- [LMOUSE](LMOUSE.md) - 17 funcs (high=0, medium=6)
- [LPC](LPC.md) - 3 funcs (high=0, medium=2)
- [LQ1500](LQ1500.md) - 16 funcs (high=0, medium=9)
- [MOUSE](MOUSE.md) - 11 funcs (high=0, medium=6)
- [MSDOS](MSDOS.md) - 143 funcs (high=0, medium=92)
- [MSDOSD](MSDOSD.md) - 33 funcs (high=0, medium=24)
- [MSMOUSE1](MSMOUSE1.md) - 4 funcs (high=0, medium=3)
- [MSMOUSE2](MSMOUSE2.md) - 4 funcs (high=0, medium=3)
- [NEC3550](NEC3550.md) - 2 funcs (high=0, medium=1)
- [NECP2](NECP2.md) - 14 funcs (high=0, medium=8)
- [NOMOUSE](NOMOUSE.md) - 0 funcs (high=0, medium=0)
- [NORWAY](NORWAY.md) - 6 funcs (high=0, medium=4)
- [NOTEPAD](NOTEPAD.md) - 47 funcs (high=0, medium=17)
- [OKI92](OKI92.md) - 16 funcs (high=0, medium=8)
- [PAINT](PAINT.md) - 234 funcs (high=0, medium=99)
- [PSCRIPT](PSCRIPT.md) - 41 funcs (high=0, medium=15)
- [REVERSI](REVERSI.md) - 46 funcs (high=0, medium=27)
- [SETUP](SETUP.md) - 164 funcs (high=0, medium=100)
- [SG10](SG10.md) - 16 funcs (high=0, medium=9)
- [SOUND](SOUND.md) - 34 funcs (high=0, medium=20)
- [SPAIN](SPAIN.md) - 5 funcs (high=0, medium=3)
- [SPOOLER](SPOOLER.md) - 44 funcs (high=0, medium=24)
- [SWEDEN](SWEDEN.md) - 5 funcs (high=0, medium=3)
- [SYSTEM](SYSTEM.md) - 6 funcs (high=0, medium=5)
- [TERMINAL](TERMINAL.md) - 214 funcs (high=0, medium=100)
- [THINKJET](THINKJET.md) - 14 funcs (high=0, medium=7)
- [TI850](TI850.md) - 14 funcs (high=0, medium=7)
- [TOSH](TOSH.md) - 16 funcs (high=0, medium=8)
- [TTY](TTY.md) - 1 funcs (high=0, medium=0)
- [UK](UK.md) - 5 funcs (high=0, medium=3)
- [USA](USA.md) - 5 funcs (high=0, medium=3)
- [USER](USER.md) - 606 funcs (high=59, medium=233)
- [WRITE](WRITE.md) - 387 funcs (high=0, medium=194)
- [XER4020](XER4020.md) - 16 funcs (high=0, medium=8)
