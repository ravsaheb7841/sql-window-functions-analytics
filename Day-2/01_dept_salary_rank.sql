/*
-- Question:
Rank employees within each department based on Annual Salary 
(highest salary gets rank 1 in each department).
*/

/*
-- Query:
*/
SELECT 
    No,
    Name,
    Department,
    Annual_Salary,
    RANK() OVER(
        PARTITION BY Department 
        ORDER BY Annual_Salary DESC
    ) AS rank_department
FROM employees.employees;

/*
-- Sample Output:

| No   | Name              | Department          | Annual_Salary | rank_department |
|------|-------------------|---------------------|---------------|-----------------|
| 325  | Ashraf Aleid      | Account Management  | 41400         | 1               |
| 289  | Sana Alhusayn     | Account Management  | 40944         | 2               |
| 8    | Muhamad Alaya     | Account Management  | 40728         | 3               |
| 573  | Khalid Alkhawam   | Account Management  | 37884         | 4               |
*/
