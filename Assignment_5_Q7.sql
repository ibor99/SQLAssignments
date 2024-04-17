--Product price update
use AdventureWorks2019


BEGIN TRANSACTION;
UPDATE Production.Product
SET ListPrice = 50
WHERE ProductID = 1 ;
UPDATE Sales.SalesOrderDetail
SET UnitPrice = 50
WHERE ProductID = 1;
COMMIT;