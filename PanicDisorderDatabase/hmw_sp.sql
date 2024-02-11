---CREATE--------------
Create Procedure AddNewParticipant(
@Age int,
@Gender nvarchar(10),
@Family_History nvarchar(10),
@Personal_History nvarchar(10),
@Current_Stressors nvarchar(20),
@Symptoms nvarchar(100),
@Severity nvarchar(20),
@Coping_Mechanisms nvarchar(50),
@Impact_on_Life nvarchar(20),
@Substance_Use nvarchar(50),
@Social_Support nvarchar(20),
@Lifestyle_Factors nvarchar(50),
@Medical_History nvarchar(100),
@Psychiatric_History nvarchar(100),
@PanicDisorder nvarchar(10)
)
AS
BEGIN

DECLARE @ParticipantID int;
 -- Yeni katýlýmcýnýn bilgilerini Participant Table'a ekle
INSERT INTO Participants(Age,Gender,Family_History,Personal_History)
VALUES(@Age,@Gender,@Family_History,@Personal_History)

  -- Eklenen katýlýmcýnýn Participant ID'sini al
  SET @ParticipantID=SCOPE_IDENTITY();

 -- Yeni semptom bilgilerini Symptoms Table'a ekle
 INSERT INTO Symptoms(Current_Stressors,Symptoms,Severity,Coping_Mechanisms)
 VALUES(@Current_Stressors,@Symptoms,@Severity,@Coping_Mechanisms)

 -- Yeni yaþam kalitesi bilgilerini Quality of Life Table'a ekle
 INSERT INTO QualityOfLife(Life_Impact,Use_Substance,Social_Support,Lifestyle_Factors)
 VALUES(@Impact_on_Life,@Substance_Use,@Social_Support,@Lifestyle_Factors)

 -- Yeni týbbi geçmiþ bilgilerini Medical History Table'a ekle
 INSERT INTO MedicalHistories(Medical_Histor,Psychiatric_History)
 VALUES(@Medical_History,@Psychiatric_History)
 -- Panik bozukluðu teþhisini eklemek için INSERT iþlemi
 INSERT INTO PanicDisorder(Symptoms_Id,Life_Quality_Id,History_Id,Panic_Disorder,ParticipantId)
 VALUES(SCOPE_IDENTITY(),SCOPE_IDENTITY(),SCOPE_IDENTITY(),@PanicDisorder,@ParticipantID)
END

EXEC AddNewParticipant
@Age=45,
@Gender='Female',
@Family_History='Yes',
@Personal_History ='Yes',
@Current_Stressors ='High',
@Symptoms= 'Chest pain',
@Severity ='Dizziness',
@Coping_Mechanisms ='Meditation',
@Impact_on_Life='Moderate',
@Substance_Use ='Alcohol',
@Social_Support ='Low',
@Lifestyle_Factors ='Sleepy Quality',
@Medical_History ='Diabetes',
@Psychiatric_History ='Depressive disorder',
@PanicDisorder ='Yes'


--------ALTER---------------------

Alter Procedure AddNewParticipant(
@Age int,
@Gender nvarchar(10),
@Family_History nvarchar(10),
@Personal_History nvarchar(10),
@Current_Stressors nvarchar(20),
@Symptoms nvarchar(100),
@Severity nvarchar(20),
@Coping_Mechanisms nvarchar(50),
@Impact_on_Life nvarchar(20),
@Substance_Use nvarchar(50),
@Social_Support nvarchar(20),
@Lifestyle_Factors nvarchar(50),
@Medical_History nvarchar(100),
@Psychiatric_History nvarchar(100),
@PanicDisorder nvarchar(10)
)
AS
BEGIN

   DECLARE @ParticipantID INT;
   DECLARE @SymptomsId INT;
   DECLARE @QualityOfLifeId INT;
   DECLARE @MedicalHistoryId INT;
 -- Yeni katýlýmcýnýn bilgilerini Participant Table'a ekle
INSERT INTO Participants(Age,Gender,Family_History,Personal_History)
VALUES(@Age,@Gender,@Family_History,@Personal_History)

  -- Eklenen katýlýmcýnýn Participant ID'sini al
   SET @ParticipantID = SCOPE_IDENTITY();


 -- Yeni semptom bilgilerini Symptoms Table'a ekle
 INSERT INTO Symptoms(Current_Stressors,Symptoms,Severity,Coping_Mechanisms)
 VALUES(@Current_Stressors,@Symptoms,@Severity,@Coping_Mechanisms)

 SET @SymptomsId = SCOPE_IDENTITY();


 -- Yeni yaþam kalitesi bilgilerini Quality of Life Table'a ekle
 INSERT INTO QualityOfLife(Life_Impact,Use_Substance,Social_Support,Lifestyle_Factors)
 VALUES(@Impact_on_Life,@Substance_Use,@Social_Support,@Lifestyle_Factors)

   SET @QualityOfLifeId = SCOPE_IDENTITY();

 -- Yeni týbbi geçmiþ bilgilerini Medical History Table'a ekle
 INSERT INTO MedicalHistories(Participants_Id,Medical_Histor,Psychiatric_History)
 VALUES(@ParticipantID,@Medical_History,@Psychiatric_History)

 SET @MedicalHistoryId = SCOPE_IDENTITY();

 -- Panik bozukluðu teþhisini eklemek için INSERT iþlemi
 INSERT INTO PanicDisorder(Symptoms_Id,Life_Quality_Id,History_Id,Panic_Disorder,ParticipantId)
 VALUES(@SymptomsId, @QualityOfLifeId, @MedicalHistoryId,@PanicDisorder,@ParticipantID)

END

EXEC AddNewParticipant
@Age=18,
@Gender='Female',
@Family_History='Yes',
@Personal_History ='No',
@Current_Stressors ='High',
@Symptoms= 'Chest pain',
@Severity ='Severe',
@Coping_Mechanisms ='Seeking Therapy',
@Impact_on_Life='Moderate',
@Substance_Use ='None',
@Social_Support ='Low',
@Lifestyle_Factors ='Exercise',
@Medical_History ='No',
@Psychiatric_History ='No',
@PanicDisorder ='No'



select * from MedicalHistories where History_Id=100009
select * from Participants where Participants_Id=100019
select * from QualityOfLife where Life_Quality_Id=90
select * from Symptoms where Symptoms_Id=129
select * from PanicDisorder where Symptoms_Id=129