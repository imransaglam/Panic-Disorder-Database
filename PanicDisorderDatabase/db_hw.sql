


ALTER TABLE PanicDisorder
ADD ParticipantId int;

-- S�tunun ad�n� de�i�tirin ve s�ralamay� d�zeltin
EXEC sp_rename 'PanicDisorder.ParticipantId', 'ParticipantId', 'COLUMN';



select count(*) from MedicalHistories
select count(*) from PanicDisorder
select COUNT(*)from Participants
select COUNT(*)from QualityOfLife
select COUNT(*)from Symptoms