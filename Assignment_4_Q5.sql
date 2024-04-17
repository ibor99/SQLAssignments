-- all customers with no orders placed?
use AdventureWorks2019


SELECT C.CustomerID, P.FirstName, P.LastName, (SELECT COUNT(*) FROM Sales.SalesOrderHeader WHERE CustomerID = C.CustomerID) AS TotalOrders
FROM Sales.Customer AS C
JOIN Person.Person AS P ON C.PersonID = P.BusinessEntityID
ORDER BY TotalOrders DESC
OFFSET 0 ROWS
FETCH NEXT 5 ROWS ONLY;