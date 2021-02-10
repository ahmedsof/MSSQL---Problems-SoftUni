SELECT 
		FirstName,
		Age,
		PhoneNumber
	FROM Customers AS C
	JOIN Countries AS CR ON C.CountryId = CR.Id
	WHERE (AGE >= 21 AND FirstName LIKE '%an%') OR (PhoneNumber LIKE '%38' AND CR.Id !=
																		(SELECT Id FROM Countries
																		WHERE Name = 'Greece'))
	ORDER BY FirstName, Age DESC


	--SELECT * FROM Customers
	--SELECT * FROM Countries
	--WHERE Name != 'Greece'