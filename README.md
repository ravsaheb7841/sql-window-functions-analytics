# HR Analytics using SQL Window Functions

## 📌 Project Overview
This project performs HR data analysis using advanced SQL Window Functions.  
The dataset contains employee details such as salary, department, country, job rate, leaves, and overtime hours.

The objective of this project is to apply analytical SQL techniques to solve real-world HR business problems.

---

## 🗂 Dataset Information

Dataset Name: Company Employees – HR Analytics Dataset

Features:
- Employee ID
- First Name
- Last Name
- Gender
- Start Date
- Years in Company
- Department
- Country
- Center
- Monthly Salary
- Annual Salary
- Job Rate
- Sick Leaves
- Unpaid Leaves
- Overtime Hours

---

## 🛠 Tools Used
- MySQL 
- SQL Window Functions
- Git & GitHub

---

## 📚 Topics Covered

✅ ROW_NUMBER()  
✅ RANK()  
✅ DENSE_RANK()  
✅ PARTITION BY  
✅ SUM() OVER()  
✅ AVG() OVER()  
✅ NTILE()  
✅ LEAD()  
✅ LAG()   

---

## 📂 Project Structure

```
HR-Analytics-Window-Functions/
|
├── Dataset/
│   └── Employees.csv
│
├── base.sql
|
├── Day-1/
│   └── 01_load_data.sql
│
├── Day-2/
│   └── 01_dept_salary_rank.sql
|
├── Day-3/
│    └── 01_jobrate_rank.sql
│
├── Day-4/
│    └── 01_rank_sick_leaves.sql
│
├── Day-5/
│    └── 01_salary_trend_lag.sql
│
└── README.md
```

---

## 🟢 Day 1 – Salary Ranking Analysis

### Window Functions Implemented:
- ROW_NUMBER()
- RANK()
- DENSE_RANK()

### Tasks Completed:
- Ranked employees based on Monthly Salary (highest first)
- Compared RANK vs DENSE_RANK differences
- Identified Top 5 highest paid employees

### Key Insight:
Salary ranking helps identify compensation distribution patterns across the organization.

---

## 🟡 Day 2 – Department-wise Analysis (PARTITION BY)

### Window Functions Implemented:
- PARTITION BY
- RANK() within department
- SUM() OVER() (department level)
- AVG() OVER() (department level)

### Tasks Completed:
- Ranked employees within each department
- Identified highest paid employee per department
- Compared employee salary with department average
- Calculated total salary per department

### Key Insight:
Department-level analysis helps understand internal pay distribution and salary gaps.

---

## 🔵 Day 3 – Performance & Advanced Analysis

### Window Functions Implemented:
- NTILE()
- AVG() OVER() for performance comparison
- DENSE_RANK() based on Job Rate

### Tasks Completed:
- Ranked employees based on Job Rate
- Compared employee performance with department average
- Created performance buckets using NTILE()

### Key Insight:
Performance distribution analysis helps identify top performers and employees below department average.

---

## 🟣 Day 4 – Leave & Productivity Analysis

### Window Functions Used:
- DENSE_RANK()
- AVG() OVER()
- SUM() OVER()

### Tasks Completed:
- Ranked employees based on Sick Leaves
- Calculated department-wise average Sick Leaves
- Identified employees taking more leaves than department average
- Compared overtime hours with total leave count
- Detected employees with high overtime but low sick leaves

### Key Insight:
Leave and overtime patterns help evaluate employee workload balance and potential burnout risks.

---

## 🔴 Day 5 – Trend Analysis using LEAD & LAG

### Window Functions Implemented:
- LEAD()
- LAG()

### Tasks Completed:
- Compared salary with previous employee
- Calculated salary difference between consecutive hires
- Analyzed overtime and performance trends
- Detected salary gaps within departments

### Key Insight:
LEAD and LAG functions enable time-based and sequential trend analysis, helping identify compensation patterns and workload shifts.

---

## 📈 Project Status

🚀 Day 1 Completed  
🚀 Day 2 Completed  
🚀 Day 3 Completed  
🚀 Day 4 Completed  
<<<<<<< Updated upstream
⏳ Day 5 – LEAD & LAG Trend Analysis in progress
=======
🚀 Day 5 Completed  

🎯 All core SQL Window Functions successfully implemented.
>>>>>>> Stashed changes
