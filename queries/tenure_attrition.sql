-- tenure_attrition.sql
WITH tenure AS (
    SELECT *,
        CASE
            WHEN YearsAtCompany = 0 THEN '0'
            WHEN YearsAtCompany BETWEEN 1 AND 2 THEN '1-2'
            WHEN YearsAtCompany BETWEEN 3 AND 5 THEN '3-5'
            WHEN YearsAtCompany BETWEEN 6 AND 10 THEN '6-10'
            ELSE '10+'
        END AS tenure_bucket
    FROM hr_data
)
SELECT
    tenure_bucket,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS attritions,
    ROUND(SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_pct
FROM tenure
GROUP BY tenure_bucket
ORDER BY ARRAY_POSITION(ARRAY['0','1-2','3-5','6-10','10+'], tenure_bucket);