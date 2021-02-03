CREATE FUNCTION ufn_GetSalaryLevel (@salary DECIMAL(18,4)) 
	RETURNS NVARCHAR(15)
	AS
		BEGIN
			DECLARE @SelaryLevel VARCHAR(15)
			IF (@salary < 30000)
				SET @SelaryLevel = 'Low';
			ELSE IF (@salary BETWEEN 30000 AND 50000)
				SET @SelaryLevel =  'Average'
			ELSE
				SET @SelaryLevel = 'High'
		RETURN @SelaryLevel
		END

		--SELECT CAST(Salary AS DECIMAL(18,4)) AS Salary,
		--	dbo.ufn_GetSalaryLevel(Salary) AS 'Salary Level'
		--FROM Employees