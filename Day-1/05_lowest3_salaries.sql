/*
-- Question:
Find employees with the 3 lowest salaries based on Annual Salary.
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
        DENSE_RANK() OVER(ORDER BY Annual_Salary ASC) AS lowest_paid_emp
    FROM employees.employees
) AS ranked_employees
WHERE lowest_paid_emp <= 3;

/*
-- Sample Output:

| No   | Name              | Department          | Country       | Annual_Salary | lowest_paid_emp|
|------|-------------------|---------------------|---------------|---------------|----------------|
| 225  | Muhamad Bulta     | Account Management  | Egypt         | 8436          | 1              |
| 616  | Samah Alkhatib    | Account Management  | Saudi Arabia  | 8460          | 2              |
| 506  | Rayid Zazana      | Marketing           | Egypt         | 8484          | 3              |
*/
