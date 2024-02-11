CREATE TRIGGER insert_trigger 
ON Participants 
AFTER INSERT 
AS 
BEGIN 
    SET NOCOUNT ON; 
    DECLARE @ParticipantsId int; 
    SELECT @ParticipantsId = inserted.Participants_Id
    FROM inserted
    INSERT INTO Logs 
    VALUES (@ParticipantsId, 'Inserted'); 
END;

INSERT INTO Participants(Age,Gender,Family_History,Personal_History)VALUES(45,'Male','Yes','Yes')

