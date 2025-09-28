-- dept_attrition.sql
-- Find total employees and attrition % by Department
SELECT
    Department,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS attritions,
    ROUND(SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_pct
FROM hr_data
GROUP BY Department
ORDER BY attrition_pct DESC;