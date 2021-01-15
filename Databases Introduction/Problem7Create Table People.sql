CREATE TABLE People
(
Id INT PRIMARY KEY IDENTITY,
[Name] NVARCHAR(200) NOT NULL,
Picture IMAGE,
Height DECIMAL(5,2),
[Weight] DECIMAL(5,2),
Gender CHAR(1) NOT NULL,
Birthdate DATE NOT NULL,
Biography NVARCHAR(MAX)
)

INSERT INTO People
([Name], Picture, Height, [Weight], Gender, Birthdate, Biography)
VALUES
('Ahmed', NULL,177, 85, 'm', '1982/11/9', NULL),
('Amar', NULL,187, 95, 'm', '1992/7/22', NULL),
('Asie', NULL,157, 55, 'f', '1981/1/5', NULL),
('Medine', NULL,160, 57, 'f', '1991/2/7', NULL),
('Adnan', NULL,177, 80, 'm', '2005/10/23', NULL)
