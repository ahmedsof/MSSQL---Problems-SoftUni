
CREATE VIEW v_UserWithCountries  AS
SELECT 
CU.FirstName + ' '+ CU.LastName AS CustomerName,
CU.Age AS Age,
CU.Gender AS Gender,
C.Name AS CountryName
		FROM Countries AS C
		JOIN Customers AS CU ON C.Id = CU.CountryId

	