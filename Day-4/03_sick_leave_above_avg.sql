/*
-- Question:
Identify employees taking more Sick Leaves than department average.
*/

/*
-- Query:
*/
SELECT *
FROM (
    SELECT 
        Name,
        Department,
        Sick_Leaves,
        ROUND(
            AVG(Sick_Leaves)
                OVER(PARTITION BY Department),
            2
        ) AS dept_avg_sick_leave
    FROM employees.employees
) AS e
WHERE Sick_Leaves > dept_avg_sick_leave;

/*
-- Sample Output:

| Name                | Department           | Sick_Leaves | dept_avg_sick_leave |
|---------------------|----------------------|-------------|---------------------|
| Hasan Alfywmi       | Account Management   | 2           | 1.70                |
| Rahaf Alaleppoy     | Account Management   | 6           | 1.70                |
| Amir Alkhatib       | Account Management   | 6           | 1.70                |
| Ruba Alsiraj        | Account Management   | 5           | 1.70                |

*/