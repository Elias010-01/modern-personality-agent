# Credits · Reconocimientos

🇬🇧 [English](#english) · 🇪🇸 [Espanol](#espanol)

---

## English

### Prior art and inspiration

This project would not exist in this form without earlier work by others.
Specifically:

- **[starfrost013/modern-personality-windows](https://github.com/starfrost013/modern-personality-windows)** —
  by far the most important prior effort. starfrost has been working on
  reverse engineering Windows 1.x since well before this project existed.
  Their **research repository**
  ([modern-personality-research](https://github.com/starfrost013/modern-personality-research))
  contains structural notes on the NE format, symbol tables found in slack
  space of production builds, and partial documentation of KERNEL.
  At the time of writing their project is on hiatus and explicitly "not
  rebuildable yet", but the trail they blazed made this work *much*
  cheaper to start. The original idea — that you could recover slack-space
  debug symbols and module names from production NE binaries and use them
  to guide reverse engineering — is theirs, not ours. We adopted it.

  After this project was published (2026-05-25), Connor (starfrost) sent
  detailed technical feedback by email and pointed us to the parsed
  symbol dumps of the Windows 1.03 **debug** build of KERNEL/USER/GDI
  (`win1.03/reversing/*syms.txt` in his research repo). Those text dumps
  are produced by his [`symread`](https://github.com/starfrost013/symread)
  tool from Microsoft’s original `.SYM` files. Pass 21 of our pipeline
  reads them, cross-references the names against our retail `.DEF`
  exports, and emits per-module reference tables under
  `docs/analysis/<MODULE>_starfrost_symbols.md`. Of the 2017 debug
  symbols, 520 are confirmed by name match against the retail exports
  we already had. **Used with starfrost's explicit invitation** in the
  same email.

- **[starfrost013/modern-personality-runtime](https://github.com/starfrost013/modern-personality-runtime)** —
  documentation and helpers for running legacy MASM 4.0 / MSC 4.0 toolchains
  on modern operating systems. We followed similar conventions.

- **The DOS / Windows internals book canon** — *Windows Internals*
  (Matt Pietrek), *Undocumented Windows* (Andrew Schulman et al.), *Writing
  Windows Device Drivers* (Daniel Norton). Public knowledge from these
  books informs the structure of our heuristics and our Windows API
  knowledge base.

- **The decomp community** — projects like
  [n64decomp/sm64](https://github.com/n64decomp/sm64),
  [zeldaret/oot](https://github.com/zeldaret/oot),
  [pret/pokered](https://github.com/pret/pokered) and others demonstrated
  that byte-exact recompilation of legacy software from human-readable
  source is achievable and valuable. We are nowhere near their scope or
  depth, but we share the philosophy.

### Tools we use

- **[Capstone](https://www.capstone-engine.org/)** — for x86 16-bit
  disassembly. Without it none of this is possible.
- **[Keystone](https://www.keystone-engine.org/)** — for optional
  re-assembly of edited instructions (when the user opts in with `[ASM]`
  marker).
- **[DOSBox-X](https://dosbox-x.com/)** — to actually boot Windows 1.03
  with our rebuilt binaries and verify everything works visually.
- **[mtools](https://www.gnu.org/software/mtools/)** — for reading/writing
  the floppy image used by DOSBox-X.
- **Python 3.10+** standard library — for the entire pipeline.

### AI assistance

This project was developed in close collaboration with large language
models, primarily:

- **Cascade** (Windsurf IDE), running Anthropic's Claude family of models.

The AI wrote the bulk of the Python and bash code, suggested heuristics,
generated function descriptions, and helped debug. The human (Elias)
provided the goals, the architecture decisions, the vetoes when the AI
went down wrong paths, the verification, and the publishing decisions.

This is not anonymized. We say it clearly because honesty matters more
than ego.

### Honest disclaimers

- The function names we use (`GETVERSION`, `LSTRCPY`, `CREATEWINDOW`,
  etc.) come from the public export tables of the Windows 1.03 NE
  binaries. Anyone with `strings` and a hex editor can see them. They are
  not creative content of ours.
- Function descriptions are generated heuristically by our scripts based on:
  - A small hand-written knowledge base of Win 1.x APIs.
  - Naming conventions.
  - Behavioral pattern matching.
  They are best-effort, not authoritative. Many are wrong. Do not cite
  them as documentation.
- The raw byte sequences that appear as comments in the `.asm` files are
  derived from Microsoft's binaries. We include them as cited reference
  material for research / educational purposes (see [LEGAL.md](LEGAL.md)).
- Windows is a registered trademark of Microsoft Corporation. This project
  is not affiliated with Microsoft.

---

## Español

### Trabajo previo e inspiración

Este proyecto no existiría en esta forma sin trabajo previo de otros.
Específicamente:

- **[starfrost013/modern-personality-windows](https://github.com/starfrost013/modern-personality-windows)** —
  con diferencia el esfuerzo previo más importante. starfrost lleva
  trabajando en ingeniería inversa de Windows 1.x desde mucho antes de
  que este proyecto existiera. Su **repositorio de investigación**
  ([modern-personality-research](https://github.com/starfrost013/modern-personality-research))
  contiene notas estructurales sobre el formato NE, tablas de símbolos
  encontradas en slack space de builds de producción, y documentación
  parcial de KERNEL. Al momento de escribir esto su proyecto está en
  pausa y explícitamente "not rebuildable yet", pero el camino que abrió
  hizo que este trabajo fuera *mucho* más barato de empezar. La idea
  original — que se pueden recuperar símbolos de debug del slack space y
  nombres de módulos desde los binarios NE de producción y usarlos para
  guiar la ingeniería inversa — es suya, no nuestra. Nosotros la
  adoptamos.

  Tras la publicación de este proyecto (25/05/2026), Connor (starfrost)
  nos envió feedback técnico detallado por email y nos indicó sus
  dumps parseados de símbolos del build **debug** de Windows 1.03 de
  KERNEL/USER/GDI (`win1.03/reversing/*syms.txt` en su repo de
  investigación). Esos dumps los produce su herramienta
  [`symread`](https://github.com/starfrost013/symread) a partir de los
  ficheros `.SYM` originales de Microsoft. Nuestro Pass 21 los lee,
  cruza los nombres con nuestros exports de retail (`.DEF`) y emite
  tablas de referencia por módulo en
  `docs/analysis/<MODULE>_starfrost_symbols.md`. De los 2017 símbolos
  del debug, 520 se confirman por coincidencia de nombre con los
  exports retail que ya teníamos. **Usado con la invitación explícita
  de starfrost** en ese mismo email.

- **[starfrost013/modern-personality-runtime](https://github.com/starfrost013/modern-personality-runtime)** —
  documentación y helpers para ejecutar toolchains legacy MASM 4.0 / MSC
  4.0 en sistemas operativos modernos. Seguimos convenciones similares.

- **El canon de libros de DOS / Windows internals** — *Windows Internals*
  (Matt Pietrek), *Undocumented Windows* (Andrew Schulman et al.),
  *Writing Windows Device Drivers* (Daniel Norton). Conocimiento público
  de estos libros informa la estructura de nuestras heurísticas y nuestra
  base de conocimiento de la API Windows.

- **La comunidad de decomp** — proyectos como
  [n64decomp/sm64](https://github.com/n64decomp/sm64),
  [zeldaret/oot](https://github.com/zeldaret/oot),
  [pret/pokered](https://github.com/pret/pokered) y otros demostraron
  que la recompilación byte-exact de software legacy desde código
  fuente humano-legible es alcanzable y valiosa. Estamos muy lejos de su
  alcance o profundidad, pero compartimos la filosofía.

### Herramientas que usamos

- **[Capstone](https://www.capstone-engine.org/)** — para desensamblar
  x86 16-bit. Sin esto nada de esto es posible.
- **[Keystone](https://www.keystone-engine.org/)** — para re-ensamblado
  opcional de instrucciones editadas (cuando el usuario lo opta in con el
  marcador `[ASM]`).
- **[DOSBox-X](https://dosbox-x.com/)** — para arrancar Windows 1.03
  realmente con nuestros binarios reconstruidos y verificar que todo
  funciona visualmente.
- **[mtools](https://www.gnu.org/software/mtools/)** — para leer/escribir
  la imagen de disquete que usa DOSBox-X.
- **Python 3.10+** standard library — para todo el pipeline.

### Ayuda de la IA

Este proyecto se desarrolló en colaboración estrecha con modelos de
lenguaje grandes, principalmente:

- **Cascade** (Windsurf IDE), ejecutando la familia de modelos Claude de
  Anthropic.

La IA escribió la mayor parte del código Python y bash, sugirió
heurísticas, generó descripciones de funciones, y ayudó a depurar. Yo
(Elías, con 16 años) aporté los objetivos, las decisiones arquitectónicas,
los vetos cuando la IA tiraba por caminos equivocados, la verificación, y
las decisiones de publicación.

Esto no se anonimiza. Lo decimos claramente porque la honestidad importa
más que el ego.

### Disclaimers honestos

- Los nombres de función que usamos (`GETVERSION`, `LSTRCPY`,
  `CREATEWINDOW`, etc.) vienen de las tablas de exports públicas de los
  binarios NE de Windows 1.03. Cualquiera con `strings` y un editor hex
  los puede ver. No son contenido creativo nuestro.
- Las descripciones de funciones se generan heurísticamente por nuestros
  scripts en base a:
  - Una pequeña base de conocimiento escrita a mano de APIs Win 1.x.
  - Convenciones de naming.
  - Pattern matching de comportamiento.
  Son best-effort, no autoritativas. Muchas son incorrectas. No las cites
  como documentación.
- Las secuencias de bytes raw que aparecen como comentarios en los `.asm`
  están derivadas de los binarios de Microsoft. Las incluimos como
  material de referencia citado con fines de investigación / educativos
  (ver [LEGAL.md](LEGAL.md)).
- Windows es una marca registrada de Microsoft Corporation. Este proyecto
  no está afiliado a Microsoft.
