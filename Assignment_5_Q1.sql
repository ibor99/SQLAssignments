--add new product , update inventory
use AdventureWorks2019


BEGIN TRANSACTION;
INSERT INTO Production.Product (Name, ProductNumber, Color, StandardCost, ListPrice, Size , SafetyStockLevel, ReorderPoint, DaysToManufacture, SellStartDate)
VALUES ('New Product', 'NP-001', 'White', 50, 100, 'Small' , 200 , 150 , 1, CURRENT_TIMESTAMP);
DECLARE @ProductID int = SCOPE_IDENTITY();
INSERT INTO Production.ProductInventory (ProductID , LocationID, Shelf, Bin, Quantity)
VALUES (@ProductID , 1, 'A', 1 , 100);
COMMIT;