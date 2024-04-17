SELECT P.BusinessEntityID, P.FirstName, P.LastName, PP.PhoneNumber
FROM Person.Person AS P
JOIN Person.PersonPhone AS PP ON P.BusinessEntityID = PP.BusinessEntityID
WHERE P.LastName LIKE 'L%'
ORDER BY P.LastName, P.FirstName;