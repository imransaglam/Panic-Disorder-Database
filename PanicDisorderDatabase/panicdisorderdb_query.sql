--1.T�bbi ge�mi�inde "Heart disease" ve psikolojik ge�mi�inde "Anxiety disorder" olan hastalar� bul
SELECT *
FROM Participants
INNER JOIN MedicalHistories ON Participants.Participants_Id = MedicalHistories.Participants_Id
WHERE MedicalHistories.Medical_Histor = 'Heart disease'
AND MedicalHistories.Psychiatric_History = 'Anxiety Disorder'

--2.Kad�n ve Erkek Hastalar�n Ka� Tanesi "Panic Disorder" te�hisi ald�
SELECT Participants.Gender, COUNT(PanicDisorder.ParticipantID) AS Num_Patients_With_Panic_Disorder
FROM Participants
INNER JOIN PanicDisorder ON Participants.Participants_Id = PanicDisorder.ParticipantID
WHERE PanicDisorder.Panic_Disorder = 'Yes'
GROUP BY Participants.Gender;

--3.Kat�l�mc�lardan ya�� 35'den b�y�k kad�n,aile ge�mi�inde psikolojik bir rahats�zl�k olmam�� semptomlar�nda 'Shortness of breath'olan psikolojik ge�mi�i'Depressive disorder' olana madde kullan�m� olmayan panic disorder="None" olan ilk 100 kat�l�mc�y� getir
SELECT TOP 100
Participants.Participants_Id,
Participants.Age,
Participants.Gender,
Participants.Family_History,
Symptoms.Symptoms,
MedicalHistories.Psychiatric_History,
QualityOfLife.Use_Substance,
PanicDisorder.Panic_Disorder
FROM Participants
INNER JOIN PanicDisorder ON Participants.Participants_Id = PanicDisorder.ParticipantID
INNER JOIN Symptoms ON PanicDisorder.Symptoms_Id=Symptoms.Symptoms_Id
INNER JOIN MedicalHistories ON PanicDisorder.History_Id=MedicalHistories.History_Id
INNER JOIN QualityOfLife ON PanicDisorder.Life_Quality_Id=QualityOfLife.Life_Quality_Id
WHERE Participants.Age > 45
AND Participants.Gender = 'Female'
AND Participants.Family_History = 'No'
AND Symptoms.Symptoms = 'Shortness of breath'
AND PanicDisorder.Panic_Disorder = 'No'
AND MedicalHistories.Psychiatric_History = 'Depressive disorder'
AND QualityOfLife.Use_Substance = 'None'
ORDER BY Participants.Participants_Id ASC

--4.'Panic Disorder' te�hisi konulan erkek ya� ortalamas�n�n �st�ndeki Erkek kat�l�mc�lar Panik attack semptomuyla hangi ba�a ��kma mechanizmas�n� en �ok tercih etmi�lerdir
SELECT Symptoms.Coping_Mechanisms, COUNT(*) AS Coping_Mechanism_Count
FROM Participants
INNER JOIN PanicDisorder ON Participants.Participants_Id = PanicDisorder.ParticipantID
INNER JOIN Symptoms ON PanicDisorder.Symptoms_Id = Symptoms.Symptoms_Id
WHERE Participants.Gender = 'Male'
AND PanicDisorder.Panic_Disorder = 'Yes'
AND Participants.Age > (
    SELECT AVG(Participants.Age)
    FROM Participants
    INNER JOIN PanicDisorder ON Participants.Participants_Id = PanicDisorder.ParticipantID
    WHERE Participants.Gender = 'Male' AND PanicDisorder.Panic_Disorder = 'Yes'
)
AND Symptoms.Symptoms = 'Panic Attacks'
GROUP BY Symptoms.Coping_Mechanisms
ORDER BY Coping_Mechanism_Count DESC




