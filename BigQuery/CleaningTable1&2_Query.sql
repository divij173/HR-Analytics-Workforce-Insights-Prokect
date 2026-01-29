-- Identifying and Deleting Duplicate and null values --

-- Identifying null values --

SELECT *
FROM
   `hr-analytics-emp-project.Dataset.Table1`
WHERE
   EmployeeID IS NULL OR Employee_Name IS NULL OR Gender IS NULL OR BusinessTravel IS NULL OR Department IS NULL OR DistanceFromHomeKM IS NULL OR State IS NULL OR Ethnicity IS NULL OR Education IS NULL OR EducationField IS NULL OR JobRole IS NULL OR MaritalStatus IS NULL OR StockOptionLevel IS NULL OR OverTime IS NULL OR HireDate IS NULL OR Attrition IS NULL OR YearsAtCompany IS NULL OR YearsInMostRecentRole IS NULL OR YearsSinceLastPromotion IS NULL OR YearsWithCurrManager IS NULL OR Age_Group_Bin IS NULL OR State_full_name IS NULL OR Salary_bin IS NULL OR Education_Standard IS NULL;

-- Identify Duplicate Values --

SELECT 
   EmployeeID,
   COUNT(*) AS Total
FROM
   `hr-analytics-emp-project.Dataset.Table1`
GROUP BY
   EmployeeID
HAVING
   COUNT(*)>1;

--  Identifying Null Values in table 2 --

SELECT *
FROM
   `hr-analytics-emp-project.Dataset.Table2`
WHERE
   EmployeeID IS NULL OR PerformanceID IS NULL OR ReviewDate IS NULL OR EnvironmentSatisfaction IS NULL OR JobSatisfaction IS NULL OR RelationshipSatisfaction IS NULL OR TrainingOpportunitiesWithinYear IS NULL OR TrainingOpportunitiesTaken IS NULL OR WorkLifeBalance IS NULL OR SelfRating IS NULL OR ManagerRating IS NULL;

-- Identify Duplicate values --

SELECT 
   PerformanceID,
   COUNT(*) AS Total
FROM
   `hr-analytics-emp-project.Dataset.Table2`
GROUP BY
   PerformanceID
HAVING
   COUNT(*)>1;

