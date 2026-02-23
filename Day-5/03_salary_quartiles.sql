/*
-- Question:
Create salary quartiles using NTILE(4).
*/

/*
-- Query:
*/
SELECT 
    Name,
    Department,
    Annual_Salary,
    NTILE(4) 
        OVER (ORDER BY Annual_Salary) AS salary_quartile
FROM employees.employees;

/*
-- Sample Output:

| Name              | Department       | Annual_Salary | salary_quartile |
|-------------------|------------------|---------------|-----------------|
| Hasan Alfywmi     | Account Mgmt     | 30000         | 1               |
| Omar Hishan       | Quality Control  | 35000         | 1               |
| Ahmad Bikri       | Manufacturing    | 45000         | 2               |
| Rahaf Alaleppoy   | Account Mgmt     | 60000         | 3               |
| Ailya Sharaf      | Major Projects   | 90000         | 4               |

*/