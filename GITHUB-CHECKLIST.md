# GitHub Upload Checklist · Lista para subir a GitHub

> Esta es la guia para cuando conectes el repositorio a GitHub. **No subas
> nada todavia** hasta que hayas revisado cada punto.

---

## 0. Estado antes de subir

Antes de hacer `git init` y `git push`, verifica:

```bash
# 1. Build sigue byte-exact?
python3 bootstrap/build_from_source.py
# -> "68/69 modulos byte-exact desde fuente" (MSDOS diff por mod del user)

# 2. Pipeline de analisis sigue funcionando?
python3 bootstrap/analyze/pass1_patterns.py
# -> "DONE. Stats: {'modules': 69, ...}"

# 3. Mod system funciona?
python3 bootstrap/mod_system.py list
# -> lista elias-windows + win104

# 4. Documentacion HTML existe?
ls docs/analysis/callgraph.html
# -> presente, ~1.3MB
```

## 1. Files que se SUBEN (revisar)

```
README.md                  README bilingue
STORY.md                   La historia honesta bilingue
CREDITS.md                 Reconocimientos a starfrost + IA + tooling
LEGAL.md                   Disclaimer copyright Microsoft
LICENSE                    MIT para nuestros scripts
CHANGELOG.md               Cambios cronologicos
PROGRESS.md                Notas de progreso historicas
.gitignore                 Excluye binarios Microsoft

bootstrap/                 Pipeline completo (Python + bash)
bootstrap/analyze/         Pipeline de analisis semantico (7 passes)

src/*/seg*.asm             ASM humano-legible con bytes en comentario
src/*/*.def                Module definition files
src/*/layout.json          Mapeo de segmentos

docs/                      Documentacion auto-generada (Markdown + HTML)

mods/elias-windows/        El mod showcase del autor
mods/elias-windows/meta.toml
mods/elias-windows/README.md
mods/win104/               Mod de ejemplo (cambia version)
mods/win104/meta.toml
mods/win104/README.md

config/                    Configuracion del proyecto
state/analyze/pass3/       Descripciones semanticas (JSON)
state/analyze/pass1_summary.json
state/analyze/pass2_global.json
state/analyze/pass3_summary.json
state/schema.sql           Schema de la DB
```

## 2. Files que NO SE SUBEN (verificar exclusion)

```
original/*.EXE             Binarios Microsoft (copyright)
built/*.EXE                Binarios reconstruidos (derivados)
runtime/                   DOSBox-X + IMG (153 MB toolchain)
vendor/                    Repos clonados (812 MB)
backups/                   Backups internos (112 MB)
versions/                  Snapshots historicos (.tar.gz pesados)
workspaces/                Ghidra workspaces
.ghidra-projects/          Caches de Ghidra
mods/*/img/                Binarios moddeados (derivados)
mods/*/patches/*/ne_meta.bin   ne_meta moddeados (derivados)
src/*/ne_meta.bin          ne_meta originales (skeleton Microsoft)
src/*/*.reloc.bin          Tablas de relocation (derivadas)
.venv/                     Python virtualenv
__pycache__/               Python cache
logs/                      Logs internos
state/mpa.db               DB con potencialmente mas info derivada
```

## 3. Test de dry-run

Antes de `git push`, verifica que `git status` no muestre ningun binario
sospechoso:

```bash
git init -b main
git add .
git status | grep -iE "\.(exe|drv|dll|ovl|com|bin)$"
# Salida esperada: VACIA. Si aparece algo, hay que excluirlo en .gitignore.
```

Verifica tambien tamano:

```bash
git ls-files | xargs du -b | awk '{s+=$1} END {print s/1024/1024 " MB"}'
# Esperado: ~30-50 MB (principalmente los .asm en src/)
```

Si supera 100 MB hay algo mal.

## 4. Crear el repo en GitHub

Recomendado:
- **Nombre**: `modern-personality-agent` (mismo)
- **Visibility**: Public
- **License**: MIT (ya tenemos LICENSE en el repo)
- **Topics**: `reverse-engineering`, `windows-1`, `decompilation`,
  `byte-exact`, `assembly`, `nostalgia`, `retrocomputing`,
  `ai-collaboration`, `microsoft-windows`, `binary-analysis`

**Importante**: Anade un **disclaimer en la descripcion**:
> Research / educational project. Binaries not redistributed. See LEGAL.md.

## 5. Subir

```bash
git remote add origin https://github.com/<TU_USUARIO>/modern-personality-agent.git
git branch -M main
git push -u origin main
```

## 6. Post-upload

- Crea un **Issue plantilla** que diga: "If you are Microsoft Corporation
  and would like content removed, please open this issue and we will
  remove it promptly."
- Anade `LEGAL.md` referenced from the README header for visibility.
- Considera anadir un GitHub Action que ejecute el build y verifique
  byte-exact en CI (cuando los contribuidores aporten su propio Windows
  1.03 via secrets).

## 7. Riesgos a tener presentes

1. **DMCA takedown de Microsoft**: posible pero raro para proyectos de
   research de software de 40 años. Si llega, retira inmediatamente todo
   lo derivado (`src/`) y reduce el repo a solo el pipeline + docs.
2. **Trolls**: gente que te dira que "esto no es decompilation real".
   Tu README ya lo dice claramente. Tienes razon, ellos tambien. No
   discutas.
3. **Hype excesivo**: la gente puede exagerar lo que has hecho. Tú mismo
   sé honesto sobre los límites (IA + 1 noche + heurística, no años de
   trabajo manual).

## 8. Como contarlo

Puntos a destacar al postear (Hacker News, r/programming, r/retrocomputing):

- Construido por mí con 16 años, en una noche, con ayuda de IA
- 69/69 modulos byte-exact recompilables
- 3954 funciones documentadas heuristicamente
- Sistema de mods funcional
- Reconoce a starfrost013 desde el primer parrafo
- Enlaza a LEGAL.md
- No saturar: el codigo y la documentacion hablan por si solos
