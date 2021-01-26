SELECT TOP(5)
	Country, 
		CASE
			WHEN PeakName IS NULL THEN '(no highest peak)'
			ELSE PeakName
		END AS [Highest Peak Name],
		CASE
			WHEN Elevation IS NULL THEN 0
			ELSE Elevation
		END AS [Highest Peak Elevation], 
		CASE
			WHEN MountainRange IS NULL THEN '(no mountain)'
			ELSE MountainRange
			END AS [Mountain]
		FROM
(SELECT *,
	DENSE_RANK() OVER
	(PARTITION BY [Country] ORDER BY [Elevation] DESC) AS [PeakRank]

	FROM
			(SELECT 
					CountryName AS [Country],
					p.PeakName,
					p.Elevation,
					m.MountainRange
			FROM Countries AS C
					LEFT OUTER JOIN MountainsCountries AS MC ON C.CountryCode = MC.CountryCode
					LEFT OUTER JOIN Mountains AS M ON M.Id = MC.MountainId
					LEFT OUTER JOIN Peaks AS P ON M.Id = P.MountainId) AS [FullInfoQuery]
					) AS [PeakRankingQuery]
	WHERE PeakRank = 1
	ORDER BY Country ASC, [Highest Peak Elevation] ASC