CREATE FUNCTION ufn_CashInUsersGames (@gameName VARCHAR(100)) 
	RETURNS TABLE
	AS
	
		RETURN(
		SELECT SUM(K.TotalCash) AS SumCash
			FROM(
			SELECT CasH AS TotalCash ,
				ROW_NUMBER() OVER ( ORDER BY Cash DESC) AS [RowNumber]
				FROM Games AS G
				JOIN UsersGames AS UG ON UG.GameId = G.Id
				WHERE [Name] = @gameName
				) AS K
					WHERE K.[RowNumber] % 2 != 0)
	--select * from ufn_CashInUsersGames ('Love in a mist')