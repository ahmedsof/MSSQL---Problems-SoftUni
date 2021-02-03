CREATE PROC usp_GetHoldersWithBalanceHigherThan (@money DECIMAL(15,2))
AS
SELECT FirstName, LastName
	FROM AccountHolders AS AH
	JOIN Accounts AS A ON A.AccountHolderId = AH.Id
	GROUP BY FirstName, LastName
	HAVING SUM(Balance) > @money
	ORDER BY FirstName, LastName

	--EXEC usp_GetHoldersWithBalanceHigherThan 1000000