# The Story · La Historia

🇬🇧 [English](#english) · 🇪🇸 [Espanol](#espanol)

---

## English

### One night

On the night of **May 24 - 25, 2026**, I (Elias, 16) sat down to try
something I had been thinking about for a while: take a real, complete
operating system from the past and turn it into something I could read,
understand, modify and rebuild.

I picked **Microsoft Windows 1.03** (released August 1985, before I was
born by 25 years) because it is small, complete, and historically important
— the first shipping version of Windows that actually ran a useful desktop
environment.

I worked with AI assistance the whole time — primarily Cascade (Windsurf,
running Claude under the hood). I gave the high-level goals, made the
strategic calls, vetoed wrong paths, decided what was honest enough to
publish. The AI wrote most of the Python and bash code, suggested
heuristics, generated descriptions, and never slept.

### The pipeline that worked

After several false starts (trying clean-room reimplementation, fighting
with Keystone for re-assembly, trying to get legacy MASM 4.0 to relink),
the approach that actually worked was simple:

1. **Disassemble** each NE segment with Capstone (x86 16-bit).
2. Emit human-readable assembly **with the raw bytes preserved as
   comments**.
3. Build a custom **builder that reads the bytes from those comments**, not
   from re-assembling the instructions. The instruction text exists for
   humans to read; the bytes are the authority.
4. **Resolve symbolic fixups** so calls between modules show as
   `call far KERNEL.GLOBALALLOC` instead of raw addresses.
5. **Discover functions** heuristically: any label that is the target of a
   `call` is a function entry. Any label following a `ret` with a standard
   prologue is also one.
6. **Describe functions** automatically using:
   - A small knowledge base of well-known Win 1.x APIs (~140 functions).
   - Naming conventions (GET*, SET*, CREATE*, DESTROY*, IS*, ...).
   - Behavioral patterns (uses INT 21h -> DOS caller, ends in iret -> ISR,
     dispatches with many cmp+jcc -> dispatcher, etc.).
7. **Inject the descriptions** as comment blocks in the `.asm` files
   themselves, preserving byte-exact rebuildability.
8. **Build a call graph** from resolved fixups and visualize it
   interactively in HTML.

By around 4 AM I had:

- 69 modules byte-exact.
- 3954 functions annotated.
- A mod system that could swap version strings, splash text, menu labels
  and watch them appear in DOSBox-X.
- Auto-generated documentation for every module.

### What I claim, and what I don't

I claim:

- This is the **first public pipeline** that takes the 69 original Windows
  1.03 binaries and regenerates them byte-exactly from human-readable,
  editable source code, with function-level documentation, in a single
  reproducible workflow.

I do not claim:

- That I personally wrote thousands of lines of Python in one night
  unaided. I did not. AI wrote most of it.
- That the function descriptions are authoritative. They are heuristic
  guesses.
- That this is a true "decompilation to C" like the SM64 / OOT projects.
  It is not. Those projects produce C code that, when compiled with the
  original toolchain, produces the original binary. We produce **annotated
  disassembly** that, when fed through a custom builder, produces the
  original binary.
- That I had original ideas no one else has had. People have disassembled
  Windows 1.x with IDA / Ghidra for decades. The novelty is putting the
  full pipeline (disassemble + annotate + recompile byte-exact + mod +
  document) together publicly, end-to-end, runnable.

### Why publish

Because the next curious person who wants to look inside an old operating
system deserves to find more than a binary blob. They deserve to find
readable source they can step through, modify, break and rebuild.

This is the version of Windows 1.03 I wish I had found six months ago when
I first started getting curious about it.

---

## Español

### Una noche

La noche del **24 - 25 de mayo de 2026**, yo (Elías, con 16 años) me senté a
intentar algo que llevaba tiempo dándome vueltas: coger un sistema
operativo real y completo del pasado y convertirlo en algo que pudiera
leer, entender, modificar y reconstruir.

Elegí **Microsoft Windows 1.03** (publicado en agosto de 1985, 25 años
antes de que yo naciera) porque es pequeño, completo e históricamente
importante — la primera versión de Windows que de verdad llegó a usuarios
con un entorno de escritorio utilizable.

Trabajé con ayuda de IA todo el tiempo — principalmente Cascade (Windsurf,
con Claude debajo). Yo daba los objetivos a alto nivel, tomaba las
decisiones estratégicas, descartaba caminos equivocados, decídía qué era
suficientemente honesto para publicar. La IA escribió la mayor parte del
código Python y bash, sugirió heurísticas, generó descripciones, y no
dormía nunca.

### El pipeline que funcionó

Después de varios intentos fallidos (intentar reimplementación clean-room,
pelearme con Keystone para re-ensamblar, intentar que MASM 4.0 legacy
volviera a linkar), el enfoque que de verdad funcionó fue simple:

1. **Desensamblar** cada segmento NE con Capstone (x86 16-bit).
2. Emitir assembly humano-legible **con los bytes raw preservados como
   comentarios**.
3. Construir un **builder a medida que lee los bytes de esos comentarios**,
   no de re-ensamblar las instrucciones. El texto de las instrucciones
   existe para que los humanos lo lean; los bytes son la autoridad.
4. **Resolver fixups simbólicos** para que las llamadas entre módulos
   aparezcan como `call far KERNEL.GLOBALALLOC` en vez de direcciones raw.
5. **Descubrir funciones** heurísticamente: cualquier etiqueta destino de
   un `call` es entrada de función. Cualquier etiqueta que sigue a un
   `ret` con prólogo estándar también lo es.
6. **Describir funciones** automáticamente usando:
   - Una pequeña base de conocimiento de APIs Win 1.x bien conocidas
     (~140 funciones).
   - Convenciones de naming (GET*, SET*, CREATE*, DESTROY*, IS*, ...).
   - Patrones de comportamiento (usa INT 21h -> DOS caller, termina en
     iret -> ISR, hace muchas cmp+jcc -> dispatcher, etc.).
7. **Inyectar las descripciones** como bloques de comentarios en los `.asm`
   mismos, preservando la reconstruibilidad byte-exact.
8. **Construir un call graph** desde los fixups resueltos y visualizarlo
   interactivamente en HTML.

Hacia las 4 AM tenía:

- 69 módulos byte-exact.
- 3954 funciones anotadas.
- Un sistema de mods que podía cambiar strings de versión, texto de splash,
  etiquetas de menús y verlos aparecer en DOSBox-X.
- Documentación auto-generada para cada módulo.

### Lo que reclamo, y lo que no

Reclamo:

- Que este es el **primer pipeline público** que coge los 69 binarios
  originales de Windows 1.03 y los regenera byte-exactos desde código
  fuente humano legible y editable, con documentación a nivel de función,
  en un workflow reproducible.

NO reclamo:

- Que yo personalmente escribiera miles de líneas de Python en una noche
  sin ayuda. No lo hice. La IA escribió la mayor parte.
- Que las descripciones de funciones sean autoritativas. Son adivinanzas
  heurísticas.
- Que esto sea una verdadera "decompilación a C" como los proyectos SM64 /
  OOT. No lo es. Esos proyectos producen código C que, al compilarse con
  el toolchain original, produce el binario original. Nosotros producimos
  **desensamblado anotado** que, al pasar por un builder a medida,
  produce el binario original.
- Que tuve ideas originales que nadie más haya tenido. La gente lleva
  décadas desensamblando Windows 1.x con IDA / Ghidra. La novedad es
  juntar todo el pipeline (desensamblar + anotar + recompilar byte-exact +
  modear + documentar) públicamente, end-to-end, ejecutable.

### Por qué publicar

Porque la próxima persona curiosa por los sistemas operativos antiguos
merece encontrar algo más que un blob binario. Merece encontrar código
fuente legible por el que pueda navegar, modificar, romper y reconstruir.

Esta es la versión de Windows 1.03 que me hubiera gustado encontrar hace
seis meses cuando empezó a darme curiosidad.
