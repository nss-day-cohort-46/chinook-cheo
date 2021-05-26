/*
 Provide a query that shows 
 all Invoices but 
 includes the # of invoice line items.
 */
SELECT *,
 COUNT(Quantity) AS NumberOfLineItems
FROM Invoice i
 INNER JOIN InvoiceLine l ON i.InvoiceId = l.InvoiceId
GROUP BY l.InvoiceId;