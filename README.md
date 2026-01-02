# Telco Customer Churn Prediction Model

## Overview
This project focuses on building an end-to-end **customer churn prediction model** to identify users who are likely to discontinue a service. The goal is to demonstrate a complete applied data science workflow — from data exploration and feature engineering to model training, evaluation, and business interpretation.

Customer churn is a critical business problem across industries such as subscription services, fintech, telecom, and SaaS. Accurately predicting churn enables organizations to take proactive retention actions and optimize customer lifetime value.

---

## Objectives
- Explore and understand customer behavior patterns related to churn  
- Engineer meaningful features from raw customer data  
- Train and evaluate predictive models for churn classification  
- Compare model performance using appropriate metrics  
- Translate model outputs into actionable business insights  

---

## Dataset
The dataset contains customer-level information including:
- Demographic attributes  
- Account and subscription details  
- Usage and engagement metrics  
- Billing and tenure information  
- Binary churn indicator  

> **Note:** The dataset has been cleaned and preprocessed for modeling, including handling missing values, encoding categorical variables, and scaling numerical features where appropriate.

---

## Methodology

### 1. Exploratory Data Analysis (EDA)
- Analyzed churn rates across customer segments  
- Identified relationships between churn and tenure, usage, and pricing variables  
- Visualized feature distributions and correlations  

### 2. Feature Engineering
- Created derived features such as tenure buckets and aggregated usage metrics  
- Encoded categorical variables using appropriate techniques  
- Ensured feature consistency for model input  

### 3. Modeling
Several classification models were trained and evaluated, including:
- Logistic Regression (baseline, interpretable model)
- Tree-based models (e.g., Random Forest / Gradient Boosting)
- Additional models explored as needed

Hyperparameter tuning was performed to optimize performance.

---

## Evaluation Metrics
Models were evaluated using metrics appropriate for churn prediction:
- ROC-AUC  
- Precision and Recall  
- F1-score  
- Confusion Matrix  

Special attention was given to **recall**, as identifying potential churners is often more valuable than minimizing false positives.

---

## Key Insights
- Customer tenure and usage intensity are strong predictors of churn  
- Pricing and contract-related features significantly influence churn likelihood  
- Tree-based models capture non-linear relationships more effectively, while logistic regression provides interpretability  

These insights can inform targeted retention strategies such as personalized offers or early intervention campaigns.

---

## Tech Stack
- **Programming Language:** Python  
- **Libraries:** pandas, numpy, scikit-learn, matplotlib, seaborn  
- **Modeling:** Logistic Regression, Tree-based classifiers  
- **Visualization:** Matplotlib / Seaborn  

---

## Project Structure
