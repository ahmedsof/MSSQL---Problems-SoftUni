CREATE VIEW V_EmployeeNameJobTitle  AS
SELECT FirstName+ ' '+ISNULL(MiddleName, '')+ ' '+ LastNAme AS [Full Name], JobTitle
FROM Employees;

--SELECT * FROM V_EmployeeNameJobTitle

