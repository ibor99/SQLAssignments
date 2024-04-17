--Which Salesperson made the most sales?
use AdventureWorks2019


SELECT TOP 10 SOH.SalesPersonID, SUM(TotalDue) AS TotalSales, P.FirstName, P.MiddleName, P.LastName
FROM Sales.SalesOrderHeader AS SOH
JOIN Sales.SalesPerson AS SP ON SOH.SalesPersonID = SP.BusinessEntityID
JOIN Person.Person AS P ON SP.BusinessEntityID = P.BusinessEntityID
WHERE SOH.SalesPersonID IS NOT NULL
GROUP BY SalesPersonID, P.FirstName, P.MiddleName, P.LastName
ORDER BY TotalSales DESC;