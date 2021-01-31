--•	FirstName
--•	LastName
--•	DepartmentID
--Select all employees who have salary higher than the average salary of their respective departments. 
--Select only the first 10 rows. Order by DepartmentID.

SELECT TOP(10) FirstName, LastName, DepartmentID 
	FROM Employees AS E
		WHERE Salary > (SELECT AVG(Salary) 
								FROM Employees
								WHERE DepartmentID = E.DepartmentID
									GROUP BY DepartmentID)
		ORDER BY DepartmentID
