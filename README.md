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

## Employee History Tables (`create_employee_history_sql.sql`)

This script creates tables to track **historical employee data** in the `CompanyBuilding` database.

### **Employee_History Table**
- **Employee_History_ID**: Auto-incrementing primary key.  
- **Employee_ID**: References the primary Employee table.  
- **Supervisor_Level1_ID … Supervisor_Level4_ID**: Optional references to Employee table, allowing hierarchical reporting structure.  
- **Job_Code**: References `Job_Code` table to track the employee's role over time.  
- **Department_Code**: References `Dept_Code` table to track department changes.  
- **First_Name / Last_Name**: Stores the employee’s name at that point in history.  
- **Effective_Date / Expiration_Date**: Defines the time period this record was valid.  
- **Purpose**: Tracks changes in an employee’s role, department, and reporting hierarchy over time.

### **Employee_Address_History Table**
- **Address_History_ID**: Auto-incrementing primary key.  
- **Employee_ID**: References the primary Employee table.  
- **Street_Address / City / State / Zip_Code**: Stores historical addresses.  
- **Effective_Date / Expiration_Date**: Defines the period this address was valid.  
- **Purpose**: Maintains historical address information for employees, useful for auditing, reporting, or HR analytics.

---

**Notes:**  
- These tables allow you to **track employee changes over time** without altering the main Employee table.  
- All relationships use **foreign key constraints** to maintain referential integrity.  
- They can be populated with **Python Faker scripts** to simulate real historical data.
