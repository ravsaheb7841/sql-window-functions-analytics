/*
-- Question:
Find the top performer per department
(based on highest Job_Rate).
*/

SELECT 
    Name,
    Department,
    Job_Rate
FROM (
        SELECT 
            Name,
            Department,
            Job_Rate,
            DENSE_RANK() OVER(
                PARTITION BY Department 
                ORDER BY Job_Rate DESC
            ) AS dept_rank
        FROM employees.employees
     ) AS ranked
WHERE dept_rank = 1;

/*
-- Sample Output:

| Name            | Department          | Job_Rate |
|-----------------|---------------------|----------|
| Amira Akrym     | Account Management  | 5        |
| Mahir Eabuwd    | Account Management  | 5        |
| Iin Alhumwi     | Account Management  | 5        |
| Emar Nakaash    | Account Management  | 5        |
*/