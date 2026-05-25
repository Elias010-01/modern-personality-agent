"""Pipeline de analisis semantico de Windows 1.03.

Fases:
  pass1_patterns    - extrae patrones por funcion (prologo, epilogo, llamadas, INT)
  pass2_callgraph   - construye call graph completo usando fixups simbolicos
  pass3_classify    - clasificacion heuristica + descripcion automatica
  pass4_annotate    - inyecta comentarios en los .asm preservando byte-exact
  pass5_index       - genera indice maestro Markdown

Diseño:
  - Cada fase es idempotente y retomable.
  - Estado en state/analyze/progress.json
  - Logs en logs/analyze-<fase>.log
  - Cada fase puede ejecutarse independientemente.
"""
