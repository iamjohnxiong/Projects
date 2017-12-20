CREATE TABLE [dbo].[tblCustomer]
(
    [cstId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [cstFirstName] VARCHAR(50) NOT NULL, 
    [cstLastName] VARCHAR(50) NOT NULL, 
    [cstEmail] VARCHAR(50) NOT NULL, 
    [cstGender] CHAR NOT NULL, 
    [cstSSN] CHAR(9) NOT NULL, 
    [cstGuid] VARCHAR(50) NOT NULL
)
