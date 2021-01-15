CREATE DATABASE CarRental

--Categories (Id, CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate)
USE CarRental
CREATE TABLE Categories  
(
Id INT PRIMARY KEY IDENTITY,
CategoryName NVARCHAR(40) NOT NULL,
DailyRate DECIMAL(4, 2),
WeeklyRate DECIMAL(4,2),
MonthlyRate DECIMAL(4,2),
WeekendRate DECIMAL(4,2),
)
 --Cars (Id, PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Picture, Condition, Available)
 --USE CarRental
CREATE TABLE Cars
(
Id INT PRIMARY KEY IDENTITY,
PlateNumber NVARCHAR(10) NOT NULL,
Manufacturer NVARCHAR(30) NOT NULL,
Model NVARCHAR(20) NOT NULL,
CarYear DATETIME2 NOT NULL,
CategoryId INT FOREIGN KEY REFERENCES Categories(Id),
Doors INT,
Picture NVARCHAR(MAX),
Condition NVARCHAR(15),
Available BIT NOT NULL
)
--Employees (Id, FirstName, LastName, Title, Notes)

CREATE TABLE Employees
(
Id INT PRIMARY KEY IDENTITY,
FirstName NVARCHAR(20) NOT NULL,
LastName NVARCHAR(20) NOT NULL,
Title NVARCHAR(20),
Notes NVARCHAR(200)
)

--Customers (Id, DriverLicenceNumber, FullName, Address, City, ZIPCode, Notes)

CREATE TABLE Customers
(
Id INT PRIMARY KEY IDENTITY,
DriverLicenceNumber NVARCHAR(20) NOT NULL,
FullName NVARCHAR(50) NOT NULL,
[Address] NVARCHAR(100) NOT NULL,
City NVARCHAR(40) NOT NULL,
ZIPCode INT NOT NULL,
Notes NVARCHAR(200)
)

--RentalOrders 
--(Id, EmployeeId, CustomerId, CarId, TankLevel, KilometrageStart, KilometrageEnd, 
--TotalKilometrage, StartDate, EndDate, TotalDays, RateApplied, TaxRate, OrderStatus, Notes)
--USE CarRental
CREATE TABLE RentalOrders
(
Id INT PRIMARY KEY IDENTITY,
EmployeeId INT FOREIGN KEY REFERENCES Employees(Id),
CustomerId INT FOREIGN KEY REFERENCES Customers(Id),
CarId INT FOREIGN KEY REFERENCES Cars(Id),
TankLevel INT NOT NULL,
KilometrageStart INT NOT NULL,
KilometrageEnd INT NOT NULL,
TotalKilometrage AS KilometrageEnd - KilometrageStart,
StartDate DATETIME2 NOT NULL,
EndDate DATETIME2 NOT NULL,
TotalDays AS DATEDIFF(DAY,StartDate,EndDate),
RateApplied DECIMAL(5, 2),
TaxRate DECIMAL(7,2) NOT NULL,
OrderStatus NVARCHAR(60) NOT NULL,
Notes NVARCHAR(200)
)


INSERT INTO Categories (CategoryName, DailyRate,WeeklyRate,MonthlyRate, WeekendRate)
VALUES

('dfgb', 49.44, 23.23, 34.56, 46.43),
('fgn', 65.67, 33.65, 35.66, 45.67),
('fgg', 12.45, 23.56, 67.43, 12.56)


INSERT INTO Cars (PlateNumber, Manufacturer, Model, CarYear, CategoryId,Doors, Picture, Condition,Available)
values
('sfgggh', 'mmsjj', 'mmamhf', '2002', 1, 5, NULL, 'dkhrmj', 0),
('kjdhsl', 'kjdghfl', 'jhgsdjks', '2000', 2, 3, NULL, 'dfgr', 1),
('kjjsdrljk', 'kkhsls', 'skhdgkjf', '2020', 3, 4, NULL, 'kjkjj', 1)


INSERT INTO Employees(FirstName, LastName, Title,Notes)
VALUES
('Ahmed', 'Ahmed', NULL, NULL),
('Amar', 'Amar', NULL, NULL),
('Asie', 'Asie', NULL, NULL)


INSERT INTO Customers(DriverLicenceNumber, FullName, [Address], City, ZIPCode, Notes)
VALUES
('JADHK29', 'jakjs ajh', 'shjhdlkak90', 'asahdja', 9239, NULL),
('JADHK29', 'jakjs ajh', 'shjhdlkak90', 'asahdja', 9789, NULL),
('JADHK29', 'jakjs ajh', 'shjhdlkak90', 'asahdja', 4289, NULL)



INSERT INTO RentalOrders (EmployeeId, CustomerId, CarId, TankLevel, KilometrageStart, KilometrageEnd,
StartDate, EndDate, RateApplied, TaxRate, OrderStatus, Notes)
VALUES
(1, 1, 1, 66, 24555, 24777, '2020-04-20', '2020-04-25', 23.56, 56.23, 'dffjwjwekjr', NULL),
(2, 2, 2, 56, 24555, 24777, '2020-04-20', '2020-04-25', 23.56, 56.23, 'dffjwjwekjr', NULL),
(3, 3, 3, 66, 24555, 24777, '2020-04-20', '2020-04-25', 23.56, 56.23, 'dffjwjwekjr', NULL)

--SELECT * FROM Categories