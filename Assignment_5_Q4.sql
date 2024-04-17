-- Update customer address and linked.
use AdventureWorks2019

BEGIN TRANSACTION;
UPDATE Person.Address
SET AddressLine1 = 'New Address', City = 'New City', StateProvinceID = 1 , PostalCode  = '12345'
WHERE AddressID = 1;
UPDATE Sales.SalesOrderHeader
SET ShipToAddressID = 1
WHERE CustomerID = 1;
COMMIT;