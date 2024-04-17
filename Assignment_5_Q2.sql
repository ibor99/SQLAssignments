--update department of employee.
use AdventureWorks2019


BEGIN TRANSACTION;
UPDATE HumanResources.EmployeeDepartmentHistory
SET EndDate = GETDATE()
WHERE BusinessEntityID = 1 AND EndDate IS NULL;
INSERT INTO HumanResources.EmployeeDepartmentHistory (BusinessEntityID, DepartmentID, StartDate, ShiftID)
VALUES (1, 2 ,GETDATE(), 1);
COMMIT;