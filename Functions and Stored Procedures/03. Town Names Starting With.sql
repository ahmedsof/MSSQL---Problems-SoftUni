CREATE PROC usp_GetTownsStartingWith (@StringParam NVARCHAR(MAX))
	AS
	SELECT T.[Name]  AS Town
		FROM Towns AS T
			WHERE T.[Name] LIKE @StringParam + '%'

	--EXEC usp_GetTownsStartingWith b