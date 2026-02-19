/*
-- Question:
Compare each employee's Annual Salary 
with the average salary of their department.
*/

/*
-- Query:
*/
SELECT 
    Name,
    Department,
    Annual_Salary,
    ROUND(
        AVG(Annual_Salary) OVER(PARTITION BY Department),
        0
    ) AS avg_sal,
    Annual_Salary 
    - AVG(Annual_Salary) OVER(PARTITION BY Department) 
    AS salary_difference,
    CASE 
        WHEN Annual_Salary > AVG(Annual_Salary) OVER(PARTITION BY Department)
        THEN 'Above Average'
        ELSE 'Below Average'
    END AS salary_status
FROM employees.employees;


/*
-- Sample Output:

| Name              | Department            | Annual_Salary | avg_sal | salary_difference | salary_status  |
|-------------------|-----------------------|---------------|---------|-------------------|----------------|
| Hasan Alfywmi     | Account Management    | 18588         | 23246   | -4658.0000        | Below Average  |
| Muhamad Rinkusi   | Account Management    | 37656         | 23246   | 14410.0000        | Above Average  |
| Eala Mitri        | Account Management    | 34548         | 23246   | 11302.0000        | Above Average  |
| Imran Hazruma     | Account Management    | 17376         | 23246   | -5870.0000        | Below Average  |
*/

