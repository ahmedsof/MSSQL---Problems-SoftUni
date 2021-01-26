SELECT COUNT(*) AS [Count] FROM
(SELECT CountryName
	FROM Countries AS C
	LEFT JOIN MountainsCountries AS MC ON C.CountryCode = MC.CountryCode
	WHERE MC.CountryCode IS NULL) AS [CountryNoMoutians]