/*
-- Question:
Show department-wise total Annual Salary.
*/

/*
-- Query:
*/
SELECT 
    Name,
    Department,
    Annual_Salary,
    SUM(Annual_Salary) 
        OVER(PARTITION BY Department) AS dep_total
FROM employees.employees;

/*
-- Sample Output:

| Name               | Department          | Annual_Salary | dep_total |
|--------------------|---------------------|---------------|-----------|
| Hasan Alfywmi      | Account Management  | 18588         | 1952664   |
| Muhamad Rinkusi    | Account Management  | 37656         | 1952664   |
| Eala Mitri         | Account Management  | 34548         | 1952664   |
| Imran Hazruma      | Account Management  | 17376         | 1952664   |
*/
