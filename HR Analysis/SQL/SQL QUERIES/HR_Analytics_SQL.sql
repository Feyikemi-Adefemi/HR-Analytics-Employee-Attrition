SELECT *
FROM hr_employee_attrition;
SELECT *
FROM hr_employee_attrition;

SELECT COUNT(*) AS Total_Employees
FROM hr_employee_attrition;

SELECT DISTINCT Department
FROM hr_employee_attrition;

SELECT Department, COUNT(*) AS Total_Employees
FROM hr_employee_attrition
GROUP BY Department;

SELECT 
    Attrition,
    COUNT(*) AS Employee_Count
FROM hr_employee_attrition
GROUP BY Attrition;

SELECT
    Department,
    Attrition,
    COUNT(*) AS Employee_Count
FROM hr_employee_attrition
GROUP BY Department, Attrition;

SELECT
    Department,
    Attrition,
    COUNT(*) AS Employee_Count
FROM hr_employee_attrition
GROUP BY Department, Attrition;

SELECT *
FROM hr_employee_attrition
WHERE Attrition = 'Yes';

SELECT
    JobRole,
    COUNT(*) AS Employees_Left
FROM hr_employee_attrition
WHERE Attrition = 'Yes'
GROUP BY JobRole
ORDER BY Employees_Left DESC;

SELECT
    Department,
    ROUND(AVG(MonthlyIncome), 2) AS Average_Monthly_Income
FROM hr_employee_attrition
GROUP BY Department
ORDER BY Average_Monthly_Income DESC;

SELECT
    Department,
    ROUND(AVG(Age), 2) AS Average_Age
FROM hr_employee_attrition
GROUP BY Department;

SELECT
    MAX(MonthlyIncome) AS Highest_Monthly_Income
FROM hr_employee_attrition;

SELECT
    MIN(MonthlyIncome) AS Lowest_Monthly_Income
FROM hr_employee_attrition;

SELECT
    ROUND(AVG(YearsAtCompany), 2) AS Average_Years_At_Company
FROM hr_employee_attrition;

SELECT
    ROUND(AVG(YearsAtCompany), 2) AS Average_Years_At_Company
FROM hr_employee_attrition;

SELECT
    OverTime,
    Attrition,
    COUNT(*) AS Employee_Count
FROM hr_employee_attrition
GROUP BY OverTime, Attrition;

SELECT
    Gender,
    COUNT(*) AS Employee_Count
FROM hr_employee_attrition
GROUP BY Gender;

SELECT
    MaritalStatus,
    COUNT(*) AS Employee_Count
FROM hr_employee_attrition
GROUP BY MaritalStatus;

SELECT
    EmployeeNumber,
    JobRole,
    MonthlyIncome
FROM hr_employee_attrition
ORDER BY MonthlyIncome DESC
LIMIT 5;

SELECT
    Department,
    COUNT(*) AS Total_Employees
FROM hr_employee_attrition
GROUP BY Department
HAVING COUNT(*) > 100;

SELECT
    EmployeeNumber,
    JobRole,
    Department,
    OverTime
FROM hr_employee_attrition
WHERE Attrition = 'Yes'
AND OverTime = 'Yes';

SELECT
    EmployeeNumber,
    Department,
    JobRole
FROM hr_employee_attrition
WHERE Department = 'Human Resources'
OR Department = 'Sales';

SELECT
    EmployeeNumber,
    MonthlyIncome,

    CASE
        WHEN MonthlyIncome < 3000 THEN 'Low Income'
        WHEN MonthlyIncome BETWEEN 3000 AND 7000 THEN 'Middle Income'
        ELSE 'High Income'
    END AS Salary_Category

FROM hr_employee_attrition;

SELECT

CASE
    WHEN MonthlyIncome < 3000 THEN 'Low Income'
    WHEN MonthlyIncome BETWEEN 3000 AND 7000 THEN 'Middle Income'
    ELSE 'High Income'
END AS Salary_Category,

COUNT(*) AS Employees

FROM hr_employee_attrition

GROUP BY Salary_Category

ORDER BY Employees DESC;

SELECT
    EmployeeNumber,
    JobRole,
    MonthlyIncome
FROM hr_employee_attrition
WHERE MonthlyIncome >
(
    SELECT AVG(MonthlyIncome)
    FROM hr_employee_attrition
);

