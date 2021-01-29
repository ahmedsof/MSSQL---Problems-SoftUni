SELECT DepositGroup, MagicWandCreator, MIN(DepositCHarge) AS [MinDepositCharge]
	FROM WizzardDeposits
GROUP BY DepositGroup, MagicWandCreator
ORDER BY MagicWandCreator, DepositGroup