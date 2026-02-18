/*
-- Question:
Show the salary ranking of employees within each country based on Annual Salary (highest first).
*/

/*
-- Query:
*/
SELECT 
    No,
    Name,
    Department,
    Country,
    Annual_Salary,
    DENSE_RANK() OVER(PARTITION BY Country ORDER BY Annual_Salary DESC) AS salary_ranking
FROM employees.employees;

/*
-- Sample Output:

| No   | Name              | Department            | Country       | Annual_Salary | salary_ranking |
|------|-------------------|-----------------------|---------------|---------------|----------------|
| 325  | Ashraf Aleid      | Account Management    | Egypt         | 41400         | 1              |
| 348  | Dalia Hamdan      | Major Mfg Projects    | Egypt         | 41352         | 2              |
| 324  | Muhamad Salhany   | Quality Control       | Egypt         | 41136         | 3              |
| 271  | Eala Darkzifli    | Quality Assurance     | Egypt         | 41040         | 4              |
| 317  | Muhamad Almisri   | Quality Control       | Saudi Arabia  | 41316         | 1              |
*/
