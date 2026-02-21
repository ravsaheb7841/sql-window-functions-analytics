/*
-- Question:
Rank employees based on Job Rate 
(highest rating first).
*/

/*
-- Query:
*/
SELECT 
    Name,
    Department,
    Job_Rate,
    DENSE_RANK() 
        OVER(ORDER BY Job_Rate DESC) AS rank_emp
FROM employees.employees;


/*
-- Sample Output:

| Name               | Department          | Job_Rate | rank_emp |
|--------------------|---------------------|----------|----------|
| Ahmad Bikri        | Manufacturing       | 5        | 1        |
| Muhamad Alaya      | Account Management  | 5        | 1        |
| Susin Almilat      | Green Building      | 5        | 1        |
| Muhamad Alrifaei   | Account Management  | 5        | 1        |
*/