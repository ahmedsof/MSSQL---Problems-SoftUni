SELECT TOP(2) DepositGroup
	FROM
		(SELECT  DepositGroup, AVG(MagicWandSize) AS [AVGWandSize]
			FROM WizzardDeposits
			GROUP BY DepositGroup) AS [AVGWandSizeQuery]
			ORDER BY AVGWandSize

	--SELECT top(2) DepositGroup
	--	FROM WizzardDeposits
	--	GROUP BY DepositGroup
	--	ORDER BY AVG(MagicWandSize)