--CREATE DATABASE Hotel

--Employees (Id, FirstName, LastName, Title, Notes)

CREATE TABLE Employees
(
Id INT PRIMARY KEY IDENTITY,
FirstName NVARCHAR(25) NOT NULL,
LastName NVARCHAR(25) NOT NULL,
Title NVARCHAR(15) NOT NULL,
Notes NVARCHAR(100)
)
INSERT INTO Employees(FirstName, LastName, Title, Notes)
VALUES
('Adaff', 'Adkfsjh', 'kjhadkasg', NULL),
('Adaff', 'Adkfsjh', 'kjhadkasg', NULL),
('Adaff', 'Adkfsjh', 'kjhadkasg', NULL)

--Customers (AccountNumber, FirstName, LastName, PhoneNumber, EmergencyName, EmergencyNumber, Notes)

CREATE TABLE Customers
(
AccountNumber NVARCHAR(25) PRIMARY KEY,
FirstName NVARCHAR(25) NOT NULL,
LastName NVARCHAR(25) NOT NULL,
PhoneNumber NVARCHAR(20) NOT NULL,
EmergencyName NVARCHAR(60) NOT NULL,
EmergencyNumber NVARCHAR(25) NOT NULL,
Notes NVARCHAR(150)
)
INSERT INTO Customers
(AccountNumber, FirstName, LastName, PhoneNumber,EmergencyName, EmergencyNumber,Notes)
VALUES
('1', 'Ákjhkhd', 'Akjhhjfkh', 'kkjhkhd', 'jhdajkhd', 'kjadhyd', NULL),
('2', 'Ákjhkhd', 'Akjhhjfkh', 'kkjhkhd', 'jhdajkhd', 'kjadhyd', NULL),
('3', 'Ákjhkhd', 'Akjhhjfkh', 'kkjhkhd', 'jhdajkhd', 'kjadhyd', NULL)

--RoomStatus (RoomStatus, Notes)

CREATE TABLE RoomStatus
(
RoomStatus NVARCHAR(20) PRIMARY KEY,
Notes NVARCHAR(150)
)

INSERT INTO RoomStatus (RoomStatus, Notes)
	VALUES
		('FREE AND CLEAN', NULL),
		('FREE, NOT CLEAN', NULL),
		('OCCUPIED', NULL)


--RoomTypes (RoomType, Notes)

CREATE TABLE RoomTypes
(
RoomType NVARCHAR(20) PRIMARY KEY,
Notes NVARCHAR(150)
)
INSERT INTO RoomTypes (RoomType, Notes)
VALUES 
('1', NULL),
('2', NULL),
('3', NULL)

--BedTypes (BedType, Notes)

CREATE TABLE BedTypes
(
BedType NVARCHAR(20) PRIMARY KEY,
Notes NVARCHAR(150)
)

INSERT INTO BedTypes (BedType, Notes)
VALUES 
('1', NULL),
('2', NULL),
('3', NULL)

--Rooms (RoomNumber, RoomType, BedType, Rate, RoomStatus, Notes)

CREATE TABLE Rooms
(
RoomNumber NVARCHAR(10) PRIMARY KEY,
RoomType NVARCHAR(20) FOREIGN KEY REFERENCES RoomTypes(RoomType),
BedType NVARCHAR(20) FOREIGN KEY REFERENCES BedTypes(BedType),
Rate DECIMAL(4,2),
RoomStatus NVARCHAR(20) FOREIGN KEY REFERENCES RoomStatus(RoomStatus),
Notes NVARCHAR(150)
)
 INSERT INTO Rooms (RoomNumber, RoomType, BedType, Rate, RoomStatus,Notes)
 VALUES
 ('1', '1','1', 27.12, 'FREE AND CLEAN', NULL),
 ('2', '2','2', 20, 'FREE AND CLEAN', NULL),
 ('3', '3','3', 37.10, 'FREE AND CLEAN', NULL)

--Payments (Id, EmployeeId, PaymentDate, AccountNumber, FirstDateOccupied,
--LastDateOccupied, TotalDays, AmountCharged, TaxRate, TaxAmount, PaymentTotal, Notes)

CREATE TABLE Payments
(
Id INT PRIMARY KEY IDENTITY,
EmployeeId INT FOREIGN KEY REFERENCES Employees(Id),
PaymentDate DATETIME2 NOT NULL,
AccountNumber NVARCHAR(25) FOREIGN KEY REFERENCES Customers(AccountNumber),
FirstDateOccupied DATETIME2 NOT NULL,
LastDateOccupied DATETIME2 NOT NULL,
TotalDays AS DATEDIFF(DAY,FirstDateOccupied,LastDateOccupied),
AmountCharged DECIMAL(6,2) NOT NULL,
TaxRate DECIMAL(4, 2) NOT NULL,
TaxAmount AS AmountCharged * TaxRate,
PaymentTotal DECIMAL(6,2) NOT NULL,
Notes NVARCHAR(150)
)
INSERT INTO Payments
(EmployeeId, PaymentDate, AccountNumber, FirstDateOccupied, LastDateOccupied, AmountCharged, TaxRate, PaymentTotal, Notes)
VALUES
(1, '2020-10-10', '1', '2020-09-10', '2020-09-20', 200, 20, 220, NULL),
(2, '2020-10-10', '1', '2020-09-10', '2020-09-20', 200, 20, 220, NULL),
(3, '2020-10-10', '1', '2020-09-10', '2020-09-20', 200, 20, 220, NULL)
--USE  Hotel
--Occupancies (Id, EmployeeId, DateOccupied, AccountNumber,
--RoomNumber, RateApplied, PhoneCharge, Notes)

CREATE TABLE Occupancies
(
Id INT PRIMARY KEY IDENTITY,
EmployeeId INT FOREIGN KEY REFERENCES Employees(Id),
DateOccupied DATETIME2 NOT NULL,
AccountNumber NVARCHAR(25) FOREIGN KEY REFERENCES Customers(AccountNumber),
RoomNumber NVARCHAR(10) FOREIGN KEY REFERENCES Rooms(RoomNumber),
RateApplied DECIMAL(4,2),
PhoneCharge DECIMAL(4,2),
Notes NVARCHAR(150)
)
INSERT INTO Occupancies
(EmployeeId, DateOccupied, AccountNumber, RoomNumber,RateApplied,PhoneCharge,Notes)
VALUES
(1, '2020-05-05', '1','1', 20.99, 10.55,NULL),
(2, '2020-05-05', '2','2', 20.99, 10.55,NULL),
(3, '2020-05-05', '3','3', 20.99, 10.55,NULL)

--SELECT * FROM Rooms