-- Performance Table & Rating Level & Satisfaction Level Table --
CREATE TABLE `hr-analytics-emp-project.Dataset.Table2` AS
SELECT
  EmployeeID, PerformanceID, ReviewDate, 
  R4.SatisfactionLevel AS EnvironmentSatisfaction, 
  R5.SatisfactionLevel AS JobSatisfaction, 
  R6.SatisfactionLevel AS RelationshipSatisfaction, 
  TrainingOpportunitiesWithinYear, TrainingOpportunitiesTaken, WorkLifeBalance, 
  R2.RatingLevel AS SelfRating,
  R3.RatingLevel AS ManagerRating,

FROM
  `hr-analytics-emp-project.Dataset.PerformanceRatingData` R1
JOIN
  `hr-analytics-emp-project.Dataset.RatingLevel` R2
ON
  R1.SelfRating = R2.RatingID
JOIN 
  `hr-analytics-emp-project.Dataset.RatingLevel` R3
ON 
  R1.ManagerRating = R3.RatingID
JOIN 
  `hr-analytics-emp-project.Dataset.SatisfiedLevel` R4
ON 
  R1.EnvironmentSatisfaction = R4.SatisfactionID
JOIN 
  `hr-analytics-emp-project.Dataset.SatisfiedLevel` R5
ON 
R1.JobSatisfaction = R5.SatisfactionID
JOIN 
  `hr-analytics-emp-project.Dataset.SatisfiedLevel` R6
ON 
R1.RelationshipSatisfaction = R6.SatisfactionID;

