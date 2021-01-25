SELECT TOP (50)
	E.FirstName, 
	E.LastName,
	T.[Name] AS [Town], 
	A.AddressText
	FROM Employees AS E
			INNER JOIN Addresses AS A
				ON E.AddressID = A.AddressID
			INNER JOIN Towns AS T 
				ON T.TownID = A.TownID
ORDER BY E.FirstName ASC, E.LastName ASC