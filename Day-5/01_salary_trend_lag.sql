/*
-- Question:
Detect salary trend based on Years of experience using LAG().
*/

/*
-- Query:
*/
SELECT 
    Name,
    Department,
    Years,
    Annual_Salary,
    LAG(Annual_Salary) OVER (ORDER BY Years) AS prev_salary,
    CASE
        WHEN LAG(Annual_Salary) OVER (ORDER BY Years) IS NULL THEN 'N/A'
        WHEN Annual_Salary > LAG(Annual_Salary) OVER (ORDER BY Years) THEN 'Increase'
        WHEN Annual_Salary < LAG(Annual_Salary) OVER (ORDER BY Years) THEN 'Decrease'
        ELSE 'Same'
    END AS salary_trend
FROM employees.employees;

/*
-- Sample Output:

| Name            | Department      | Years | Annual_Salary | prev_salary | salary_trend |
|-----------------|-----------------|-------|---------------|-------------|--------------|
| Ahmad Bikri     | Manufacturing   | 1     | 50000         | NULL        | N/A          |
| Amir Alkhatib   | Account Mgmt    | 2     | 55000         | 50000       | Increase     |
| Rahaf Alaleppoy | Account Mgmt    | 3     | 54000         | 55000       | Decrease     |
| Susin Almilat   | Green Building  | 4     | 54000         | 54000       | Same         |

*/