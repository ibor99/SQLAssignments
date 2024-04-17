SELECT ROW_NUMBER() OVER(PARTITION BY A.PostalCode ORDER BY SP.SalesYTD DESC) AS RowNumber,
       P.LastName, SP.SalesYTD, A.PostalCode
FROM Sales.SalesPerson AS SP
JOIN Person.Person AS P ON SP.BusinessEntityID = P.BusinessEntityID
JOIN Person.Address AS A ON SP.BusinessEntityID = A.AddressID
WHERE SP.SalesYTD <> 0 AND SP.TerritoryID IS NOT NULL
ORDER BY A.PostalCode ASC;