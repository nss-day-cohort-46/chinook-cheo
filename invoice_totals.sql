/*
 Provide a query that shows the 
 Invoice Total, Customer name, Country and Sale Agent name 
 for all invoices and customers.
 */
SELECT e.EmployeeId,
  e.LastName AS EmployeeLastName,
  e.FirstName AS EmployeeFirstName,
  i.InvoiceId,
  i.BillingCountry,
  SUM(i.Total),
  c.CustomerId,
  c.LastName AS CustomerLastName,
  c.FirstName AS CustomerFirstName
FROM EMPLOYEE e
  INNER JOIN Customer c ON e.EmployeeId = c.SupportRepId
  INNER JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId
ORDER BY BillingCountry,
  CustomerLastName,
  EmployeeLastName;