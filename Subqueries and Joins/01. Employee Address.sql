SELECT TOP(5) E.EmployeeID,
	E.JobTitle,
	A.AddressID,
	A.AddressText
		FROM Employees AS E
		INNER JOIN Addresses AS A
		ON E.AddressID = A.AddressID
ORDER BY A.AddressID