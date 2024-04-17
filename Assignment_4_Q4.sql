--products sold more than average?
use AdventureWorks2019


SELECT SOD.ProductID , P.Name, SUM(SOD.OrderQty) AS TotalQuantitySold
FROM Sales.SalesOrderDetail AS SOD
JOIN Production.Product AS P ON SOD.ProductID = P.ProductID
GROUP BY SOD.ProductID , P.Name
HAVING SUM(OrderQty) > (SELECT AVG(sum_qty) FROM (SELECT SUM(OrderQty) as sum_qty FROM Sales.SalesOrderDetail GROUP BY ProductID) as sub);