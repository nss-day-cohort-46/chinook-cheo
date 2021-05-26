/*
 Provide a query that includes the 
 purchased track name 
 with each invoice line item.
 */
SELECT i.InvoiceId,
 t.Name
FROM Invoice i
 INNER JOIN InvoiceLine l ON i.InvoiceId = l.InvoiceId
 INNER JOIN Track t ON t.TrackId = l.TrackId;