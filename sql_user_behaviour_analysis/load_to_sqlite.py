import sqlite3
from pathlib import Path
import pandas as pd

PROJECT_DIR = Path(__file__).resolve().parent
DATA_PATH = PROJECT_DIR / "data" / "online_retail.csv"
DB_PATH = PROJECT_DIR / "online_retail.db"
TABLE_NAME = "online_retail"


def main() -> None:
    if not DATA_PATH.exists():
        raise FileNotFoundError(
            f"CSV not found at {DATA_PATH}. Download the dataset, convert it to CSV, and place it in the data folder."
        )

    df = pd.read_csv(DATA_PATH)

    expected_cols = [
        "InvoiceNo",
        "StockCode",
        "Description",
        "Quantity",
        "InvoiceDate",
        "UnitPrice",
        "CustomerID",
        "Country",
    ]

    missing = [col for col in expected_cols if col not in df.columns]
    if missing:
        raise ValueError(f"Missing required columns: {missing}")

    df = df[expected_cols].copy()
    df["InvoiceDate"] = pd.to_datetime(df["InvoiceDate"], errors="coerce")
    df["InvoiceDate"] = df["InvoiceDate"].dt.strftime("%Y-%m-%d %H:%M:%S")
    df["CustomerID"] = df["CustomerID"].astype("string")

    conn = sqlite3.connect(DB_PATH)
    try:
        df.to_sql(TABLE_NAME, conn, if_exists="replace", index=False)
        print(f"Loaded {len(df):,} rows into {DB_PATH.name}:{TABLE_NAME}")
    finally:
        conn.close()


if __name__ == "__main__":
    main()
