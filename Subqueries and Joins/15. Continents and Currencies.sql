SELECT 
	ContinentCode,
	CurrencyCode,
	CountCurency AS [CurrencyUsage]
FROM
	(SELECT 
		ContinentCode,
		CurrencyCode,
		CountCurency,
		DENSE_RANK() 
		OVER(PARTITION BY ContinentCode ORDER BY CountCurency DESC) AS [CurencyRank]
		FROM
		(SELECT 
			ContinentCode, 
			CurrencyCode, 
			COUNT(*) AS [CountCurency]
			FROM Countries
			GROUP BY ContinentCode, CurrencyCode) AS [CurencyCountQuery]
		WHERE CountCurency > 1) AS [CurencyRankingQuery]
	WHERE CurencyRank = 1
	ORDER BY ContinentCode