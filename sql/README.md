# SQL Pipeline Overview

This folder contains the SQL scripts used to build the data layer
for the Telco Customer Churn prediction project.

## Files

- `setup.sql`  
  Creates schemas (`raw`, `processed`) and the raw staging table.

- `clean_customer_churn.sql`  
  Transforms raw customer data into a clean, analytics-ready table:
  - Converts Yes/No flags to booleans
  - Handles "No internet service" as NULL
  - Safely casts numeric fields
  - Writes final output to `processed.customer_churn_clean`

- `export_processed_data.sql`  
  Optional helper script to export the cleaned table to CSV
  for downstream analysis (e.g., Python / Colab).
  > Note: The export path (`/tmp/`) may need to be modified depending on your local database environment.

## Data Flow

Raw CSV → `raw.customer_churn_raw`  
→ SQL cleaning → `processed.customer_churn_clean`  
→ Python EDA / modeling

See the [main README](../README.md) for the full pipeline and modeling steps.

Alternatively, the cleaned dataset is available in
[`data/processed/telco_customer_churn_clean.csv`](../data/processed/telco_customer_churn_clean.csv)
for direct use without running the SQL pipeline.
