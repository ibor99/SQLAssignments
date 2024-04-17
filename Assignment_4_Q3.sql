--salesperson with higher than average sales?
use AdventureWorks2019


SELECT SOH.SalesPersonID,P.FirstName,P.LastName, COUNT(SOH.SalesOrderID) AS TotalOrders
FROM Sales.SalesOrderHeader AS SOH
JOIN Person.Person AS P ON SOH.SalesPersonID = P.BusinessEntityID
GROUP BY SOH.SalesPersonID, P.FirstName, P.LastName
HAVING SUM(TotalDue) > (SELECT AVG(sum_total) FROM (SELECT SUM(TotalDue) as sum_total FROM Sales.SalesOrderHeader GROUP BY SalesPersonID) as sub);