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
⬜ LEAD()  
⬜ LAG()  
⬜ NTILE()  

---

## 📂 Project Structure

```
HR-Analytics-Window-Functions/
│
├── Dataset/
│   └── Employees.csv
│
├── Day-1/
│   └── 01_load_data.sql
│
├── Day-2/
│   └── 01_dept_salary_rank.sql
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

## 📈 Project Status

🚀 Day 1 Completed  
🚀 Day 2 Completed  
⏳ Day 3 – Performance & Advanced Analytics in progress
