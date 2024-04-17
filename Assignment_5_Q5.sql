--new territory + update?
use AdventureWorks2019


BEGIN TRANSACTION;
INSERT INTO Sales.SalesTerritory (Name, CountryRegionCode,[Group], SalesYTD, SalesLastYear)
VALUES ('New Territory', 'US', 'North America', 0 ,0);
DECLARE @TerritoryID int = SCOPE_IDENTITY();
UPDATE Sales.SalesPerson
SET TerritoryID = @TerritoryID
WHERE BusinessEntityID = 1;
COMMIT;