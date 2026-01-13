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



---

# 🧠 SQL Analysis — Overview

SQL analysis was performed to understand dataset distribution and segment high-risk groups.

📄 **SQL File Link:**  
👉 https://github.com/aadityaaa16/Healthcare-Analytics-Project/blob/b39da65a1791f4887f4511867e5d55102b1541ff/HEART%20DISEASE%20SQL%20QUERIES.sql

### SQL Techniques Used
- Data extraction & filtering  
- Conditional segmentation  
- Grouping and aggregation  
- Statistical summaries  
- Rankings using window functions  
- Categorizing cholesterol and blood pressure levels  
- Gender- and age-based breakdowns  

---

# 🐍 Python Analytics — Overview

Python notebooks were used for data cleaning, EDA, visualization, and ML model development.

📄 **Python EDA Link:**  
👉 https://github.com/aadityaaa16/Healthcare-Analytics-Project/blob/39cf4c997d7b932a2765bd575c2e1bbb7b67673c/Healthcare%20(1).ipynb
📄 **Python ML Link:**  
👉 https://github.com/aadityaaa16/Healthcare-Analytics-Project/blob/39cf4c997d7b932a2765bd575c2e1bbb7b67673c/Healthcare%20(1).ipynb
### Python Tasks Performed
- Data profiling  
- Missing value checks  
- Summary statistics  
- Correlation mapping  
- Outlier checks  
- Feature relationship analysis  
- Visualizations (heatmaps, distplots, bar charts)

### Python Libraries Used
- Pandas  
- NumPy  
- Matplotlib  
- Seaborn  
- Scikit-learn  

---

# 🤖 Machine Learning — Overview

Machine learning was used to predict heart disease probability based on patient features.

### ML Steps Performed
- Data preprocessing  
- Train-test split  
- Scaling  
- Model training  
- Evaluation metrics  

### ML Algorithms Used
- Logistic Regression  
- Random Forest Classifier  

---

# 📊 Power BI Dashboard — Pages Overview

📄 **Power BI Folder:**  
👉 https://github.com/aadityaaa16/Healthcare-Analytics-Project/blob/c53160dfbb604c03d353d90da3b093960c7e16f5/Overview%20Dashboard.png

The dashboard consists of 4 pages:

### 🔹 Page 1 — Patient Overview
- Total patients  
- Heart disease vs no disease cases  
- Age distribution  

### 🔹 Page 2 — Cholesterol & BP Analysis
- Cholesterol category segmentation  
- Blood pressure risk zones  

### 🔹 Page 3 — Gender-Based Insights
- Gender comparison  
- Cross-tab of age + gender + disease rate  

### 🔹 Page 4 — Interactive Drill Down
- Filters  
- Slicers  
- Dynamic metrics  

---

# 🔢 DAX Functions — Overview

DAX was used to create interactive KPIs and segmentation metrics.

### DAX Functions Used
- COUNTROWS  
- CALCULATE  
- AVERAGE / MAX / MIN  
- DIVIDE  
- FILTER  
- IF conditional logic  
- Iterator functions (SUMX / AVERAGEX)  

---

# 📈 Key Insights From the Data (With Values)

Below are the major findings derived from SQL, Python, ML, and Power BI exploration of the dataset.

### ❤️ **1. Heart Disease Prevalence**
- **54%** of patients in the dataset have heart disease.
- Indicates more than half fall into the high-risk category.

### 🧓 **2. Age is a major risk factor**
- Average age of patients WITH heart disease: **56.2 years**
- Average age WITH NO heart disease: **52.7 years**

This shows a clear rise in risk after the age of 55.

### 🍔 **3. Cholesterol Levels**
- **29%** of patients have cholesterol above **240 mg/dl**, classified as high.
- Among high cholesterol patients:  
  **67%** show heart disease presence.

### 🚹🚺 **4. Gender-Based Risk**
- Males: **62%** affected  
- Females: **38%** affected  

This implies men are significantly more prone in this dataset.

### 💓 **5. Chest Pain Type**
Patients with `cp=3` (asymptomatic chest pain):  
- **82%** have heart disease  
Clear indicator of silent risk category.

### 🔼 **6. Blood Pressure**
- **49%** of patients have BP > 130  
- Among them, **58%** show disease presence

Hypertension strongly correlates with heart disease.

### 🧪 **7. ML Model Performance**
- Logistic Regression accuracy: **79%**
- Random Forest accuracy: **98.5**

Random Forest performed the best due to feature interactions.
### ✔ Added: Cross-Validation Check

To validate the Random Forest score and check for overfitting, use:

**Interpretation:**

- If CV score is around **85–92%**, Random Forest is slightly overfitting  
- If CV score is **95%+**, the 98.5% accuracy is valid and stable  

Random Forest gives excellent predictive performance (98.5%), while Logistic Regression provides a reliable baseline (79%).  
Cross-validation(99.7%) confirms whether the high accuracy is stable or due to overfitting.

---

# 📝 Conclusion

This project delivers a complete end-to-end workflow:

### ✔ SQL insights  
### ✔ Python EDA  
### ✔ Machine learning modelling  
### ✔ Power BI dashboards  
### ✔ Strong, meaningful insights  

The analysis highlights key findings:

- Most heart-disease-positive patients are aged **55+**
- High cholesterol and BP significantly increase risk
- Males are more affected than females
- Asymptomatic chest pain type (`cp=3`) is the highest risk indicator
- Random Forest provides the best prediction accuracy (89%)

This repo is a realistic, industry-style analytics project demonstrating technical depth across **SQL, Python, ML, and Power BI**.

---

## 👤 Author  
**Aditya Singh**  
Data Analyst | BI Developer


