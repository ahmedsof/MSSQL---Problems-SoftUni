	SELECT RQ.Name, RQ.DisributorName
		FROM
		(SELECT 
			C.Name,
			D.Name AS DisributorName,
			DENSE_RANK() OVER (PARTITION BY C.Name ORDER BY COUNT(I.Id) DESC) AS [Rank]
		FROM Countries AS C
		JOIN Distributors AS D ON C.Id = D.CountryId
		LEFT JOIN Ingredients AS I ON D.Id = I.DistributorId
		GROUP BY C.Name, D.Name) AS RQ
			WHERE RQ.[Rank] = 1
			ORDER BY RQ.Name, RQ.DisributorName
