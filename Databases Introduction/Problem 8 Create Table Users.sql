CREATE TABLE Users
(
Id BIGINT PRIMARY KEY IDENTITY,
Username VARCHAR(30) NOT NULL,
[Password] VARCHAR(26) NOT NULL,
ProfilePicture VARCHAR(MAX),
LastLoginTime DATETIME,
IsDeleted BIT
)

INSERT INTO Users  
(Username, [Password], ProfilePicture, LastLoginTime, IsDeleted)
VALUES

('Ahmed', 'ahmed123', NULL, '1/1/2020', 0),
('Yusuf', 'yusuf123', NULL, '9/22/2020', 1),
('Metin', 'metin123', NULL, '12/31/2020', 0),
('Asie', 'asie123', NULL, '1/5/2021', 1),
('Amar', 'amar123', NULL, '1/1/2021', 0)
