/*
 Provide a query only showing the 
 Customers from Brazil.
 */
SELECT *
FROM Customer
WHERE Country = "Brazil"
 OR Country = "Brasil"
ORDER BY LastName;