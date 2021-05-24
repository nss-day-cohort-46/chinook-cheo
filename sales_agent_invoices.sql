/*
 Provide a query that shows the 
 invoices associated with each sales agent. 
 The resultant table should include the 
 Sales Agent's full name.
 
 Get all Customer records with repIds of employees that are sales agents.
 Get all Invoice records with a CustomerId in the result query from above.
 
 */
SELECT *
FROM (
  SELECT e.EmployeeId,
   e.LastName AS EmployeeLastName,
   e.FirstName,
   e.Title,
   c.CustomerId,
   c.LastName AS CustomerLastName,
   c.FirstName
  FROM Customer c
   LEFT JOIN Employee e ON c.SupportRepId = e.EmployeeId
  WHERE e.Title = "Sales Support Agent"
  ORDER BY e.LastName,
   c.lastName
 ) AS Result,
 Invoice AS i
WHERE Result.CustomerId = i.CustomerId
ORDER BY Result.EmployeeId,
 Result.EmployeeLastName,
 Result.CustomerLastName,
 i.InvoiceId