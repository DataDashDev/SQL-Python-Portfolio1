Use CompanyBuilding;
GO


-- Job Codes & Descriptions table
CREATE TABLE Job_Code (
    Job_Code NVARCHAR(10) PRIMARY KEY,
    Job_Description NVARCHAR(100)
);


-- Department code and Job Descriptions table
CREATE TABLE Dept_Code (
    Dept_Code NVARCHAR(10) PRIMARY KEY,
    Dept_Description NVARCHAR(100)
)