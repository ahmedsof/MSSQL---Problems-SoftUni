--CREATE DATABASE Movies

--USE Movies

CREATE TABLE Directors
(
Id INT PRIMARY KEY IDENTITY,
DirectorName VARCHAR(60) NOT NULL,
Notes NVARCHAR(MAX)
)

CREATE TABLE Genres
(
Id INT PRIMARY KEY IDENTITY,
GenreName VARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)

CREATE TABLE Categories
(
Id INT PRIMARY KEY IDENTITY,
CategoryName VARCHAR(20),
Notes NVARCHAR(MAX)
)

CREATE TABLE Movies
(
Id INT PRIMARY KEY IDENTITY,
Title NVARCHAR(60) NOT NULL,
DirectorId INT FOREIGN KEY REFERENCES Directors(Id),
CopyrightYear DATETIME2 NOT NULL,
[Length] TIME NOT NULL,
GenreId INT FOREIGN KEY REFERENCES Genres(Id),
CategoryId INT FOREIGN KEY REFERENCES Categories(Id),
Rating DECIMAL(3, 2),
Notes NVARCHAR(MAX)
)

INSERT INTO Directors
(DirectorName, Notes)
VALUES
('ajdndj akjkJn', NULL),
('Fkkj JHhbkj', NULL),
('Knhgj FGDdas', NULL),
('Njosiis Bjjhk', NULL),
('Njyiu Jhkhh', NULL)

INSERT INTO Genres
(GenreName, Notes)
VALUES
('ADF SDSDS', NULL),
('daasd sdf', NULL),
('adas fassa', NULL),
('adsf dfasd', NULL),
('asdafs dad', NULL)

INSERT INTO Categories
(CategoryName, Notes)
VALUES
('dffdd', NULL),
('dfggv', NULL),
('sffsb', NULL),
('sfsf', NULL),
('sfdsf', NULL)

INSERT INTO Movies
(Title, DirectorId, CopyrightYear, [Length], GenreId, CategoryId, Rating, Notes)
VALUES
('dhjjanj', 1, '2002', '01:10', 1, 1, 7.3, NULL),
('Sghdssdg', 2, '2015', '01:50', 2, 2, 6.7, NULL),
('Dgfb', 3, '1988', '02:26', 3, 3, 9.5, NULL),
('Vreyhrhr', 4, '1999', '00:55', 4, 4, 4.5, NULL),
('Adghdhh', 5, '2021', '02:30', 5, 5, 6.1, NULL)



--SELECT * FROM Movies