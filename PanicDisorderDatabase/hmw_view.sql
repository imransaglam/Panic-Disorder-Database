alter view PanicDisorderPatient
As
Select

 ParticipantId,
    Age,
    Gender,
    Family_History,
    Personal_History,
    Symptoms,
    Severity,
    Coping_Mechanisms,
    Life_Impact,
    Use_Substance,
    Social_Support,
    Lifestyle_Factors,
    Medical_Histor,
    Psychiatric_History,
	Panic_Disorder

From
Participants 
JOIN PanicDisorder ON Participants.Participants_Id=PanicDisorder.ParticipantId
JOIN Symptoms ON PanicDisorder.Symptoms_Id=Symptoms.Symptoms_Id
JOIN QualityOfLife ON PanicDisorder.Life_Quality_Id= QualityOfLife.Life_Quality_Id
JOIN MedicalHistories ON PanicDisorder.History_Id=MedicalHistories.History_Id
where
PanicDisorder.Panic_Disorder='Yes';

SELECT *
FROM PanicDisorderPatient;
