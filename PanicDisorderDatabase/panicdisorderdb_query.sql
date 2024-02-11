--1.Týbbi geçmiþinde "Heart disease" ve psikolojik geçmiþinde "Anxiety disorder" olan hastalarý bul
SELECT *
FROM Participants
INNER JOIN MedicalHistories ON Participants.Participants_Id = MedicalHistories.Participants_Id
WHERE MedicalHistories.Medical_Histor = 'Heart disease'
AND MedicalHistories.Psychiatric_History = 'Anxiety Disorder'

--2.Kadýn ve Erkek Hastalarýn Kaç Tanesi "Panic Disorder" teþhisi aldý
SELECT Participants.Gender, COUNT(PanicDisorder.ParticipantID) AS Num_Patients_With_Panic_Disorder
FROM Participants
INNER JOIN PanicDisorder ON Participants.Participants_Id = PanicDisorder.ParticipantID
WHERE PanicDisorder.Panic_Disorder = 'Yes'
GROUP BY Participants.Gender;

--3.Katýlýmcýlardan yaþý 35'den büyük kadýn,aile geçmiþinde psikolojik bir rahatsýzlýk olmamýþ semptomlarýnda 'Shortness of breath'olan psikolojik geçmiþi'Depressive disorder' olana madde kullanýmý olmayan panic disorder="None" olan ilk 100 katýlýmcýyý getir
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

--4.'Panic Disorder' teþhisi konulan erkek yaþ ortalamasýnýn üstündeki Erkek katýlýmcýlar Panik attack semptomuyla hangi baþa çýkma mechanizmasýný en çok tercih etmiþlerdir
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




