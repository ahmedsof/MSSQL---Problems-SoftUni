SELECT TOP(5)
		CountryName, 
		MAX(P.Elevation) AS [HighestPeak],
		MAX(R.[Length]) AS [LongestRiver]
	FROM Countries AS C
LEFT JOIN CountriesRivers AS CR ON C.CountryCode = CR.CountryCode
LEFT JOIN Rivers AS R ON R.Id = CR.RiverId

LEFT JOIN MountainsCountries AS MC ON C.CountryCode = MC.CountryCode
LEFT JOIN Mountains AS M ON M.Id = MC.MountainId
LEFT JOIN Peaks AS P ON P.MountainId = M.Id
GROUP BY C.CountryName
ORDER BY [HighestPeak] DESC, [LongestRiver] DESC, CountryName ASC