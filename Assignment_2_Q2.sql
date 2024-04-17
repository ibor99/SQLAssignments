SELECT [CustomerID], [FirstName], [LastName], [Phone]
FROM [AdventureWorksLT2019].[SalesLT].[Customer]
WHERE [LastName] LIKE 'L%'
ORDER BY [LastName],[FirstName];