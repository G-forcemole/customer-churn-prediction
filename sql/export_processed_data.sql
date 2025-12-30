-- export_processed_data.sql
-- ---------------------------------------------
-- Exports the cleaned churn table to CSV.
--
-- IMPORTANT:
--  - The output path must be updated for your system.
--  - '/tmp' is a temporary directory on macOS/Linux.
--  - On Windows or cloud databases, this path will not work.

-- Example (macOS/Linux):
--   /tmp/telco_customer_churn_clean.csv
--
-- Example (custom path):
--   /Users/yourname/Documents/telco_customer_churn_clean.csv
--
-- ---------------------------------------------

COPY (
    SELECT *
    FROM processed.customer_churn_clean
)
TO '/tmp/telco_customer_churn_clean.csv'
WITH CSV HEADER;