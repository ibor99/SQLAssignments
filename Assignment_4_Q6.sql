--highest priced product?
use AdventureWorks2019


SELECT ProductID, Name, ListPrice 
FROM Production.Product 
WHERE ListPrice = (SELECT MAX(ListPrice) FROM Production.Product);