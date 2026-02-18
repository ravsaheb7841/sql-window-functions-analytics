/*
-- Question:
Rank employees based on their Monthly Salary in descending order (highest first).
*/

/*
-- Query:
*/
SELECT 
    No,
    Name,
    Department,
    Country,
    Monthly_Salary,
    Annual_Salary,
    RANK() OVER(ORDER BY Monthly_Salary DESC) AS emp_rank
FROM employees.employees;

/*
-- Sample Output:

| No   | Name              | Department            | Country       | Monthly_Salary | Annual_Salary | emp_rank |
|------|-------------------|-----------------------|---------------|----------------|---------------|----------|
| 325  | Ashraf Aleid      | Account Management    | Egypt         | 3450           | 41400         | 1        |
| 348  | Dalia Hamdan      | Major Mfg Projects    | Egypt         | 3446           | 41352         | 2        |
| 317  | Muhamad Almisri   | Quality Control       | Saudi Arabia  | 3443           | 41316         | 3        |
| 324  | Muhamad Salhany   | Quality Control       | Egypt         | 3428           | 41136         | 4        |
*/
