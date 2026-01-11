# ❤️ Heart Disease Analytics – End-to-End Data Analytics Project

## 📌 Project Overview
This project is a complete, end-to-end **HealthCare Data Analytics Pipeline** built using:

- **Python** (EDA + preprocessing)
- **SQL** (data cleaning + transformations)
- **Power BI** (dashboard & DAX)
- **Machine Learning** (Logistic Regression & Random Forest)

The goal is to analyze and visualize key factors contributing to **heart disease**, identify high-risk patients, and create an interactive analytics dashboard.

---

## 📂 Project Structure

---

## 🧠 Dataset Information

Dataset file: `heart.csv`  
Contains **303 patient records** with the following features:

| Column | Description |
|--------|-------------|
| age | Age in years |
| sex | Gender (1 = Male, 0 = Female) |
| cp | Chest pain type (0–3) |
| trestbps | Resting blood pressure |
| chol | Serum cholesterol (mg/dl) |
| fbs | Fasting blood sugar |
| restecg | Resting ECG results |
| thalach | Maximum heart rate |
| exang | Exercise-induced angina |
| oldpeak | ST depression |
| slope | Slope of ST segment |
| ca | Number of vessels (0–3) |
| thal | Thalassemia |
| target | Heart disease (1 = Yes, 0 = No) |

---

# 🛢 SQL Analysis

The project includes:

- Data cleaning
- Statistical summary using SQL
- Grouping, aggregation, joins
- Window functions
- CTE-based segmentation
- Risk scoring logic

Example SQL queries:

```sql
SELECT sex, COUNT(*) AS patients,
SUM(target) AS positive_cases,
AVG(chol) AS avg_cholesterol
FROM heart
GROUP BY sex;
/sql/heart_analysis.sql
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import accuracy_score, confusion_matrix, classification_report


