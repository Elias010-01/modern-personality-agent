"""Shared pytest fixtures and path setup for the test suite.

Adds bootstrap/ to sys.path so tests can `import blibbet_mod`,
`import mod_engine`, etc., without installing the project.
"""
from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
BOOTSTRAP = ROOT / "bootstrap"
if str(BOOTSTRAP) not in sys.path:
    sys.path.insert(0, str(BOOTSTRAP))
