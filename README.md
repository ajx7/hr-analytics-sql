# HR Analytics with SQL & Python

This project explores employee attrition patterns using a mix of **PostgreSQL for querying** and **Python for analysis & visualization**.  
It is designed as a **portfolio project** — showing end-to-end data handling, from raw CSV → database → SQL analysis → Python stats → machine learning → reproducible deliverables.

---

## 📂 Project Structure

hr-analytics-sql/
├─ queries/
│    ├─ basic_checks.sql
│    ├─ overall_attrition.sql
│ 	 ├─ dept_attrition.sql
│ 	 ├─ salary_analysis.sql
│ 	 ├─ jobrole_attrition.sql
│ 	 ├─ tenure_attrition.sql
│ 	 ├─ overtime_attrition.sql
│ 	 ├─ age_gender_attrition.sql
│ 	 
├─ notebook/
│    ├─ hr_analysis.ipnyb
│    ├─ eda_summary.ipnyb
│    ├─ figures/
│    		├─univariate/
│    		│ 	├─ age_distribution.png
│    		│ 	├─ attribution_balance.png
│    		│ 	├─ department_counts.png
│    		│ 	├─ monthly_income_distribution.png
│    		│ 	├─ overtime_counts.png
│    		│ 	
│    		├─bivariate/
│    		│ 	├─ attrition_vs_age.png
│   		│ 	├─ attrition_vs_dept.png
│    		│ 	├─ attrition_vs_gender.png
│    		│ 	├─ attrition_vs_jobrole.png
│    		│ 	├─ attrition_vs_maritalstatus.png
│    		│ 	├─ attrition_vs_monthlyincome.png
│    		│ 	├─ attrition_vs_overtime.png
│    		│ 	├─ attrition_vs_tenure.png
│    		│ 	
│    		├─eda_summary/
│    			├─ age_tenure_analysis.png
│    			├─ attrition.png
│    			├─ attrition_gender_maritalstatus.png
│    			├─ dept_and_jobroles.png
│    			├─ monthlyincome_vs_attrition.png
│    			├─ overtime_impact.png
├─ data/
│    └─ ibm_hr.csv
│ 
├─ results/
│    ├─ overall_attrition.csv
│ 	 ├─ dept_attrition.csv
│ 	 ├─ salary_analysis.csv
│ 	 ├─ jobrole_attrition.csv
│ 	 ├─ tenure_attrition.csv
│ 	 ├─ overtime_attrition.csv
│ 	 ├─ age_gender_attrition.csv
│
├─ LICENSE	
├─ requirements.txt
├─ README.md # Project Overview (this file)


---

## 🎯 Objectives

- Understand employee attrition drivers using **SQL queries**  
- Perform **exploratory data analysis (EDA)** with Python  
- Run **statistical checks** (e.g., overtime vs attrition significance)  
- Build a **basic predictive model** (logistic regression)  
- Deliver **visuals, CSV outputs, and notebooks** in a clean repo

---

## 🛠️ Tools Used

- **Database**: PostgreSQL  
- **Querying**: SQL  
- **Analysis**: Python (Pandas, NumPy, Matplotlib, Seaborn, Statsmodels, Scikit-learn)  
- **Version Control**: Git + GitHub  

---

## 📊 Key Findings

- **Overall attrition**: ~16% of employees  
- **Departmental differences**: R&D had higher attrition vs HR & Sales  
- **Overtime**: Employees working overtime are **significantly more likely** to leave  
- **Job roles**: Sales reps & lab technicians showed higher attrition  
- **Income effect**: Lower monthly income strongly correlates with attrition  
- **Predictive model**: Logistic regression flagged **Overtime, MonthlyIncome, JobRole, and Age** as the strongest predictors.

---

## 📊 Key Findings (Simple Version)

- About **1 in 6 employees left** the company during the observed period.  
- **Working overtime** is one of the biggest factors linked to leaving.  
- **Lower salary employees** tend to leave more often than higher salary ones.  
- Certain **job roles and departments** (like Sales and Lab Techs) have higher turnover.  
- **Younger employees** are more likely to quit compared to older ones. 

---

## 📌 Deliverables

- Reproducible **SQL queries** → `queries/`  
- Query outputs → `results/`  
- **Python notebooks** with EDA, stats, and model → `notebook/`  
- **Figures** for visualization → `notebook/figures/`  
- **README.md** (project overview)

---

## 🚀 How to Run

1. Clone this repo  

   git clone https://github.com/ajx7/hr-analytics-sql.git
   cd hr-analytics-sql

2. Install requirements

	pip install -r requirements.txt


3. Set up PostgreSQL DB

	- Create a database
	- Import data/ibm_hr.csv

4. Run SQL scripts in queries/

5. Open notebooks in notebook/ for Python analysis


---

## 📖 Dataset Source

IBM HR Analytics Employee Attrition & Performance dataset (publicly available on Kaggle):
[IBM HR Analytics Dataset – Kaggle](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)

---

## ⚖️ License

This project is licensed under the MIT License — free to use with attribution.

---

## 🙋 About

This project was built as part of a portfolio refresh, showing end-to-end data analysis and reproducibility skills.
