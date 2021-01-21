--/****** Script for SelectTopNRows command from SSMS  ******/
SELECT FirstName, LastName
      
  FROM Employees
  WHERE JobTitle NOT LIKE '%engineer%'
 