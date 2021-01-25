SELECT TOP(50)
		E.EmployeeID,
		E.FirstName + ' ' + E.LastName AS [EmployeeName],
		M.FirstName + ' ' + m.LastName as [ManagerName],
		D.[Name] AS [DepartmentName]
	FROM Employees AS E
		INNER JOIN Employees AS M ON E.ManagerID = M.EmployeeID
		INNER JOIN Departments AS D ON E.DepartmentID = D.DepartmentID
		
	ORDER BY E.EmployeeID 