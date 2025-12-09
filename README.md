## Employee Table Creation (`create_employee.sql`)

This SQL script creates the **Employee table** in the `CompanyBuilding` database. 

- This table serves as the **primary table** for employee-related data in this sample database.
- Key features:
  - **Employee_ID**: Auto-incrementing primary key.
  - **SSN**: Unique identifier (no dashes).
  - **First_Name / Last_Name / Preferred_Name**: Stores employee names; `Preferred_Name` is a computed column that defaults to `First_Name` if no preferred name is provided.
  - **Date_of_Birth**: Ensures all employees are at least 21 years old.
  - **Sex / Email / Hire_Date / Termination_Date**: Includes basic employee info and enforces data integrity with constraints.
- **CK_Termination_Date constraint**: Validates termination dates are after hire date but not in the future.
- **Purpose**: This table is the main source for employee data and will be used for Python Faker data population and further queries in this repository.

## Job and Department Tables (`create_job_dept_sql.sql`)

This SQL script creates supporting tables for the `CompanyBuilding` database:

### **Job_Code Table**
- **Job_Code**: Primary key identifying each job (up to 10 characters).  
- **Job_Description**: Text description of the job (up to 100 characters).  
- **Purpose**: Provides a reference list of all job codes used in the Employee table for assignments, reporting, or queries.

### **Dept_Code Table**
- **Dept_Code**: Primary key identifying each department (up to 10 characters).  
- **Dept_Description**: Text description of the department (up to 100 characters).  
- **Purpose**: Serves as a reference for department codes in the Employee table and other related tables.

These tables are **lookup/reference tables** that help maintain data integrity and support reporting by providing descriptive names for codes used in the primary Employee table.
