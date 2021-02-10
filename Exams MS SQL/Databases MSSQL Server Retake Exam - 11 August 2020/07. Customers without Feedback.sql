SELECT CONCAT(C.FirstName,' ', C.LastName) AS CustomerName,
C.PhoneNumber,
C.Gender
FROM Customers AS C
	LEFT JOIN Feedbacks as F ON C.Id = F.CustomerId
	WHERE F.Id IS NULL
	ORDER BY C.Id