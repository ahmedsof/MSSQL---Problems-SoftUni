CREATE FUNCTION ufn_CalculateFutureValue (@sum DECIMAL(15,4), @yearly FLOAT, @yearS INT)
RETURNS DECIMAL(15, 4)
	BEGIN
		DECLARE @result DECIMAL (15, 4)
		SET @result = (@sum *POWER((1+@yearly), @yearS))
		RETURN @result
	END

	--SELECT dbo.ufn_CalculateFutureValue (1000, 0.1,5)