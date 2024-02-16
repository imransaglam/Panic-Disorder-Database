[Panic_Disorder_Rapor.pdf](https://github.com/imransaglam/Panic-Disorder-Database/files/14237008/Panic_Disorder_Rapor.pdf)

Projenin Amacı

Bir grup katılımcının sağlık geçmişi, semptom şiddeti, yaşam kalitesi, ve kişisel 
geçmişleri gibi bilgilerin verilerine dayanarak panik bozukluğunun etkilerini 
anlamaya çalışıldı.

Veritabanı ve Tablolar

PanicDisorderDB adında veri tabanı oluşturuldu.Bu veri tabanında Katılımcı, 
Semptomlar ,Yaşam Kalitesi ,Tıbbi Geçmiş ,Panik Bozukluğu,Log gibi tablolara 
yer verildi. Tıbbi Geçmiş tablosu,Panik Bozukluğu tablosu ve Katılımcı
tablolarında en az 100.000 kayıt içermektedir.

![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/6a687c35-d2fb-4ad4-ac3e-536b2bff9da4)

Katılımcı Tablosu: Bu çalışmada yer alacak katılımcıların bilgilerini takip etmek için bir tablo oluşturulmuştur. Her katılımcıya birincil bir kimlik numarası atandı ve yaş, cinsiyet, aile geçmişi ve kişisel geçmişi gibi bilgiler kaydedildi.

![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/945d2d5f-1fe3-496e-8081-213c9c8a92ab)

![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/1028ae64-e612-41d0-b965-69d5a6eb1d54)

Semptomlar Tablosu: Katılımcıların yaşadığı semptomları ve bunların şiddeti belirlenmiştir. Her semptom için bir kimlik atandı ve bunların mevcut stres faktörleri, şiddeti ve başa çıkma mekanizmaları kaydedilmiştir.

![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/0f68d713-e042-431a-8c6b-9178f52ee189)
![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/daa061ca-4e5f-4a3b-b1a0-0c6a34490953)

Yaşam Kalitesi Tablosu: Panik bozukluğunun yaşam üzerindeki etkilerini anlamak için, yaşam kalitesi tablosunu kullanılmıştır. Bu tabloda, panik bozukluğunun yaşam üzerindeki etkisi, madde kullanımı, sosyal destek ve yaşam tarzı faktörleri gibi değişkenler kaydedilmiştir.

![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/5ec37345-237b-4d44-b096-1de97a1ec22b)
![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/72f76abe-aff8-417a-86b0-5c119d35e93d)

Tıbbi Geçmiş Tablosu: Katılımcıların tıbbi geçmişlerini ve psikiyatrik geçmişlerini kaydetmek için ayrı bir tablo kullanılmıştır. Her katılımcının önceki tıbbi ve psikiyatrik deneyimlerini anlamasına ve panik bozukluğu ile ilişkilendirmesine olanak tanımıştır.

![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/5991977f-3424-48da-a8b5-ec4d81a1eed8)
![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/94bae5d9-4836-4aa1-a8d6-e35065dd3eb7)

Panik Bozukluğu Tablosu: Panik bozukluğu ile ilgili spesifik bilgileri kaydetmek için bir tablo oluşturulmuştur. Bu tabloda, semptomlar, yaşam kalitesi, tıbbi geçmiş ve katılımcının kimlik bilgileri gibi veriler yer almıştır. Bu tablo, araştırma verilerini bütünleştirmek için diğer tablolarla ilişkilendirilmiştir.
![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/a7b5f9f5-7ea4-4f2b-97e0-24f023280dd0)
![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/f44991b8-0b91-4868-9e94-03e9c54e9f49)

Tablolar arasındaki ilişkiler şu şekildedir:

1.	Katılımcı Tablosu:
•	Participant ID, bu tablonun birincil anahtarıdır (primary key).
•	Participant ID, Semptomlar Tablosu ve Panik Bozukluk tablolarındaki Participant ID sütunlarına foreign key  ilişkisi oluşturur.
2.	 Semptomlar Tablosu:
•	Symptom ID, bu tablonun birincil anahtarıdır (primary key).
•	Symptom ID, ve Panik Bozukluk  tablosundaki Symptom ID sütununa foreign key  ilişkisi oluşturur.

3.	 Yaşam Kalitesi Tablosu:
•	Quality of Life ID, bu tablonun birincil anahtarıdır (primary key).
•	Quality of Life ID, Panik Bozukluk  tablosundaki Quality of Life ID sütununa foreign key  ilişkisi oluşturur.
4.	Tıbbi Geçmiş Tablosu:
•	History ID, bu tablonun birincil anahtarıdır (primary key).
•	Participant ID, bu tablodaki katılımcının benzersiz kimliğini belirler ve Katılımcı tablosundaki Participant ID sütunuyla foreign key  ilişkisi oluşturur.
5.	Panik Bozukluk Tablosu:
•	Panic Disorder ID, bu tablonun birincil anahtarıdır (primary key).
•	Symptom ID, Semptom tablosundaki semptomları belirtir ve foreign key  ilişkisi oluşturur..
•	Quality of Life ID, Yaşam Kalitesi tablosundaki yaşam kalitesi bilgilerini belirtir ve foreign key  ilişkisi oluşturur.
•	History ID, Tıbbi Geçmiş tablosundaki tıbbi geçmiş bilgilerini belirtir ve foreign key  ilişkisi oluşturur..
•	Participant ID, Katılımcı  tablosundaki katılımcı bilgilerini belirtir foreign key  ilişkisi oluşturur.

Bu ilişkiler, veritabanındaki tablolar arasındaki veri bütünlüğünü korur ve tablolar arasında tutarlı veri alışverişi sağlar. Örneğin, bir katılımcının panik bozukluğu bilgileri, semptomları, yaşam kalitesi ve tıbbi geçmişi ile doğru şekilde ilişkilendirilir. Bu sayede, veritabanında tutulan veriler daha anlamlı ve kullanışlı hale gelir.

Veritabanına Atılan Sorgular
1. Bu sorgunun amacı tıbbi geçmişinde kalp hastalığı ve psikolojik geçmişinde anksiyete bozukluğu olan hastaları bulmak için yazılmıştır.
![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/51bc264a-e0e1-4711-bbde-77b5d5ecc348)
![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/59efb7f4-a014-4c1e-8709-cba452668926)
2.Bu sorgunun amacı kadın ve erkek hastaların kaç tanesi panik bozukluk teşhisi aldığını bulmak için yazılmıştır.
![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/a344d4a7-d7b7-4da7-8e43-d5a1d350a493)
![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/6b595254-634e-40ab-bf18-90509c3a4c50)
3.Bu sorgunun amacı kadın katılımcılardan yaşı 35'den büyük,aile geçmişinde psikolojik bir rahatsızlık olmamış, semptomlarında nefes darlığı olan, psikolojik geçmişi ise depresif bozukluk olan , madde kullanımı olmayan ,panik bozukluk teşhisi konulmamış katılımcılardan ilk 100 katılımcıyı getirmesi için yazılmıştır.
![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/34501a21-7711-4ba8-bcec-aee17c6b84c0)
![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/607a3e12-3f05-4dd5-a6e1-cfb7c5e2f520)
4.Bu sorgunun amacı panik bozukluk teşhisi konulan erkek katılımcıların yaş ortalamasının üstündeki erkek katılımcılar ,panik atak semptomuyla hangi başa çıkma mekanizmasını en çok tercih ettiğini bulmak için yazılmıştır.
![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/bb73b445-5e6a-45f4-ad80-4ed53da748ee)
![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/dc4491f2-05d8-413d-8c14-edb773ae0c5b)
Stored Procedure
Bu veriatabanı için yazılmış olan stored procedure, yeni bir katılımcının bilgilerini veritabanına eklemek için tasarlanmıştır. Amaç, farklı tablolara katılımcıyla ilgili verileri eklemek ve ilişkili tablolar arasında doğru ilişkileri kurmaktır.
1.	Participants Tablosuna Ekleme: İlk olarak, stored procedure yeni katılımcının temel bilgilerini (Yaş, Cinsiyet, Aile Geçmişi, Kişisel Geçmiş) Participants tablosuna eklenmiştir.
2.	Symptoms Tablosuna Ekleme: Ardından, katılımcının semptomları (Mevcut Stres Faktörleri, Semptomlar, Şiddet, Başa Çıkma Mekanizmaları) Symptoms tablosuna eklenmiştir.
3.	Quality of Life Tablosuna Ekleme: Katılımcının yaşam kalitesi bilgileri (Hayatı Etkileme, Madde Kullanımı, Sosyal Destek, Yaşam Tarzı Faktörleri) QualityOfLife tablosuna eklenmiştir.
4.	Medical History Tablosuna Ekleme: Katılımcının tıbbi geçmişi (Tıbbi Geçmiş, Psikiyatrik Geçmiş) MedicalHistories tablosuna eklenmiştir.
5.	Panic Disorder Tablosuna Ekleme: Son olarak, panik bozukluğu teşhis bilgileri (Semptomlar Id, Yaşam Kalitesi Id, Tıbbi Geçmiş Id, Panik Bozukluğu, Katılımcı Id) PanicDisorder tablosuna eklenmiştir.
Bu stored procedure, veritabanına yeni katılımcı bilgilerinin eklenmesini otomatikleştirir ve verilerin doğru şekilde ilişkilendirilmesini sağlar. Bu şekilde, sistemi kullananlar, veritabanında tutulan bilgileri etkin bir şekilde yönetebilir ve analiz edebilirler.
![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/a008599f-4bc7-4f90-8e3d-d6afd41ec114)
![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/bd496790-25d7-45cf-9944-6d5b4e922819)
![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/4072dec9-e965-4b3f-b42a-dd68a7bf0e3d)
View

Bu view, kullanıcıların hastaların panik bozukluğu ile ilgili kapsamlı bir görünüm elde etmelerine olanak tanmış ve tedavi planlarını geliştirmek veya mevcut durumu analiz etmek için kullanılmıştır.
Bu şekilde, view kullanıcılarına kolay erişilebilir ve anlamlı bir şekilde organize edilmiş bir rapor sunulmuştur.
![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/3c921662-6e0b-4c3b-a3f5-8a603a642406)
![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/dc1ace26-5b1c-4620-9ff5-63c91a9272ac)
![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/ea5db62e-394a-4ecc-8cdf-70d0b58bcd7c)

Trigger

Bu tetikleyici (trigger), Participants tablosuna yeni bir satır eklendikten sonra çalışır. Amacı, yeni bir katılımcı kaydının eklenmesi durumunda bir log kaydı oluşturmaktır.
İşlevi şu şekildedir:
1.	Tetikleyici Tanımı: Participants tablosuna bir satır eklendikten sonra çalışacak şekilde tanımlanır (AFTER INSERT).
2.	NO COUNT Ayarı: SET NOCOUNT ON; komutu, etkilenen satır sayısını döndürmeyi engeller. Bu, tetikleyicinin yalnızca log kaydı oluşturmasını sağlar, döndürülen bir sonuç seti oluşturmaz.
3.	Değişken Tanımı: @ParticipantsId adında bir tamsayı değişkeni tanımlanır.
4.	Ekleme İşlemi: Tetikleyici, inserted tablosundan (inserted içindeki yeni eklenen satırları temsil eden özel bir tablo) yeni eklenen satırın Participants_Id değerini alır ve @ParticipantsId değişkenine atar.
5.	Log Kaydı Ekleme: Logs tablosuna (Logs tablosunun ne olduğunu varsayarak), yeni katılımcının kimliği ve "Inserted" mesajıyla bir log kaydı ekler.
Bu tetikleyici, veritabanında yeni bir katılımcı eklendiğinde bu işlemi izlemek ve kaydetmek için kullanılmıştır. Bu şekilde, veritabanı yöneticileri veya sistem yetkilileri, katılımcı ekleme işlemlerini takip edebilir ve gerektiğinde bu bilgileri inceleyebilirler.
![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/a471d3ce-70a5-432e-a319-635555a877ca)
![image](https://github.com/imransaglam/Panic-Disorder-Database/assets/108897583/12606334-f145-49c3-bccc-b8fdcb7b908f)

Sonuç

Kullanılan veritabanı panik bozukluğunun nedenleri, semptomları ve yaşam kalitesi üzerindeki etkileri arasındaki ilişkileri daha iyi anlamak için analizler yapılabilir. Bu analizler, panik bozukluğunu tedavi etme ve yaşam kalitesini artırma konusunda daha etkili stratejiler geliştirmesine yardımcı olabilir.




















