/*
-- Question:
Assign a unique row number to each employee based on their Annual Salary in ascending order.
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
    ROW_NUMBER() OVER(ORDER BY Annual_Salary) AS row_num
FROM employees.employees;

/*
-- Sample Output:

| No   | Name             | Department          | Country       | Annual_Salary | row_num |
|------|------------------|---------------------|---------------|---------------|---------|
| 225  | Muhamad Bulta    | Account Management  | Egypt         | 8436          | 1       |
| 616  | Samah Alkhatib   | Account Management  | Saudi Arabia  | 8460          | 2       |
| 506  | Rayid Zazana     | Marketing           | Egypt         | 8484          | 3       |
| 441  | Iin Murad        | IT                  | Egypt         | 8532          | 4       |

*/
