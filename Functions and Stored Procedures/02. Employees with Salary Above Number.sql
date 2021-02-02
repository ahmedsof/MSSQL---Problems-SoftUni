CREATE PROC usp_GetEmployeesSalaryAboveNumber 
			(@NumParam DECIMAL(18, 4)) 
		AS
			SELECT FirstName AS 'FirstName', LastName 'LastName'
			FROM Employees
				WHERE Salary >= @NumParam
	

	--EXEC usp_GetEmployeesSalaryAboveNumber 48100