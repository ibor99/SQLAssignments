SELECT SalesOrderID, SUM(LineTotal) AS TotalCost
FROM SalesLT.SalesOrderDetail
GROUP BY SalesOrderID
HAVING SUM(LineTotal) > 10000;