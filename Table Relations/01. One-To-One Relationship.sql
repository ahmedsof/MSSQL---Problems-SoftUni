--CREATE DATABASE TableRelations
--USE TableRelations
CREATE TABLE Passports
(
PassportID INT PRIMARY KEY IDENTITY(101,1) NOT NULL,
PassportNumber NVARCHAR(15) UNIQUE NOT NULL
)
--USE TableRelations
CREATE TABLE Persons
(
PersonID INT PRIMARY KEY IDENTITY NOT NULL,
FirstName NVARCHAR(20) NOT NULL,
Salary DECIMAL(7,2) NOT NULL,
PassportID INT NOT NULL 
	FOREIGN KEY REFERENCES Passports(PassportID) UNIQUE
)

INSERT INTO  Passports(PassportNumber)
VALUES
('N34FG21B'),
('K65LO4R7'),
('ZE657QP2')

INSERT INTO Persons(FirstName, Salary, PassportID)
VALUES
('Roberto', 43300.00, 101),
('Tom', 56100.00, 102),
('Yana', 60200.00, 103)
 --SELECT * FROM Persons
                                            
