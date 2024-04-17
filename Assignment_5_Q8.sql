-- new employee
use AdventureWorks2019


BEGIN TRANSACTION;
INSERT INTO HumanResources.Employee (BusinessEntityID,NationalIDNumber, LoginID, JobTitle, BirthDate, MaritalStatus, Gender, HireDate)
VALUES (780,'0123456789', 'newhire', 'Sales Rep.', '1989 -01-10', 'M', 'M', GETDATE());
DECLARE @EmployeeID int = 779;
INSERT INTO HumanResources.EmployeeDepartmentHistory ( BusinessEntityID, DepartmentID, StartDate, ShiftID)
VALUES (@EmployeeID, 1, GETDATE(), 1);
COMMIT;