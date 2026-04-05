"""Centralized project paths used by scripts.

Keeping paths in one place makes beginner projects easier to maintain.
"""

from pathlib import Path

PROJECT_ROOT = Path(__file__).resolve().parents[2]
DATA_DIR = PROJECT_ROOT / "data"
DB_PATH = DATA_DIR / "trading_research.db"
SCHEMA_PATH = PROJECT_ROOT / "sql" / "schema.sql"
