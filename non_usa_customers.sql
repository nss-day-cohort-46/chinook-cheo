/*
 Provide a query showing
 Customers ( full names, customer ID and country)
 who are not in the US.
 */
SELECT CustomerId,
 Country,
 LastName,
 FirstName
FROM Customer
WHERE Country != "USA"
ORDER BY Country,
 LastName;