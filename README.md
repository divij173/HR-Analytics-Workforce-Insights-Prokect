# HR Analytics & Workforce Insights  
**BigQuery • SQL • Looker Studio**

## Overview
This project focuses on transforming raw HR datasets into clean, analytics-ready tables and surfacing decision-ready workforce insights through interactive dashboards. The workflow demonstrates an end-to-end analytics process, from data quality validation and transformation to structured modelling and visualisation.

Public HR datasets from Kaggle were used to simulate real-world analytics scenarios involving employee demographics, performance, satisfaction, and attrition.

---

## Objectives
- Validate and clean raw HR datasets to ensure data reliability  
- Transform and enrich data using SQL for consistent analytical use  
- Design structured analytical tables to support workforce analysis  
- Visualise key HR metrics in Looker Studio to support decision-making  

---

## Tech Stack
- **Data Warehouse:** Google BigQuery  
- **Query Language:** SQL  
- **Visualisation:** Looker Studio  
- **Dataset Source:** Kaggle (HR Analytics datasets)

---

## Data Processing & Modelling

### Data Quality Checks
- Identified and handled null values across employee and performance datasets  
- Detected and resolved duplicate records using primary identifiers  
- Validated dataset consistency prior to downstream analysis  

### Data Transformation
- Created derived attributes using SQL, including:
  - Age group bins  
  - Salary range categories  
  - Full state names from abbreviations  
- Standardised education, rating, and satisfaction levels through reference table joins  

### Analytical Tables
- **Employee Table:**  
  Combined demographic, role, compensation, and tenure data with derived dimensions  

- **Performance Table:**  
  Integrated performance reviews, satisfaction scores, ratings, and training metrics  

These tables were designed to be analysis-ready and reusable across reporting and visualisation use cases.

---

## Visualisation & Insights
- Connected curated BigQuery tables directly to Looker Studio  
- Built interactive dashboards to analyse:
  - Attrition trends  
  - Employee performance and satisfaction  
  - Workforce distribution by age, salary, and department  
- Enabled filtering and drill-downs to support exploratory analysis  

---

## Key Outcomes
- Produced clean, trusted datasets suitable for workforce analytics  
- Enabled consistent analysis through structured data modelling  
- Delivered dashboards that translate complex HR data into accessible business insights  

---
