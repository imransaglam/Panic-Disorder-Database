


ALTER TABLE PanicDisorder
ADD ParticipantId int;

-- Sütunun adýný deðiþtirin ve sýralamayý düzeltin
EXEC sp_rename 'PanicDisorder.ParticipantId', 'ParticipantId', 'COLUMN';



select count(*) from MedicalHistories
select count(*) from PanicDisorder
select COUNT(*)from Participants
select COUNT(*)from QualityOfLife
select COUNT(*)from Symptoms