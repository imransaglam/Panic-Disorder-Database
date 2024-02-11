create database PanicDisorderDB

use PanicDisorderDB

create table Participants(
Participants_Id int primary key identity(1,1),
Age int,
Gender nvarchar(10),
Family_History nvarchar(10),
Personal_History nvarchar(10)
)

create table Symptoms(
Symptoms_Id int primary key identity(1,1),
Current_Stressors nvarchar(20),
Symptoms nvarchar(100),
Severity nvarchar(20),
Coping_Mechanisms nvarchar(50)
)

create table QualityOfLife(
Life_Quality_Id int primary key identity(1,1),
Life_Impact nvarchar(20),
Use_Substance nvarchar(50),
Social_Support nvarchar(20),
Lifestyle_Factors nvarchar(50)
)

create table MedicalHistories(
History int primary key identity(1,1),
Participants_Id int foreign key references Participants(Participants_Id),
Medical_Histor nvarchar(100),
Psychiatric_History nvarchar(100),
)

EXEC sp_rename 'MedicalHistories.[History]', 'History_Id', 'COLUMN';

create table PanicDisorder(
Panic_Disorder_Id int primary key identity(1,1),
Symptoms_Id int foreign key references Symptoms(Symptoms_Id),
Life_Quality_Id int foreign key references QualityOfLife(Life_Quality_Id),
History_Id int foreign key references MedicalHistories(History_Id),
Panic_Disorder nvarchar(10)
)

create table ParticipantsLog(
Participants_Id int primary key identity(1,1),
status nvarchar(50)
)

select * from Participants where Participants_Id=100000
select Count(*) from Symptoms
select Count(*) from QualityOfLife
select count(*) from MedicalHistories


