--all orders placed by customer with most orders?
use AdventureWorks2019


SELECT SalesOrderID, CustomerID 
FROM Sales.SalesOrderHeader 
WHERE CustomerID = (SELECT TOP 1 CustomerID FROM Sales.SalesOrderHeader GROUP BY CustomerID ORDER BY COUNT(SalesOrderID) DESC);