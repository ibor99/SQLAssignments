-- all salespeople who sold to the top 5 customer?
use AdventureWorks2019


SELECT SP.BusinessEntityID AS SalesPersonID, P.FirstName, P.LastName, SUM(SOH.TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader AS SOH
JOIN Sales.Customer AS C ON SOH.CustomerID = C.CustomerID
JOIN Sales.SalesPerson AS SP ON C.TerritoryID = SP.TerritoryID
JOIN Person.Person AS P ON SP.BusinessEntityID = P.BusinessEntityID
WHERE SOH.CustomerID IN 
    (SELECT TOP 5 CustomerID 
     FROM Sales.SalesOrderHeader 
     GROUP BY CustomerID 
     ORDER BY COUNT(SalesOrderID) DESC)
GROUP BY SP.BusinessEntityID, P.FirstName, P.LastName;