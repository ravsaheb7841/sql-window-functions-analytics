/*
-- Question:
Compare Overtime Hours with total leave count 
for each employee.
*/

/*
-- Query:
*/
SELECT 
    Name,
    Department,
    Overtime_Hours,
    total_leave_count,
    CASE 
        WHEN Overtime_Hours > total_leave_count 
            THEN 'More Overtime'
        WHEN Overtime_Hours < total_leave_count 
            THEN 'More Leaves'
        ELSE 'Equal'
    END AS comparison_result
FROM (
    SELECT 
        Name,
        Department,
        Overtime_Hours,
        SUM(Sick_Leaves + Unpaid_Leaves) 
            OVER (PARTITION BY Name) AS total_leave_count
    FROM employees.employees
) AS e;

/*
-- Sample Output:

| Name               | Department        | Overtime_Hours | total_leave_count | comparison_result|
|--------------------|-------------------|----------------|-------------------|------------------|
| Ahmad Bikri        | Manufacturing     | 12             | 5                 | More Overtime    |
| Rahaf Alaleppoy    | Account Mgmt      | 3              | 6                 | More Leaves      |
| Amir Alkhatib      | Account Mgmt      | 6              | 6                 | Equal            |

*/