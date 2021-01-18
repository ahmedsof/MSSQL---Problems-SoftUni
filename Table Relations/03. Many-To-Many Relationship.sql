CREATE TABLE Students
(
StudentID INT PRIMARY KEY IDENTITY,
[Name] NVARCHAR(25) NOT NULL
)
 --INSERT INTO Students([Name])
 --VALUES
 --('Mila'),
 --('Toni'),
 --('Ron')


--SELECT * FROM Students

CREATE TABLE Exams
(
ExamID INT PRIMARY KEY IDENTITY(100,1),
[Name] NVARCHAR(25) NOT NULL
)
 
 CREATE TABLE StudentsExams
 (
 StudentID INT  FOREIGN KEY REFERENCES Students(StudentID),
 ExamID INT  FOREIGN KEY REFEREnCES Exams(ExamID)
 PRIMARY KEY(StudentID, ExamID)
 )