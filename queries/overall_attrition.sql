-- Overall attrition rate
SELECT
	SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS total_attritions,
	COUNT(*) AS total_employees,
	ROUND(SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),2) AS attrition_pct
FROM hr_data;