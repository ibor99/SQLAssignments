--delete vendor and their products
use AdventureWorks2019


BEGIN TRANSACTION;
DELETE FROM Purchasing.ProductVendor
WHERE BusinessEntityID = 1;
DELETE FROM Purchasing.Vendor
WHERE BusinessEntityID = 1;
COMMIT;