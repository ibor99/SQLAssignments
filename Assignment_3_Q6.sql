--City with most Customers
use AdventureWorks2019


SELECT City, COUNT(DISTINCT CustomerID) AS NumberOfCustomers
FROM Sales.Customer AS C
JOIN Person.Address AS A ON C.CustomerID = A.AddressID
GROUP BY City
ORDER BY NumberOfCustomers DESC;
