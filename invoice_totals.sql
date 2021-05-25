/*
 Provide a query that shows the 
 Invoice Total, Customer name, Country and Sale Agent name 
 for all invoices and customers.
 
 */
SELECT *
FROM (
  SELECT e.EmployeeId,
   e.LastName AS EmployeeLastName,
   e.FirstName AS EmployeeFirstName,
   e.Title As EmployeeTitle,
   c.CustomerId,
   c.LastName AS CustomerLastName,
   c.FirstName AS CustomerFirstName
  FROM Employee e
   INNER JOIN Customer c ON c.SupportRepId = e.EmployeeId;
) AS Result
LEFT JOIN Invoice i
WHERE i.CustomerId = Result.CustomerId;