/*
-- Question:
Find the department with the highest total overtime burden.
*/

/*
-- Query:
*/
WITH dept_overtime AS (
    SELECT 
        Department,
        SUM(Overtime_Hours) 
            OVER (PARTITION BY Department) AS total_overtime
    FROM employees.employees
)
SELECT DISTINCT
    Department,
    total_overtime
FROM dept_overtime
ORDER BY total_overtime DESC
LIMIT 1;

/*
-- Sample Output:

| Department       | total_overtime |
|------------------|----------------|
| Quality Control  | 1700           |

*/