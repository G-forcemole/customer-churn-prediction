CREATE SCHEMA IF NOT EXISTS raw;
CREATE SCHEMA IF NOT EXISTS processed;

CREATE TABLE IF NOT EXISTS raw.customer_churn (
  customerID TEXT,
  gender TEXT,
  SeniorCitizen INT,
  Partner TEXT,
  Dependents TEXT,
  tenure INT,
  PhoneService TEXT,
  MultipleLines TEXT,
  InternetService TEXT,
  OnlineSecurity TEXT,
  OnlineBackup TEXT,
  DeviceProtection TEXT,
  TechSupport TEXT,
  StreamingTV TEXT,
  StreamingMovies TEXT,
  Contract TEXT,
  PaperlessBilling TEXT,
  PaymentMethod TEXT,
  MonthlyCharges NUMERIC,
  TotalCharges TEXT,
  Churn TEXT
);