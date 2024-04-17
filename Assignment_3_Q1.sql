--Top 5 Best selling products?
use AdventureWorks2019


SELECT TOP 5 D.ProductID, SUM(D.OrderQty) AS TotalQuantity , P.Name
FROM Sales.SalesOrderDetail AS D
JOIN Production.Product AS P on D.ProductID = P.ProductID
GROUP BY D.ProductID, P.Name
ORDER BY TotalQuantity DESC;