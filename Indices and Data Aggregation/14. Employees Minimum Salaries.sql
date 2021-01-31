SELECT DepartmentID, MIN(Salary) AS MinimumSalary
	FROM Employees
	WHERE DepartmentID IN (2, 5, 7) AND HireDate > '1/1/2000'
GROUP BY DepartmentID
