/*
 Provide a query that shows the 
 How many Invoices were there in 2009 and 2011?
 */
SELECT COUNT(InvoiceDate)
FROM Invoice
WHERE InvoiceDate BETWEEN '2008-12-31' AND '2012-01-01';