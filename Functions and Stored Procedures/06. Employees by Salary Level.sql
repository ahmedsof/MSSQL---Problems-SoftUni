CREATE PROCEDURE usp_EmployeesBySalaryLevel (@paramSalary NVARCHAR(15))
	AS
	SELECT FirstName AS  [First Name], LastName AS [Last Name]
		FROM Employees
		WHERE dbo.ufn_GetSalaryLevel(Salary) = @paramSalary

--EXEC usp_EmployeesBySalaryLevel 'high'
	