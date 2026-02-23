/*
-- Question:
Compare salary difference between consecutively hired employees.
*/

/*
-- Query:
*/
SELECT 
    Name,
    Department,
    Start_Date,
    Annual_Salary,
    LAG(Annual_Salary) 
        OVER (ORDER BY Start_Date) AS prev_salary,
    Annual_Salary 
        - LAG(Annual_Salary) 
            OVER (ORDER BY Start_Date) AS salary_difference
FROM employees.employees;

/*
-- Sample Output:

| Name           | Department                     | Start_Date  | Annual_Salary | prev_salary| salary_difference|
|----------------|--------------------------------|-------------|---------------|------------|------------------|
| Ayat Byd       | Environmental Health/Safety    | 01-01-2017  | 37440         | NULL       | NULL             |
| Asf Abultif    | Manufacturing                  | 01-01-2019  | 35280         | 37440      | -2160            |
| Ahmad Swyd     | Sales                          | 01-02-2017  | 9696          | 35280      | -25584           |
| Ranya Khuluf   | Manufacturing                  | 01-02-2019  | 12708         | 9696       | 3012             |

*/