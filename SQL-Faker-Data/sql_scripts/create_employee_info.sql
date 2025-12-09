USE CompanyBuilding;
GO

-- Employee company history
CREATE TABLE Employee_History (
    Employee_History_ID INT IDENTITY PRIMARY KEY,
    Employee_ID INT NOT NULL REFERENCES Employee(Employee_ID),
    Supervisor_Level1_ID INT NULL REFERENCES Employee(Employee_ID),
    Supervisor_Level2_ID INT NULL REFERENCES Employee(Employee_ID),
    Supervisor_Level3_ID INT NULL REFERENCES Employee(Employee_ID),
    Supervisor_Level4_ID INT NULL REFERENCES Employee(Employee_ID),
    Job_Code NVARCHAR(10) REFERENCES Job_Code(Job_Code),
    Department_Code NVARCHAR(10) REFERENCES Dept_Code(Dept_Code),
    First_Name NVARCHAR(50),
    Last_Name NVARCHAR(50),
    Effective_Date DATETIME NOT NULL,
    Expiration_Date DATETIME NULL
);


-- History of employee address
CREATE TABLE Employee_Address_History (
    Address_History_ID INT IDENTITY PRIMARY KEY,
    Employee_ID INT NOT NULL REFERENCES Employee(Employee_ID),
    Street_Address NVARCHAR(200),
    City NVARCHAR(100),
    State CHAR(2),
    Zip_Code CHAR(10),
    Effective_Date DATETIME NOT NULL,
    Expiration_Date DATETIME NULL
);
