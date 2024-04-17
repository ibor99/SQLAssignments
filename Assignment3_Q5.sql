--Average, minimum and maximum order quntity per product
use AdventureWorks2019


SELECT ProductID, AVG(OrderQty) AS AverageQuantity, MIN(OrderQty) AS MinimumQuantity, MAX(OrderQty) AS MaximumQuantity
FROM Sales.SalesOrderDetail
GROUP BY ProductID;