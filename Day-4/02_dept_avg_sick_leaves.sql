/*
-- Question:
Find department-wise average Sick Leaves.
*/

/*
-- Query:
*/
SELECT 
    Name,
    Department,
    Sick_Leaves,
    ROUND(
        AVG(Sick_Leaves) 
            OVER(PARTITION BY Department),
        2
    ) AS dept_avg_sick_leave
FROM employees.employees;

/*
-- Sample Output:

| Name               | Department           | Sick_Leaves | dept_avg_sick_leave |
|--------------------|----------------------|-------------|---------------------|
| Hasan Alfywmi      | Account Management   | 2           | 1.70                |
| Muhamad Rinkusi    | Account Management   | 0           | 1.70                |
| Eala Mitri         | Account Management   | 0           | 1.70                |
| Imran Hazruma      | Account Management   | 0           | 1.70                |

*/