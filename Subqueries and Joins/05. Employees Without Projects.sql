SELECT TOP(3)
E.EmployeeID,
E.FirstName
	FROM Employees AS E
			LEFT OUTER JOIN EmployeesProjects AS EP ON E.EmployeeID = EP.EmployeeID
			WHERE EP.ProjectID IS NULL
			ORDER BY E.EmployeeID ASC
			
	--SELECT * FROM EmployeesProjects		
