-- متوسط الراتب لكل دور وظيفي مع مجموع ساعات العمل الإضافية
SELECT JobRole, 
       AVG(Salary) AS AvgSalary, 
       SUM(OverTime) AS TotalOvertimeHours
FROM Employee$
GROUP BY JobRole
ORDER BY TotalOvertimeHours DESC
--عدد الموظفين حسب كل فئة عرقية
SELECT Ethnicity, COUNT(EmployeeID) AS NumberOfEmployees
FROM Employee$
GROUP BY Ethnicity
ORDER BY NumberOfEmployees DESC
--مجموع الفرص التدريبية لكل سنة
SELECT YEAR(ReviewDate) AS Year, 
       SUM(TrainingOpportunitiesTaken) AS TotalTraining
FROM Performance_Rating$
GROUP BY YEAR(ReviewDate)
ORDER BY Year ASC
--standard deviation(الانحراف المعياري)
SELECT STDEV(Salary) AS StandardDeviation
FROM Employee$
--متوسط تقييم المديرين و متوسط التوازن بين العمل والحياة
SELECT AVG(ManagerRating) AS AvgManagerRating, 
       AVG(WorkLifeBalance) AS AvgWorkLifeBalance
FROM Performance_Rating$
--متوسط العمر للموظفين الذين يشغلون وظيفة الإدارة
SELECT AVG(Age) AS AverageAge
FROM Employee$
WHERE JobRole = 'Manager'
--عدد الموظفين في كل فئة سفر عمل و معدل التحول الوظيفي
SELECT BusinessTravel, 
       COUNT(EmployeeID) AS NumberOfEmployees, 
       (SUM(Attrition) / 237) * 100 AS AttritionRateOverallPercentage
FROM Employee$
GROUP BY BusinessTravel
ORDER BY AttritionRateOverallPercentage DESC

SELECT AVG(salary) AS average_salary
FROM employee$
