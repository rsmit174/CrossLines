USE CrossLinesDB
GO

CREATE TABLE Family
(
	[FID] INT IDENTITY(1000,1) PRIMARY KEY
	,FirstName nvarchar(60)
	,LastName nvarchar(60)
	,DOB date
	,Gender nvarchar(60)
	,Pant_Size nvarchar(60)
	,Shirt_Size nvarchar(60)
	,Coat_Size nvarchar(60)
	,Spouse_FirstName nvarchar(60)
	,Spouse_LastName nvarchar(60)
	,Spouse_DOB date
	,Spouse_Gender nvarchar(60)
	,Spouse_Pant_Size nvarchar(60)
	,Spouse_Shirt_Size nvarchar(60)
	,Spouse_Coat_Size nvarchar(60)
	,Address1 nvarchar(200)
	,Address2 nvarchar(200)
	,City nvarchar(60)
	,[State] nvarchar(60)
	,ZIP nvarchar(60)
	,Phone nvarchar(60)
	,Total_Income nvarchar(200)
	,House_Hold_Size nvarchar(200)
	,Appointment datetime
)




CREATE TABLE Children
(
	[CID] INT IDENTITY(1000,1) PRIMARY KEY
	,FK_Family_FID int
	,Child_FirstName nvarchar(60)
	,Child_LastName nvarchar(60)
	,Child_DOB date
	,Child_Gender nvarchar(60)
	,Child_Pant_Size nvarchar(60)
	,Child_Shirt_Size nvarchar(60)
	,Child_Coat_Size nvarchar(60)
)