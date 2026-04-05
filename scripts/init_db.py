"""Initialize the local SQLite database from sql/schema.sql."""

import sqlite3

from trading_research.paths import DATA_DIR, DB_PATH, SCHEMA_PATH


def main() -> None:
    DATA_DIR.mkdir(parents=True, exist_ok=True)

    schema_sql = SCHEMA_PATH.read_text(encoding="utf-8")

    with sqlite3.connect(DB_PATH) as conn:
        conn.executescript(schema_sql)

    print(f"Database initialized at: {DB_PATH}")


if __name__ == "__main__":
    main()
