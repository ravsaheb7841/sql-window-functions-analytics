/*
-- Question:
Find the top 2 highest salaries in each department 
based on Annual Salary.
*/

/*
-- Query:
*/
SELECT 
    Name,
    Department,
    Annual_Salary
FROM
(
    SELECT 
        Name,
        Department,
        Annual_Salary,
        RANK() OVER(
            PARTITION BY Department 
            ORDER BY Annual_Salary DESC
        ) AS top_salary
    FROM employees.employees
) AS ranked_employees
WHERE top_salary <= 2;

/*
-- Sample Output:

| Name              | Department            | Annual_Salary |
|-------------------|-----------------------|---------------|
| Ashraf Aleid      | Account Management    | 41400         |
| Sana Alhusayn     | Account Management    | 40944         |
| Khawla Dawi       | Creative              | 40656         |
| Tariq Zaeur       | Creative              | 30528         |
*/
