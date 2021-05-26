/*
 Provide a query that shows the 
 How many Invoices were there in 2009 and 2011? - 249
 What are the respective total sales for each of those years?
 2009-02-01  = 3.96
 
 2010-03-11 = 7.96
 */
SELECT strftime('%Y', InvoiceDate) AS InvoiceYear,
 Sum(Total)
FROM Invoice
WHERE InvoiceDate BETWEEN '2009-01-01' AND '2011-12-31'
Group By InvoiceYear;