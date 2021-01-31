SELECT * INTO NewTable2 
FROM Employees
WHERE Salary > 30000

DELETE FROM NewTable2
WHERE ManagerID = 42

UPDATE NewTable2
SET Salary += 5000
WHERE DepartmentID = 1

 SELECT DepartmentID, AVG(Salary) AS AverageSalary 
	FROM NewTable2
 GROUP BY DepartmentID

