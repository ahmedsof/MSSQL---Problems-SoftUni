--/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      [Name]
  FROM Towns
  WHERE LEN([Name]) IN (5, 6)
  ORDER BY [Name]