SELECT DISTINCT K.DepartmentID, K.Salary AS ThirdHighestSalary
FROM
(SELECT DepartmentID, Salary, 
DENSE_RANK() OVER (PARTITION BY DepartmentID ORDER BY Salary DESC) AS Ranked
FROM Employees) AS K
WHERE K.Ranked = 3
