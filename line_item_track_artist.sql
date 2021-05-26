/*
 Provide a query that includes the 
 purchased track name 
 AND artist name 
 with each invoice line item.
 */
SELECT i.InvoiceId,
 t.Name,
 s.Name
FROM Invoice i
 INNER JOIN InvoiceLine l ON i.InvoiceId = l.InvoiceId
 INNER JOIN Track t ON t.TrackId = l.TrackId
 INNER JOIN Album a ON t.AlbumId = a.AlbumId
 INNER JOIN Artist s ON a.ArtistId = s.ArtistId;