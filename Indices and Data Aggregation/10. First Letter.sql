SELECT [FirstLetter]  FROM
		(SELECT FirstName, SUBSTRING(FirstName, 1, 1) AS [FirstLetter]
			FROM WizzardDeposits
			WHERE DepositGroup LIKE 'Troll Chest') AS [FirstLetterQuery]
			GROUP BY [FirstLetter]
			ORDER BY [FirstLetter] ASC
	
