CREATE DATABASE CompanyBuilding;
GO


USE CompanyBuilding;
GO


--Employee table
--Will create view off of this to hide PII
CREATE TABLE Employee (
    Employee_ID INT IDENTITY(100001,1) PRIMARY KEY,
    SSN CHAR(9) NOT NULL UNIQUE, -- no dashes
    First_Name NVARCHAR(50) NOT NULL,
    Last_Name NVARCHAR(50) NOT NULL,
    Preferred_Name_Input NVARCHAR(50) NULL,
    Preferred_Name AS COALESCE(NULLIF(Preferred_Name_Input, ''), First_Name) PERSISTED,
    Date_of_Birth DATE CHECK (Date_of_Birth <= DATEADD(year, -21, GETDATE())), -- must be at least 21
    Sex CHAR(1) CHECK(Sex IN ('F','M')),
    Email NVARCHAR(100),
    Hire_Date DATE CHECK (Hire_Date <= GETDATE()), -- no future hires
    Termination_Date DATE,
    CONSTRAINT CK_Termination_Date CHECK (
        Termination_Date IS NULL OR 
        (Termination_Date >= Hire_Date AND Termination_Date <= GETDATE())
    )
);
