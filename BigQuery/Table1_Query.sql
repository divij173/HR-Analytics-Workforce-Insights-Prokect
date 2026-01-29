-- Employee Dataset --
SELECT
  FirstName, LastName,
  concat(FirstName, ' ', LastName) AS Employee_Name
FROM 
  `hr-analytics-emp-project.Dataset.EmployeeData`;

-- Age Bins 18-51 --
SELECT
  AGE,
  CASE
      WHEN Age BETWEEN 18 AND 24 THEN '18–24'
      WHEN Age BETWEEN 25 AND 31 THEN '25–31'
      WHEN Age BETWEEN 32 AND 38 THEN '32–38'
      WHEN Age BETWEEN 39 AND 45 THEN '39–45'
      WHEN Age BETWEEN 46 AND 51 THEN '46–51'
      ELSE 'Out of Range'
  END AS Age_Group_Bin
FROM 
 `hr-analytics-emp-project.Dataset.EmployeeData`;

-- Full State Names --
SELECT
  EmployeeID, State,
  CASE
      WHEN State = 'CA' THEN 'California'
      WHEN State = 'IL' THEN 'Illinois'
      WHEN State = 'NY' THEN 'New York'
      ELSE 'Unknown'
  END AS State_full_name
FROM
  `hr-analytics-emp-project.Dataset.EmployeeData`;

-- Salary Bins 20387-547204 --
SELECT
  EmployeeID, Salary,
  CASE
      WHEN Salary BETWEEN 20387 AND 99999 THEN '20k–99k'
      WHEN Salary BETWEEN 100000 AND 199999 THEN '100k–199k'
      WHEN Salary BETWEEN 200000 AND 299999 THEN '200k–299k'
      WHEN Salary BETWEEN 300000 AND 499999 THEN '300k–499k'
      WHEN Salary >= 500000 THEN '500k+'
      ELSE 'Unknown'
  END AS Salary_bin
FROM `hr-analytics-emp-project.Dataset.EmployeeData`;

-- Combining All of the above and selecting columns --
SELECT
  EmployeeID,
  concat(FirstName, ' ', LastName) AS Employee_Name,
  Gender, BusinessTravel, Department, DistanceFromHomeKM, State, Ethnicity, Education, EducationField, JobRole, MaritalStatus, StockOptionLevel, OverTime, HireDate, Attrition, YearsAtCompany, YearsInMostRecentRole, YearsSinceLastPromotion, YearsWithCurrManager,
  CASE
      WHEN Age BETWEEN 18 AND 24 THEN '18–24'
      WHEN Age BETWEEN 25 AND 31 THEN '25–31'
      WHEN Age BETWEEN 32 AND 38 THEN '32–38'
      WHEN Age BETWEEN 39 AND 45 THEN '39–45'
      WHEN Age BETWEEN 46 AND 51 THEN '46–51'
      ELSE 'Out of Range'
  END AS Age_Group_Bin,
  CASE
      WHEN State = 'CA' THEN 'California'
      WHEN State = 'IL' THEN 'Illinois'
      WHEN State = 'NY' THEN 'New York'
      ELSE 'Unknown'
  END AS State_full_name,
  CASE
      WHEN Salary BETWEEN 20387 AND 99999 THEN '20k–99k'
      WHEN Salary BETWEEN 100000 AND 199999 THEN '100k–199k'
      WHEN Salary BETWEEN 200000 AND 299999 THEN '200k–299k'
      WHEN Salary BETWEEN 300000 AND 499999 THEN '300k–499k'
      WHEN Salary >= 500000 THEN '500k+'
      ELSE 'Unknown'
  END AS Salary_bin
FROM `hr-analytics-emp-project.Dataset.EmployeeData`;

-- Creating table 1 by Joining EmployeeData and EducationLevel tables, based on Education and EducationLevelID as primary key --

CREATE TABLE `hr-analytics-emp-project.Dataset.Table1` AS 
SELECT
  EmployeeID,
  concat(FirstName, ' ', LastName) AS Employee_Name,
  Gender, BusinessTravel, Department, DistanceFromHomeKM, State, Ethnicity, Education, EducationField, JobRole, MaritalStatus, StockOptionLevel, OverTime, HireDate, Attrition, YearsAtCompany, YearsInMostRecentRole, YearsSinceLastPromotion, YearsWithCurrManager,
  CASE
      WHEN Age BETWEEN 18 AND 24 THEN '18–24'
      WHEN Age BETWEEN 25 AND 31 THEN '25–31'
      WHEN Age BETWEEN 32 AND 38 THEN '32–38'
      WHEN Age BETWEEN 39 AND 45 THEN '39–45'
      WHEN Age BETWEEN 46 AND 51 THEN '46–51'
      ELSE 'Out of Range'
  END AS Age_Group_Bin,
  CASE
      WHEN State = 'CA' THEN 'California'
      WHEN State = 'IL' THEN 'Illinois'
      WHEN State = 'NY' THEN 'New York'
      ELSE 'Unknown'
  END AS State_full_name,
  CASE
      WHEN Salary BETWEEN 20387 AND 99999 THEN '20k–99k'
      WHEN Salary BETWEEN 100000 AND 199999 THEN '100k–199k'
      WHEN Salary BETWEEN 200000 AND 299999 THEN '200k–299k'
      WHEN Salary BETWEEN 300000 AND 499999 THEN '300k–499k'
      WHEN Salary >= 500000 THEN '500k+'
      ELSE 'Unknown'
  END AS Salary_bin,
  E2.EducationLevel as Education_Standard
FROM `hr-analytics-emp-project.Dataset.EmployeeData` E1

JOIN 
  `hr-analytics-emp-project.Dataset.EducationLevel` E2
ON
  E1.Education = E2.EducationLevelID



