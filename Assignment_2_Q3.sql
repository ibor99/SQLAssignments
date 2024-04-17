SELECT ROW_NUMBER() OVER(PARTITION BY [PostalCode] ORDER BY SP.[TotalDue] DESC) AS RowNumber,
LastName, TotalDue, PostalCode
FROM [SalesLT].Address AS A, [SalesLT].Customer AS C, [SalesLT].SalesOrderHeader AS SP
WHERE SP.TotalDue <> 0 AND SP.BillToAddressID IS NOT NULL
ORDER BY A.PostalCode ASC;