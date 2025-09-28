-- Basic Data Validation

-- 1.1 Count total rows
SELECT COUNT(*) FROM hr_data;

-- 1.2 Sample rows
SELECT * FROM hr_data LIMIT 10;

-- 2. Check for nulls in key columns
SELECT
    COUNT(*) FILTER (WHERE Age IS NULL) AS null_age,
    COUNT(*) FILTER (WHERE Department IS NULL) AS null_department,
    COUNT(*) FILTER (WHERE JobRole IS NULL) AS null_jobrole,
    COUNT(*) FILTER (WHERE MonthlyIncome IS NULL) AS null_income,
    COUNT(*) FILTER (WHERE Attrition IS NULL) AS null_attrition
FROM hr_data;

-- 3. Unique Employee IDs
SELECT COUNT(DISTINCT EmployeeNumber) AS unique_ids,
       COUNT(*) AS total_rows
FROM hr_data;

-- 4. Min & Max values for Age & MonthlyIncome
SELECT MIN(Age) AS min_age, MAX(Age) AS max_age,
       MIN(MonthlyIncome) AS min_income, MAX(MonthlyIncome) AS max_income
FROM hr_data;

-- 5. Attrition distribution
SELECT Attrition, COUNT(*) FROM hr_data GROUP BY Attrition;

-- 6. Departments & Job Roles
SELECT DISTINCT Department FROM hr_data;
SELECT DISTINCT JobRole FROM hr_data;
