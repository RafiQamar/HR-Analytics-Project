# Create a database to store the HR Employees Data
CREATE DATABASE HR_Employee_DB;

USE HR_Employee_DB;

-- to create a table for the HR Employee data
CREATE TABLE HR_Employee(
	EmpID INT PRIMARY KEY, 
    Employee_Name VARCHAR(255),
    Sex VARCHAR(5),
    MaritalDesc VARCHAR(255),
    DeptID INT,
    FromDiversityJobFairID INT, 
    Salary DECIMAL(10, 2), 
    Position VARCHAR(255), 
    State VARCHAR(255), 
    Zip VARCHAR(255), 
    DOB DATE,
	CitizenDesc VARCHAR(255), 
    HispanicLatino VARCHAR(255), 
    RaceDesc VARCHAR(255), 
    DateofHire DATE,
	DateofTermination DATE, 
    TermReason VARCHAR(255), 
    EmploymentStatus VARCHAR(255), 
    Department VARCHAR(255),
	ManagerName VARCHAR(255), 
    ManagerID INT, 
    RecruitmentSource VARCHAR(255), 
    PerformanceScore VARCHAR(255),
	EngagementSurvey FLOAT, 
    EmpSatisfaction INT, 
    SpecialProjectsCount INT,
    LastPerformanceReview_Date DATE, 
    DaysLateLast30 INT, 
    Absences INT
    );

-- SQL scripts to import the HR Employee data into the database.
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/HR_Employee_Cleaned_Data.csv'
INTO TABLE HR_Employee
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(EmpID, Employee_Name,Sex,MaritalDesc,DeptID,FromDiversityJobFairID, Salary, Position, State, Zip, 
@DOB,CitizenDesc, HispanicLatino, RaceDesc, @DateofHire,@DateofTermination, TermReason, EmploymentStatus, 
Department, ManagerName, ManagerID, RecruitmentSource, PerformanceScore,EngagementSurvey, EmpSatisfaction, 
SpecialProjectsCount,@LastPerformanceReview_Date, DaysLateLast30, Absences)
SET 
	DOB = str_to_date(@DOB, '%m/%d/%Y'),
    DateofHire = str_to_date(@DateofHire, '%m/%d/%Y'),
    DateofTermination = NULLIF(STR_TO_DATE(NULLIF(@DateofTermination, ''), '%m/%d/%Y'), NULL),
    LastPerformanceReview_Date = str_to_date(@LastPerformanceReview_Date, '%m/%d/%Y');

-- --------------------------------------------------------------------------------------------------------------

# Sql Queries to find insights from the HR employee data

-- the average salary by department
SELECT Department, AVG(salary) AS Average_Salary
FROM HR_Employee
GROUP BY Department
ORDER BY Average_Salary DESC;

-- number of employees came from a diversity recruitment event
SELECT count(EmpID)
FROM hr_employee
WHERE FromDiversityJobFairID = 1;

-- the average salary by department
SELECT Department, AVG(salary) AS Average_Salary
FROM HR_Employee
GROUP BY Department
ORDER BY Average_Salary DESC;

-- List employees who were hired in 2012
SELECT Employee_Name, DateofHire
FROM hr_employee
WHERE YEAR(DateofHire) = 2012;

--  the number of employees in each race/ethnicity category.
SELECT RaceDesc, COUNT(EmpID) number_of_employees
FROM hr_employee
GROUP BY 1;

-- the count of male and female employees.
SELECT Sex, COUNT(EmpID) AS number_of_employees
FROM hr_employee
GROUP BY sex;

-- the number of employees based on performance score.
SELECT PerformanceScore, COUNT(EmpID) AS number_of_employees
FROM hr_employee
GROUP BY PerformanceScore;

-- list of employees who have a performance score of "Needs Improvement" or "PIP"
SELECT empID, Employee_Name, PerformanceScore
FROM hr_employee
WHERE PerformanceScore IN ("Needs Improvement", "PIP");

-- top 5 employees with highest absences who have a performance score of "Needs Improvement" or "PIP"
SELECT empID, Employee_Name, Absences
FROM hr_employee
WHERE PerformanceScore IN ("Needs Improvement", "PIP") AND EmploymentStatus = 'Active'
ORDER BY Absences DESC
LIMIT 5;

--  top 3 highest-paid employees in each department
WITH RankEmp AS (
	SELECT Department, empID, Employee_Name, Sex, MaritalDesc,Position, Salary,
	DENSE_RANK() OVER(PARTITION BY Department ORDER BY Salary DESC) AS rnk
	FROM hr_employee
)
SELECT  Department, empID, Employee_Name, Sex, MaritalDesc,Position, Salary
FROM RankEmp
WHERE rnk <=3;

-- the count of employees based on their termination reason and employment status (active or terminated).
SELECT upper(TermReason), EmploymentStatus, COUNT(*) AS EmployeeCount
FROM HR_Employee
WHERE DateofTermination IS NOT NULL
GROUP BY TermReason, EmploymentStatus;
