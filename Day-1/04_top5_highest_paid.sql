/*
-- Question:
Find the top 5 highest paid employees based on Annual Salary.
*/

/*
-- Query:
*/
SELECT *
FROM (
    SELECT 
        No,
        Name,
        Department,
        Country,
        Annual_Salary,
        DENSE_RANK() OVER(ORDER BY Annual_Salary DESC) AS highest_paid_emp
    FROM employees.employees
) AS ranked_employees
WHERE highest_paid_emp <= 5;

/*
-- Sample Output:

| No   | Name              | Department            | Country       | Annual_Salary | highest_paid_emp|
|------|-------------------|-----------------------|---------------|---------------|-----------------|
| 325  | Ashraf Aleid      | Account Management    | Egypt         | 41400         | 1               |
| 348  | Dalia Hamdan      | Major Mfg Projects    | Egypt         | 41352         | 2               |
| 317  | Muhamad Almisri   | Quality Control       | Saudi Arabia  | 41316         | 3               |
| 324  | Muhamad Salhany   | Quality Control       | Egypt         | 41136         | 4               |
| 271  | Eala Darkzifli    | Quality Assurance     | Egypt         | 41040         | 5               |
*/
