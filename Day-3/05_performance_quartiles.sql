/*
-- Question:
Divide employees into 4 performance percentile groups
based on Job_Rate (highest performers in Group 1).
*/

SELECT 
    Name,
    Department,
    Job_Rate,
    NTILE(4) OVER(ORDER BY Job_Rate DESC) AS performance_quartile
FROM employees.employees;

/*
-- Sample Output:

| Name             | Department           | Job_Rate | performance_quartile |
-------------------|----------------------|----------|----------------------|
| Ahmad Bikri      | Manufacturing        | 5        | 1                    |
| Muhamad Alaya    | Account Management   | 5        | 1                    |
| Hasan Alfywmi    | Account Management   | 3        | 2                    |
| Lwiy Qbany       | Manufacturing        | 3        | 3                    |
| Omar Hishan      | Quality Control      | 1        | 4                    |
*/