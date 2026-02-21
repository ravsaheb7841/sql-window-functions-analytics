/*
-- Question:
Identify employees whose Job Rate is 
above company average.
*/

SELECT *
FROM (
        SELECT 
            Name,
            Department,
            Job_Rate,
            AVG(Job_Rate) OVER() AS company_avg_job_rate
        FROM employees.employees
     ) AS e
WHERE Job_Rate > company_avg_job_rate;

/*
-- Sample Output:

| Name               | Department           | Job_Rate | company_avg_job_rate |
|--------------------|----------------------|----------|----------------------|
| Ahmad Bikri        | Manufacturing        | 5        | 3.6763               |
| Muhamad Alaya      | Account Management   | 5        | 3.6763               |
| Susin Almilat      | Green Building       | 5        | 3.6763               |
| Muhamad Alrifaei   | Account Management   | 5        | 3.6763               |
*/