/*
-- Question:
Rank employees based on Sick Leaves 
(highest first).
*/

/*
-- Query:
*/
SELECT 
    Name,
    Department,
    Sick_Leaves,
    DENSE_RANK()
        OVER(ORDER BY Sick_Leaves DESC) AS sick_leave_rank
FROM employees.employees;

/*
-- Sample Output:

| Name               | Department               | Sick_Leaves | sick_leave_rank |
|--------------------|--------------------------|-------------|-----------------|
| Iin Alhalaliu      | Sales                    | 6           | 1               |
| Razaan Nasif       | Facilities/Engineering   | 6           | 1               |
| Ayham Tutwnji      | Product Development      | 6           | 1               |
| Muhamad Altarah    | IT                       | 6           | 1               |

*/