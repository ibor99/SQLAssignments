--All customers with more orders than average?
use AdventureWorks2019


SELECT C.CustomerID, P.FirstName, P.LastName, COUNT(SOH.SalesOrderID) AS TotalOrders
FROM Sales.Customer AS C
JOIN Person.Person AS P ON C.PersonID = P.BusinessEntityID
JOIN Sales.SalesOrderHeader AS SOH ON C.CustomerID = SOH.CustomerID
GROUP BY C.CustomerID, P.FirstName, P.LastName
HAVING COUNT(SOH.SalesOrderID) >=
    (SELECT CEILING(AVG(1.0 * cnt)) 
     FROM (SELECT COUNT(SalesOrderID) as cnt 
           FROM Sales.SalesOrderHeader 
           GROUP BY CustomerID) as sub);