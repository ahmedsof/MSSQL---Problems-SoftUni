--CREATE DATABASE SoftUni

--Towns (Id, Name)
CREATE TABLE Towns
(
Id INT PRIMARY KEY IDENTITY,
[Name] NVARCHAR(30)
)

INSERT INTO Towns([Name])
VALUES
('Sofia'),
('Plovdiv'),
('Varna'),
('Burgas')


--Addresses (Id, AddressText, TownId)
CREATE TABLE Addresses
(
Id INT PRIMARY KEY IDENTITY,
AddressText NVARCHAR(100) NOT NULL,
TownId INT NOT NULL

CONSTRAINT FK_Addresses_TownId FOREIGN KEY REFERENCES Towns(Id)
)

--Departments (Id, Name)

CREATE TABLE Departments
(
Id INT PRIMARY KEY IDENTITY,
Name NVARCHAR(50) NOT NULL
)

INSERT INTO Departments([Name])
VALUES
('Engineering'),
('Sales'),
('Marketing'),
('Software Development'),
('Quality Assurance')

--USE SoftUni
--Employees 
--(Id, FirstName, MiddleName, LastName, JobTitle, DepartmentId, HireDate, Salary, AddressId)

CREATE TABLE Employees
(
Id INT PRIMARY KEY IDENTITY,
FirstName NVARCHAR(30) NOT NULL,
MiddleName NVARCHAR(30) NOT NULL,
LastName NVARCHAR(30) NOT NULL,
JobTitle NVARCHAR(30) NOT NULL,
DepartmentId INT FOREIGN KEY REFERENCES Departments(Id),
HireDate DATE NOT NULL,
Salary DECIMAL(6,2) NOT NULL,
AddressId INT FOREIGN KEY REFERENCES Addresses(Id)
)
INSERT INTO Employees
(FirstName,MiddleName,LastName,JobTitle,DepartmentId,HireDate,Salary)
VALUES
('Ivan', 'Ivanov', 'Ivanov', '.NET Developer',4, '02/01/2013', 3500.00),
('Petar', 'Petrov', 'Petrov','Senior Engineer',1,'03/02/2004', 4000.00),
('Maria', 'Petrova', 'Ivanova',	'Intern',5,'08/28/2016',525.25),
('Georgi', 'Teziev', 'Ivanov','CEO', 2,'12/09/2007',3000.00),
('Peter', 'Pan', 'Pan',	'Intern', 3,'08/28/2016',	599.88)


