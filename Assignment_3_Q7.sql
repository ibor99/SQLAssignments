--Month with highest sales?
use AdventureWorks2019

SELECT MONTH(OrderDate) AS Month, SUM(TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader
GROUP BY MONTH(OrderDate)
ORDER BY TotalSales DESC;
