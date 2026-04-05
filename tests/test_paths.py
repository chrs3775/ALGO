from trading_research.paths import DATA_DIR, DB_PATH, SCHEMA_PATH


def test_project_paths_have_expected_names() -> None:
    assert DATA_DIR.name == "data"
    assert DB_PATH.name == "trading_research.db"
    assert SCHEMA_PATH.name == "schema.sql"
