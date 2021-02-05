CREATE TRIGGER tr_LogEmail ON Logs FOR INSERT
AS
DECLARE @accountId INT= (SELECT TOP(1) AccountId FROM inserted)
DECLARE @OldSum DECIMAL(15, 2) = (SELECT TOP(1) OldSum FROM inserted)
DECLARE @NewSum DECIMAL(15, 2) = (SELECT TOP(1) NewSum FROM inserted)

INSERT INTO NotificationEmails (Recipient, [Subject], Body)
VALUES (
@accountId, 
'Balance change for account: ' + CAST(@accountId AS VARCHAR(20)),
'On ' + CONVERT(VARCHAR(30), GETDATE(), 103) + ' your balance was changed from '+ CAST(@OldSum AS VARCHAR(20))+ ' to ' + CAST(@NewSum AS VARCHAR(20)))

--"On {date} your balance was changed from {old} to {new}."

--SELECT * FROM Accounts WHERE Id = 1

----SELECT * FROM Logs
--SELECT * FROM NotificationEmails

--UPDATE Accounts
--SET Balance += 100 
--WHERE Id = 1