SELECT ROW_NUMBER() OVER(PARTITION BY A.PostalCode ORDER BY SP.TotalDue DESC) AS RowNumber,
       C.LastName, SP.TotalDue, A.PostalCode
FROM [SalesLT].[Address] AS A
JOIN [SalesLT].[Customer] AS C ON A.AddressID = C.CustomerID
JOIN [SalesLT].[SalesOrderHeader] AS SP ON C.CustomerID = SP.CustomerID
WHERE SP.TotalDue <> 0 AND SP.BillToAddressID IS NOT NULL
ORDER BY A.PostalCode ASC;