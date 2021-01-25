SELECT MIN(AVGSalary) AS [MinAvgSalary]
FROM
  (SELECT DepartmentID, AVG(Salary) AS [AVGSalary]
FROM Employees
GROUP BY DepartmentID) AS [AvgSal Query]