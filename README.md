# Local Trading Research (Beginner-Friendly)

A simple, local-first Python project for learning trading research workflows.

This repository is intentionally small and readable. It uses scripts (not notebooks) and a local SQLite database so you can run everything on your machine.

## Phase 1 Scope (Current)

This first phase sets up:
- Project structure
- Python requirements
- SQLite database choice + initialization scaffold
- Initial script scaffolds for ingestion, features, strategy, and backtest

Future phases will implement full data flow and strategy logic.

## Why SQLite?

We use **SQLite** because it is:
- Built into Python (`sqlite3` module)
- File-based (no separate database server needed)
- Easy to inspect and back up
- Great for local-first beginner projects

Database file path:
- `data/trading_research.db`

## Project Structure

```text
.
├── data/
│   └── (SQLite DB will be created here)
├── scripts/
│   ├── init_db.py
│   ├── ingest_data.py
│   ├── engineer_features.py
│   ├── run_strategy.py
│   └── backtest.py
├── sql/
│   └── schema.sql
├── src/
│   └── trading_research/
│       ├── __init__.py
│       └── paths.py
├── tests/
│   └── test_paths.py
├── requirements.txt
└── README.md
```

## Setup (Exact Commands)

```bash
# 1) Create and activate a virtual environment
python3 -m venv .venv
source .venv/bin/activate

# 2) Install dependencies
pip install --upgrade pip
pip install -r requirements.txt
pip install -e .
```

## Run (Phase 1 Commands)

```bash
# Initialize local SQLite database and tables
python scripts/init_db.py

# Run scaffold scripts (they currently print next-step TODOs)
python scripts/ingest_data.py
python scripts/engineer_features.py
python scripts/run_strategy.py
python scripts/backtest.py

# Run tests
pytest -q
```

## Assumptions (Phase 1)

1. You want a local-only workflow first (no cloud dependencies).
2. You prefer readability and explicit scripts over abstractions.
3. We start with one symbol and daily bar data in future phases.
4. Strategy and backtester can start simple and be extended later.

## Next Phase Preview

Phase 2 can implement:
- Real ingestion (CSV or API)
- Basic feature engineering (returns, moving averages)
- One strategy signal
- One simple backtest loop
