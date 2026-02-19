/*
-- Question:
Find the highest paid employee in each department 
based on Annual Salary.
*/

/*
-- Query:
*/
SELECT 
    Name,
    Department,
    Annual_Salary
FROM
(
    SELECT 
        Name,
        Department,
        Annual_Salary,
        RANK() OVER(
            PARTITION BY Department 
            ORDER BY Annual_Salary DESC
        ) AS highest_paid
    FROM employees.employees
) AS ranked_employees
WHERE highest_paid = 1;

/*
-- Sample Output:

| Name              | Department                      | Annual_Salary |
|-------------------|---------------------------------|---------------|
| Ashraf Aleid      | Account Management              | 41400         |
| Khawla Dawi       | Creative                        | 40656         |
| Ahmad Dabana      | Environmental Compliance        | 40248         |
| Ayat Byd          | Environmental Health/Safety     | 37440         |
*/
