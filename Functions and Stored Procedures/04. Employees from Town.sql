CREATE PROC usp_GetEmployeesFromTown (@TownNAme NVARCHAR(MAX))
	AS
		SELECT E.FirstName AS [First Name],  E.LastName AS [Last Name]
				FROM Employees AS E
					JOIN Addresses AS A ON E.AddressID = A.AddressID
					JOIN Towns AS T ON A.TownID = T.TownID
					WHERE T.[Name] = @TownNAme

					
					--EXEC usp_GetEmployeesFromTown Sofia
