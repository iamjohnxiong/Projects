CREATE TABLE [dbo].[stgCustomer]
(
    [stgCstId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [stgCstFirstName] VARCHAR(50) NOT NULL, 
    [stgCstLastName] VARCHAR(50) NOT NULL, 
    [stgCstEmail] VARCHAR(50) NOT NULL, 
    [stgCstGender] VARCHAR(50) NOT NULL, 
    [stgCstSSN] VARCHAR(50) NOT NULL, 
    [stgCstGuid] VARCHAR(50) NOT NULL
)
