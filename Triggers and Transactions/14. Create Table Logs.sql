CREATE TRIGGER tr_InserAccountInfo ON Accounts FOR UPDATE
AS
DECLARE @NewSum DECIMAL(15, 2) = (SELECT Balance FROM inserted)
DECLARE @OldSum DECIMAL(15, 2) = (SELECT Balance FROM deleted)
DECLARE @accountId INT = (SELECT Id FROM inserted)

INSERT INTO Logs (AccountId, NewSum, OldSum)
VALUES (@accountId, @NewSum, @OldSum)

--UPDATE Accounts
--SET Balance += 10 
--WHERE Id = 1


--SELECT * FROM Accounts WHERE Id = 1

--SELECT * FROM Logs