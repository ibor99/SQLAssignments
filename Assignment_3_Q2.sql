--Top 5 Customers by total sales
use AdventureWorks2019

SELECT TOP 5 C.CustomerID, SUM(TotalDue) AS TotalSales,P.FirstName,P.MiddleName,P.LastName
FROM Sales.SalesOrderHeader AS SOH
JOIN Sales.Customer AS C ON SOH.CustomerID = C.CustomerID
JOIN Person.Person AS P ON C.CustomerID = P.BusinessEntityID
GROUP BY C.CustomerID, P.FirstName, P.MiddleName, P.LastName
ORDER BY TotalSales DESC;