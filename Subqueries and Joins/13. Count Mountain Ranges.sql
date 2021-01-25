
SELECT CountryCode, COUNT(MountainID) AS [MountRanges]
	FROM MountainsCountries
	WHERE CountryCode IN ('US', 'RU', 'BG')
	GROUP BY CountryCode
	