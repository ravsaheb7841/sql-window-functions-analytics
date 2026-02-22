/*
-- Question:
Compare Overtime Hours with total leave count 
(Sick Leaves + Unpaid Leaves) for each employee.
*/

/*
-- Query:
*/
SELECT 
    Name,
    Department,
    Overtime_Hours,
    Sick_Leaves + Unpaid_Leaves AS total_leave_count,
    CASE 
        WHEN Overtime_Hours > (Sick_Leaves + Unpaid_Leaves)
            THEN 'More Overtime'
        WHEN Overtime_Hours < (Sick_Leaves + Unpaid_Leaves)
            THEN 'More Leaves'
        ELSE 'Equal'
    END AS comparison_result
FROM employees.employees;

/*
-- Sample Output:

| Name               | Department           | Overtime_Hours | total_leave_count | comparison_result |
|--------------------|---------------------|----------------|-------------------|------------------|
| Ghadir Hmshw       | Quality Control     | 183            | 1                 | More Overtime    |
| Omar Hishan        | Quality Control     | 198            | 5                 | More Overtime    |
| Ailya Sharaf       | Major Mfg Projects  | 192            | 3                 | More Overtime    |
| Lwiy Qbany         | Manufacturing       | 7              | 0                 | More Overtime    |

*/