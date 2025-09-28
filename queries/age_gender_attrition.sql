-- age_gender_attrition.sql
SELECT
    CASE
        WHEN Age < 30 THEN '<30'
        WHEN Age BETWEEN 30 AND 45 THEN '30-45'
        ELSE '45+'
    END AS age_group,
    Gender,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS attritions,
    ROUND(SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_pct
FROM hr_data
GROUP BY age_group, Gender
ORDER BY age_group;