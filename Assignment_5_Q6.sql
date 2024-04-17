--Delete product category and associated.
use AdventureWorks2019


BEGIN TRANSACTION;
UPDATE Sales.Customer
SET TerritoryID = 5
WHERE CustomerID = 1;
UPDATE Sales.SalesOrderHeader
SET TerritoryID = 5
WHERE CustomerID = 1;
COMMIT;