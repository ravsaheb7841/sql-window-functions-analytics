/*
-- Question:
Compare each employee’s Job Rate 
with their department average Job Rate.
*/

SELECT 
    Name,
    Department,
    Job_Rate,
    ROUND(
        AVG(Job_Rate) 
            OVER(PARTITION BY Department),
        2
    ) AS dept_avg_job_rate
FROM employees.employees;

/*
-- Sample Output:

| Name              | Department          | Job_Rate | dept_avg_job_rate |
|-------------------|---------------------|----------|-------------------|
| Hasan Alfywmi     | Account Management  | 3        | 3.80              |
| Muhamad Rinkusi   | Account Management  | 1        | 3.80              |
| Eala Mitri        | Account Management  | 2        | 3.80              |
| Imran Hazruma     | Account Management  | 5        | 3.80              |
*/