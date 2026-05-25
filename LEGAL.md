# Legal Notice · Aviso Legal

🇬🇧 [English](#english) · 🇪🇸 [Espanol](#espanol)

---

## English

### Trademarks

- **Microsoft** and **Windows** are registered trademarks of Microsoft
  Corporation.
- All other trademarks belong to their respective owners.
- This project is **not affiliated with, endorsed by, or sponsored by**
  Microsoft Corporation.

### Copyright

- The original `.EXE` / `.DRV` binaries of Microsoft Windows 1.03 are
  **copyrighted by Microsoft Corporation**. They are **not redistributed**
  in this repository. The `original/`, `built/`, `runtime/` and
  `mods/*/img/` directories are explicitly excluded from version control.

- This repository contains, under `src/`, the textual result of
  disassembling Microsoft's binaries: x86 assembly instructions in human
  readable form, accompanied by the raw byte sequences from the original
  binaries as line comments. We include these because:
  1. They are the **authoritative source** for our byte-exact rebuild
     pipeline (the comments contain the bytes; the textual instructions
     exist only for humans to read).
  2. They are presented as **research / educational reference material**,
     analogous to how reverse engineering literature and academic papers
     cite excerpts of disassembled code.
  3. Each byte appears in context as a citation, not as a complete
     redistribution of the binary.

- This may or may not qualify as fair use / fair dealing depending on
  jurisdiction. We make no legal claim that it does. **If you are
  Microsoft Corporation and would like this content removed, please open
  an issue or contact the author and we will remove it promptly.**

### Code originality

- The Python and bash scripts under `bootstrap/` are **original work** by
  the project author and contributing AI tools. They are released under
  the MIT License (see `LICENSE`).

- The documentation under `docs/` is **machine-generated** by our pipeline.
  It is released under the same MIT terms. Note that function descriptions
  are **heuristic guesses**, not authoritative documentation, and may be
  incorrect.

- The function **names** that appear throughout the project come from the
  public NE export tables in Microsoft's binaries. They are not creative
  work of ours.

### Author

The author of this project is a **minor (16 years old at time of
publication)**. This is a personal research / educational project. No
commercial intent. No claim of ownership over Microsoft IP.

### Disclaimer of warranty

THIS SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED. THE AUTHORS OR COPYRIGHT HOLDERS SHALL NOT BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY ARISING FROM THE USE OF THIS SOFTWARE.

---

## Español

### Marcas

- **Microsoft** y **Windows** son marcas registradas de Microsoft
  Corporation.
- Las demás marcas pertenecen a sus respectivos propietarios.
- Este proyecto **no está afiliado a, ni avalado por, ni patrocinado por**
  Microsoft Corporation.

### Copyright

- Los binarios `.EXE` / `.DRV` originales de Microsoft Windows 1.03 son
  **propiedad intelectual de Microsoft Corporation**. **No se redistribuyen**
  en este repositorio. Los directorios `original/`, `built/`, `runtime/` y
  `mods/*/img/` se excluyen explícitamente del control de versiones.

- Este repositorio contiene, bajo `src/`, el resultado textual de
  desensamblar los binarios de Microsoft: instrucciones de assembly x86 en
  forma humano-legible, acompañadas de las secuencias de bytes raw del
  binario original como comentarios de línea. Incluimos esto porque:
  1. Son la **fuente autoritativa** para nuestro pipeline de reconstrucción
     byte-exact (los comentarios contienen los bytes; las instrucciones
     textuales existen solo para que los humanos las lean).
  2. Se presentan como **material de referencia de investigación /
     educativo**, análogo a como la literatura de ingeniería inversa y los
     papers académicos citan extractos de código desensamblado.
  3. Cada byte aparece en contexto como cita, no como una redistribución
     completa del binario.

- Esto puede o no calificar como fair use / fair dealing dependiendo de la
  jurisdicción. No hacemos ningún reclamo legal de que lo haga. **Si eres
  Microsoft Corporation y deseas que se elimine este contenido, abre un
  issue o contacta al autor y lo eliminaremos rápidamente.**

### Originalidad del código

- Los scripts Python y bash bajo `bootstrap/` son **trabajo original** mío
  y de las herramientas de IA colaboradoras. Se publican bajo la Licencia
  MIT (ver `LICENSE`).

- La documentación bajo `docs/` está **generada por máquina** por nuestro
  pipeline. Se publica bajo los mismos términos MIT. Notar que las
  descripciones de funciones son **adivinanzas heurísticas**, no
  documentación autoritativa, y pueden ser incorrectas.

- Los **nombres** de funciones que aparecen a lo largo del proyecto vienen
  de las tablas de exports públicas en los binarios NE de Microsoft. No
  son trabajo creativo nuestro.

### Autor

Este proyecto fue construido por mí (Elías) con **16 años** al momento de la
publicación. Es un proyecto personal de investigación / educativo. Sin
intención comercial. Sin reclamo de propiedad sobre IP de Microsoft.

### Renuncia de garantía

ESTE SOFTWARE SE PROPORCIONA "TAL CUAL", SIN GARANTÍA DE NINGÚN TIPO,
EXPRESA O IMPLÍCITA. LOS AUTORES O TITULARES DEL COPYRIGHT NO SERÁN
RESPONSABLES DE NINGUNA RECLAMACIÓN, DAÑOS U OTRA RESPONSABILIDAD
DERIVADA DEL USO DE ESTE SOFTWARE.
