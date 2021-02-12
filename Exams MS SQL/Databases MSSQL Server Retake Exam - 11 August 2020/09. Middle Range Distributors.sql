SELECT DistributorName, IngredientName, ProductName, [AVG] AS AverageRate
	FROM(SELECT 
			D.Name AS DistributorName,
			I.Name AS IngredientName,
			P.Name AS ProductName,
			AVG(F.Rate) as [AVG]
		FROM Distributors AS D
	JOIN Ingredients AS I ON D.Id = I.DistributorId
	JOIN ProductsIngredients AS PRI ON I.Id= PRI.IngredientId
	JOIN Products AS P ON P.Id = PRI.ProductId
	JOIN Feedbacks AS F ON P.Id = F.ProductId
		GROUP BY D.Name, I.Name, P.Name) AS GROUPIMG
			WHERE [AVG] BETWEEN 5 AND 8
			 ORDER BY DistributorName, IngredientName, ProductName