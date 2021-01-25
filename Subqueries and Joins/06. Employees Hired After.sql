SELECT
	E.FirstName, 
	E.LastName,
	E.HireDate,
	D.[Name] AS [DeptName]
	FROM Employees AS E
			INNER JOIN Departments AS D ON E.DepartmentID = D.DepartmentID
			WHERE YEAR(E.HireDate)  > '1998' AND
			D.[Name] IN ('Sales', 'Finance')
	ORDER BY E.HireDate ASC
			
			
			
--SELECT * FROM Employees

