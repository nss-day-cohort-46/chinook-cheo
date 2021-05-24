/*
 Provide a query showing the 
 Invoices of customers 
 who are from Brazil.
 The resultant table should show the 
 customer's full name, Invoice ID, Date of the invoice and billing country.
 */
SELECT InvoiceId,
 InvoiceDate,
 BillingCountry,
 LastName,
 FirstName
FROM Invoice
 LEFT JOIN Customer ON Customer.CustomerId = Invoice.CustomerId
ORDER BY BillingCountry,
 LastName