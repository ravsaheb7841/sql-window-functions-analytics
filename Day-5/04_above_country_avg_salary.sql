/*
-- Question:
Identify employees earning above their country’s average salary.
*/

/*
-- Query:
*/
WITH country_stats AS (
    SELECT 
        Name,
        Department,
        Country,
        Annual_Salary,
        AVG(Annual_Salary) 
            OVER (PARTITION BY Country) AS country_avg_salary
    FROM employees.employees
)
SELECT *
FROM country_stats
WHERE Annual_Salary > country_avg_salary;

/*
-- Sample Output:

| Name                   | Department           | Country | Annual_Salary | country_avg_salary |
|------------------------|----------------------|---------|---------------|--------------------|
| Samir Sariji           | Marketing            | Egypt   | 28536         | 25078.7968         |
| Akthum Eibdalbaqi      | Training             | Egypt   | 31644         | 25078.7968         |
| Muhamad Alaya          | Account Management   | Egypt   | 40728         | 25078.7968         |
| Lama Almisri           | Manufacturing        | Egypt   | 40200         | 25078.7968         |

*/