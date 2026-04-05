-- Raw OHLCV price data (future ingestion target)
CREATE TABLE IF NOT EXISTS prices (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    symbol TEXT NOT NULL,
    ts TEXT NOT NULL,
    open REAL,
    high REAL,
    low REAL,
    close REAL,
    volume REAL,
    UNIQUE(symbol, ts)
);

-- Engineered features (future pipeline target)
CREATE TABLE IF NOT EXISTS features (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    symbol TEXT NOT NULL,
    ts TEXT NOT NULL,
    feature_name TEXT NOT NULL,
    feature_value REAL,
    UNIQUE(symbol, ts, feature_name)
);

-- Strategy signals (future strategy target)
CREATE TABLE IF NOT EXISTS signals (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    symbol TEXT NOT NULL,
    ts TEXT NOT NULL,
    signal INTEGER NOT NULL,
    reason TEXT,
    UNIQUE(symbol, ts)
);

-- Backtest results (future backtest target)
CREATE TABLE IF NOT EXISTS backtest_results (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    run_ts TEXT NOT NULL,
    symbol TEXT NOT NULL,
    metric_name TEXT NOT NULL,
    metric_value REAL,
    notes TEXT
);
