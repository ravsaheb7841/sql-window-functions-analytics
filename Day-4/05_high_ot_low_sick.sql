/*
-- Question:
Identify employees with high overtime but low sick leaves.
(High = above company average overtime,
 Low = below company average sick leaves)
*/

/*
-- Query:
*/
WITH emp_stats AS (
    SELECT 
        Name,
        Department,
        Overtime_Hours,
        Sick_Leaves,
        AVG(Overtime_Hours) OVER() AS avg_overtime,
        AVG(Sick_Leaves) OVER() AS avg_sick_leave
    FROM employees.employees
)
SELECT 
    Name,
    Department,
    Overtime_Hours,
    Sick_Leaves
FROM emp_stats
WHERE Overtime_Hours > avg_overtime
  AND Sick_Leaves < avg_sick_leave;

/*
-- Sample Output:

| Name              | Department          | Overtime_Hours | Sick_Leaves |
|-------------------|---------------------|----------------|-------------|
| Ghadir Hmshw      | Quality Control     | 183            | 1           |
| Omar Hishan       | Quality Control     | 198            | 0           |
| Ailya Sharaf      | Major Mfg Projects  | 192            | 0           |
| Ahmad Bikri       | Manufacturing       | 121            | 0           |

*/