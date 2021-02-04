CREATE PROCEDURE usp_CalculateFutureValueForAccount (@accountID INT, @interesseRate FLOAT)	
	AS
		SELECT 
			A.Id AS [Account ID],
			AH.FirstName AS [First Name],
			ah.LastName AS [Last Name],
			a.Balance AS [Current Balance],
			dbo.ufn_CalculateFutureValue (A.Balance, @interesseRate, 5) AS [Balance in 5 years]
				FROM AccountHolders AS AH
				JOIN Accounts AS A ON AH.Id = A.AccountHolderId
				WHERE A.Id = @accountID

--EXEC usp_CalculateFutureValueForAccount 1, 0.1