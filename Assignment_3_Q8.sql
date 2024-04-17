--total quantity of each product sold?
use AdventureWorks2019


SELECT P.Name, SUM(SOD.OrderQty) AS TotalQuantitySold
FROM Production.Product AS P
JOIN Sales.SalesOrderDetail AS SOD ON P.ProductID = SOD.ProductID
GROUP BY P.Name
ORDER BY TotalQuantitySold DESC;