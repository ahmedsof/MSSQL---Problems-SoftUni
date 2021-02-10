SELECT 
		ProductId,
		Rate,
		Description,
		CustomerId,
		Age,
		Gender
	FROM Feedbacks as F
	JOIN Customers AS C ON C.Id = F.CustomerId
	WHERE Rate < 5.0
	ORDER BY ProductId DESC, Rate ASC