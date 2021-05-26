/*
 Provide a query that 
 shows the # of invoices per country. 
 HINT: GROUP BY
 */
SELECT BillingCountry,
 COUNT(*)
FROM Invoice
GROUP BY BillingCountry;