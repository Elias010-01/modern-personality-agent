"""Pass 6: genera un HTML interactivo del call graph completo.

Salida:
  docs/analysis/callgraph.html   - grafo navegable standalone (vis-network)
  docs/analysis/functions.html   - explorador de funciones con filtros

Es autocontenido: usa vis-network desde CDN. Solo necesitas abrir el HTML
en el navegador (incluido Edge/Chrome/Firefox).
"""

from __future__ import annotations

import json
import sys
from collections import Counter, defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from state import REPO, STATE_DIR, list_modules, log  # noqa: E402

PASS3_DIR = STATE_DIR / "pass3"
DOCS_DIR = REPO / "docs" / "analysis"

# Clasificacion de modulos por tipo
MODULE_KIND = {
    # Core
    "KERNEL": "kernel", "GDI": "kernel", "USER": "kernel",
    "MSDOS": "shell", "MSDOSD": "shell",
    # Drivers de sistema
    "SYSTEM": "driver", "SOUND": "driver", "COMM": "driver", "SPOOLER": "driver",
    # Mouse drivers
    "MOUSE": "driver", "ATTMOUSE": "driver", "JOYMOUSE": "driver", "LMOUSE": "driver",
    "MSMOUSE1": "driver", "MSMOUSE2": "driver", "NOMOUSE": "driver", "FTG": "driver",
    # Keyboard drivers
    "ATTKBD": "driver", "LPC": "driver",
    # Display drivers
    "CGA": "display", "EGAHIBW": "display", "EGAHIRES": "display", "EGALORES": "display",
    "EGAMONO": "display", "HERCULES": "display", "IBMGRX": "display", "ATTDC": "display",
    "ATTDEB": "display", "GENIUS": "display",
    # Printer drivers
    "CITOH": "printer", "EPSON": "printer", "EPSONMX": "printer", "HP7470A": "printer",
    "HP7475A": "printer", "HP7550A": "printer", "HPLASER": "printer", "HPLASERP": "printer",
    "LQ1500": "printer", "NEC3550": "printer", "NECP2": "printer", "OKI92": "printer",
    "PSCRIPT": "printer", "SG10": "printer", "THINKJET": "printer", "TI850": "printer",
    "TOSH": "printer", "TTY": "printer", "XER4020": "printer",
    # Keyboard layouts
    "USA": "keymap", "UK": "keymap", "DENMARK": "keymap", "FRANCE": "keymap",
    "GERMANY": "keymap", "ITALY": "keymap", "NORWAY": "keymap", "SPAIN": "keymap",
    "SWEDEN": "keymap",
    # Apps
    "CALC": "app", "CALENDAR": "app", "CARDFILE": "app", "CLIPBRD": "app",
    "CLOCK": "app", "CONTROL": "app", "NOTEPAD": "app", "PAINT": "app",
    "REVERSI": "app", "SETUP": "app", "TERMINAL": "app", "WRITE": "app",
}

KIND_COLOR = {
    "kernel":  "#e74c3c",   # rojo
    "shell":   "#e67e22",   # naranja
    "driver":  "#3498db",   # azul
    "display": "#9b59b6",   # morado
    "printer": "#95a5a6",   # gris
    "keymap":  "#7f8c8d",   # gris oscuro
    "app":     "#2ecc71",   # verde
    "unknown": "#34495e",
}


def main() -> int:
    log("pass6_visualize", "BEGIN")

    modules = list_modules()
    nodes: list[dict] = []
    edges_counter: dict[tuple[str, str], int] = defaultdict(int)
    funcs_by_module: dict[str, list[dict]] = {}

    for mod in modules:
        f = PASS3_DIR / f"{mod}.json"
        if not f.exists():
            funcs_by_module[mod] = []
            continue
        data = json.loads(f.read_text(encoding="utf-8"))
        funcs = data.get("functions", [])
        funcs_by_module[mod] = [
            {
                "name": fn.get("name"),
                "offset": fn.get("offset"),
                "kind": fn.get("kind"),
                "n_instr": fn.get("num_instructions"),
                "desc": fn.get("description"),
                "tags": fn.get("semantic_tags", []),
                "confidence": fn.get("confidence"),
                "callers": fn.get("callers", []),
                "callees_intra": fn.get("callees_intra", []),
                "callees_inter": fn.get("callees_inter", []),
            }
            for fn in funcs
        ]
        # construir aristas inter-modulo
        for fn in funcs:
            for c in fn.get("callees_inter", []) or []:
                tgt = c.get("module")
                if tgt and tgt != mod:
                    edges_counter[(mod, tgt)] += 1

    # Nodes
    for mod in modules:
        kind = MODULE_KIND.get(mod, "unknown")
        nfuncs = len(funcs_by_module.get(mod, []))
        nodes.append({
            "id": mod,
            "label": mod,
            "title": f"{mod}\n{kind}\n{nfuncs} funcs",
            "color": KIND_COLOR[kind],
            "kind": kind,
            "value": max(nfuncs, 1),
            "nfuncs": nfuncs,
        })

    # Edges
    edges: list[dict] = []
    max_w = max(edges_counter.values()) if edges_counter else 1
    for (src, dst), n in edges_counter.items():
        edges.append({
            "from": src,
            "to": dst,
            "value": n,
            "title": f"{src} -> {dst}: {n} calls",
            "width": 1 + 4 * (n / max_w),
        })

    # Render HTML
    DOCS_DIR.mkdir(parents=True, exist_ok=True)
    out = DOCS_DIR / "callgraph.html"

    payload = {
        "nodes": nodes,
        "edges": edges,
        "funcs_by_module": funcs_by_module,
        "kind_colors": KIND_COLOR,
        "stats": {
            "total_modules": len(nodes),
            "total_edges": len(edges),
            "total_functions": sum(n["nfuncs"] for n in nodes),
        },
    }

    html = HTML_TEMPLATE.replace("__PAYLOAD__", json.dumps(payload, ensure_ascii=False))
    out.write_text(html, encoding="utf-8")
    log("pass6_visualize", f"Generated {out}")
    log("pass6_visualize", f"Stats: {payload['stats']}")
    return 0


HTML_TEMPLATE = r"""<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<title>Windows 1.03 - Call Graph Interactivo</title>
<script src="https://unpkg.com/vis-network@9.1.9/standalone/umd/vis-network.min.js"></script>
<style>
  * { box-sizing: border-box; }
  html, body { margin:0; padding:0; height:100%; font-family: 'Segoe UI', Tahoma, sans-serif; background:#1a1a2e; color:#eee; }
  header {
    background: linear-gradient(135deg, #16213e, #0f3460);
    padding: 12px 20px; display:flex; justify-content:space-between; align-items:center;
    border-bottom: 2px solid #e94560;
  }
  header h1 { margin:0; font-size:18px; }
  header .stats { font-size:13px; opacity:0.85; }
  header .stats b { color:#e94560; }
  #main { display:flex; height: calc(100vh - 60px); }
  #graph { flex:1; background:#0f0f1f; position:relative; }
  #sidebar {
    width: 420px; background:#16213e; border-left:2px solid #e94560;
    overflow-y:auto; padding: 16px; font-size:13px;
  }
  #sidebar h2 { margin-top:0; color:#e94560; font-size:18px; border-bottom:1px solid #444; padding-bottom:6px; }
  #sidebar .module-meta { padding:8px 0; opacity:0.8; }
  #sidebar .func-card {
    background: #1a1a2e; padding: 8px 10px; margin: 6px 0;
    border-left: 3px solid #444; border-radius: 4px;
  }
  #sidebar .func-card.high { border-left-color: #2ecc71; }
  #sidebar .func-card.medium { border-left-color: #f39c12; }
  #sidebar .func-card.low { border-left-color: #7f8c8d; }
  #sidebar .func-card.unknown { border-left-color: #34495e; }
  #sidebar .func-name { font-weight:bold; color:#fff; font-size:13px; }
  #sidebar .func-meta { font-size:11px; opacity:0.7; margin-top:2px; }
  #sidebar .func-desc { font-size:12px; margin-top:4px; color:#bbb; }
  #sidebar .func-tags { margin-top:4px; }
  #sidebar .tag {
    display:inline-block; background:#0f3460; color:#eee;
    padding:1px 6px; margin:1px; font-size:10px; border-radius:8px;
  }
  #controls {
    position: absolute; top:12px; left:12px;
    background: rgba(22,33,62,0.92); padding:10px 14px; border-radius:6px;
    border:1px solid #444; max-width: 280px;
  }
  #controls h3 { margin:0 0 8px 0; color:#e94560; font-size:13px; }
  #controls label { display:block; font-size:12px; margin:3px 0; cursor:pointer; }
  #controls input[type=text] {
    width: 100%; padding:4px 6px; background:#0f0f1f; color:#eee;
    border:1px solid #444; border-radius:3px; margin-top:6px;
  }
  .legend-dot { display:inline-block; width:10px; height:10px; border-radius:50%; margin-right:4px; vertical-align:middle; }
  #empty-hint { color:#888; text-align:center; padding:30px 10px; font-style:italic; }
  .pill { background:#0f3460; color:#fff; padding:2px 8px; border-radius:10px; font-size:11px; }
</style>
</head>
<body>

<header>
  <h1>Windows 1.03 - Interactive Call Graph</h1>
  <div class="stats" id="hdr-stats"></div>
</header>

<div id="main">
  <div id="graph">
    <div id="controls">
      <h3>Filters</h3>
      <label><input type="checkbox" data-kind="kernel"  checked> <span class="legend-dot" style="background:#e74c3c"></span> kernel core (KERNEL, GDI, USER)</label>
      <label><input type="checkbox" data-kind="shell"   checked> <span class="legend-dot" style="background:#e67e22"></span> shell (MSDOS, MSDOSD)</label>
      <label><input type="checkbox" data-kind="driver"  checked> <span class="legend-dot" style="background:#3498db"></span> system drivers (SYSTEM, SOUND, COMM, mice...)</label>
      <label><input type="checkbox" data-kind="display" checked> <span class="legend-dot" style="background:#9b59b6"></span> display drivers (CGA, EGA, HERCULES...)</label>
      <label><input type="checkbox" data-kind="printer" checked> <span class="legend-dot" style="background:#95a5a6"></span> printer drivers</label>
      <label><input type="checkbox" data-kind="keymap"  checked> <span class="legend-dot" style="background:#7f8c8d"></span> keyboard layouts</label>
      <label><input type="checkbox" data-kind="app"     checked> <span class="legend-dot" style="background:#2ecc71"></span> apps (CALC, PAINT, WRITE...)</label>
      <input type="text" id="search" placeholder="Search module... (e.g. USER)">
    </div>
  </div>
  <div id="sidebar">
    <div id="empty-hint">Click a node to see its functions.</div>
  </div>
</div>

<script>
const PAYLOAD = __PAYLOAD__;
document.getElementById("hdr-stats").innerHTML =
  `<b>${PAYLOAD.stats.total_modules}</b> modules &nbsp; <b>${PAYLOAD.stats.total_functions}</b> functions &nbsp; <b>${PAYLOAD.stats.total_edges}</b> inter-module edges`;

const container = document.getElementById("graph");
const data = {
  nodes: new vis.DataSet(PAYLOAD.nodes.map(n => ({
    ...n,
    shape: 'dot',
    size: 12 + Math.log2(Math.max(n.nfuncs, 1)) * 4,
    font: { color: '#fff', size: 13, strokeWidth: 2, strokeColor: '#000' },
  }))),
  edges: new vis.DataSet(PAYLOAD.edges.map(e => ({
    ...e,
    arrows: 'to',
    color: { color: 'rgba(255,255,255,0.18)', highlight: '#e94560' },
    smooth: { type: 'continuous' },
  }))),
};

const options = {
  physics: {
    barnesHut: {
      gravitationalConstant: -8000,
      springConstant: 0.04,
      springLength: 200,
      damping: 0.4,
    },
    stabilization: { iterations: 200 },
  },
  interaction: { hover: true, tooltipDelay: 100 },
  nodes: { borderWidth: 2 },
  edges: { selectionWidth: 3 },
};

const network = new vis.Network(container, data, options);

network.on("click", function(params) {
  if (!params.nodes || params.nodes.length === 0) return;
  const mod = params.nodes[0];
  showModule(mod);
});

function showModule(mod) {
  const funcs = PAYLOAD.funcs_by_module[mod] || [];
  const node = PAYLOAD.nodes.find(n => n.id === mod);
  const sb = document.getElementById("sidebar");
  let html = `<h2>${mod}</h2>`;
  html += `<div class="module-meta">`;
  html += `<span class="pill" style="background:${node.color}">${node.kind}</span> `;
  html += `<b>${funcs.length}</b> functions`;
  html += `</div>`;

  // Cuenta confidence
  const cc = { high:0, medium:0, low:0, unknown:0 };
  funcs.forEach(f => { cc[f.confidence || 'unknown']++; });
  html += `<div class="module-meta" style="font-size:11px;">confidence: `;
  html += `<span class="tag" style="background:#2ecc71">${cc.high} high</span> `;
  html += `<span class="tag" style="background:#f39c12">${cc.medium} medium</span> `;
  html += `<span class="tag" style="background:#7f8c8d">${cc.low} low</span> `;
  html += `<span class="tag" style="background:#34495e">${cc.unknown} unknown</span>`;
  html += `</div>`;

  // Lista funciones, ordenadas por confidence (high primero)
  const order = { high:0, medium:1, low:2, unknown:3 };
  const sorted = [...funcs].sort((a,b) => (order[a.confidence] - order[b.confidence]) || (a.name||'').localeCompare(b.name||''));

  sorted.forEach(f => {
    const conf = f.confidence || 'unknown';
    html += `<div class="func-card ${conf}">`;
    html += `<div class="func-name">${escapeHtml(f.name || '?')}</div>`;
    html += `<div class="func-meta">`;
    if (f.offset !== null && f.offset !== undefined) html += `offset 0x${f.offset.toString(16).toUpperCase().padStart(4,'0')} &nbsp; `;
    html += `${f.kind || ''} &nbsp; ${f.n_instr || 0} instr &nbsp; ${conf}`;
    html += `</div>`;
    if (f.desc) html += `<div class="func-desc">${escapeHtml(f.desc)}</div>`;
    if (f.tags && f.tags.length) {
      html += `<div class="func-tags">`;
      f.tags.slice(0,8).forEach(t => { html += `<span class="tag">${escapeHtml(t)}</span>`; });
      html += `</div>`;
    }
    html += `</div>`;
  });

  sb.innerHTML = html;
}

function escapeHtml(s) {
  return String(s).replace(/[&<>"']/g, c => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));
}

// Filtros por kind
document.querySelectorAll('#controls input[type=checkbox]').forEach(cb => {
  cb.addEventListener('change', () => {
    const allowed = new Set(
      Array.from(document.querySelectorAll('#controls input[type=checkbox]:checked'))
        .map(x => x.dataset.kind)
    );
    const updates = PAYLOAD.nodes.map(n => ({ id: n.id, hidden: !allowed.has(n.kind) }));
    data.nodes.update(updates);
  });
});

// Buscar
document.getElementById("search").addEventListener("input", (e) => {
  const q = (e.target.value || '').trim().toUpperCase();
  if (!q) { network.fit(); return; }
  const hit = PAYLOAD.nodes.find(n => n.id.startsWith(q));
  if (hit) {
    network.focus(hit.id, { scale: 1.2, animation: { duration: 400 } });
    network.selectNodes([hit.id]);
    showModule(hit.id);
  }
});

// Click inicial sugerido en KERNEL
network.once("afterDrawing", () => {
  showModule("KERNEL");
});
</script>
</body>
</html>
"""


if __name__ == "__main__":
    sys.exit(main())
