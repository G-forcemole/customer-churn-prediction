-- Builds a cleaned, analysis-ready table from raw.customer_churn_raw

DROP TABLE IF EXISTS processed.customer_churn_clean;

CREATE TABLE processed.customer_churn_clean AS
SELECT
  customerid,

  -- Booleans
  (gender = 'Male') AS is_male,
  (seniorcitizen = 1) AS is_senior,
  (partner = 'Yes') AS has_partner,
  (dependents = 'Yes') AS has_dependents,

  tenure,

  (phoneservice = 'Yes') AS has_phone_service,
  -- MultipleLines can be 'Yes', 'No', 'No phone service'
  CASE
    WHEN phoneservice = 'No' THEN NULL
    WHEN multiplelines = 'Yes' THEN TRUE
    WHEN multiplelines = 'No' THEN FALSE
    ELSE NULL
  END AS has_multiple_lines,

  internetservice,
  (internetservice <> 'No') AS has_internet,

  -- For these columns, treat "No internet service" as NULL (not applicable)
  CASE WHEN internetservice = 'No' THEN NULL ELSE onlinesecurity END AS onlinesecurity,
  CASE WHEN internetservice = 'No' THEN NULL ELSE onlinebackup END AS onlinebackup,
  CASE WHEN internetservice = 'No' THEN NULL ELSE deviceprotection END AS deviceprotection,
  CASE WHEN internetservice = 'No' THEN NULL ELSE techsupport END AS techsupport,
  CASE WHEN internetservice = 'No' THEN NULL ELSE streamingtv END AS streamingtv,
  CASE WHEN internetservice = 'No' THEN NULL ELSE streamingmovies END AS streamingmovies,

  contract,
  (paperlessbilling = 'Yes') AS is_paperless,

  paymentmethod,

  monthlycharges::numeric(10,2) AS monthlycharges,

  -- TotalCharges is TEXT we use TRIM (because it contains blanks). Convert safely.
  NULLIF(TRIM(totalcharges), '')::numeric(10,2) AS totalcharges,

  (churn = 'Yes') AS churn

FROM raw.customer_churn_raw;