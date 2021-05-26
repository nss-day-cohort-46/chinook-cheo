/*
 Provide a query that shows 
 all the Tracks, but displays no IDs. 
 The result should include the Album name, Media type and Genre.
 */
SELECT t.Name AS TrackName,
 g.Name AS GenreName,
 m.Name AS Media
FROM Track t
 INNER JOIN MediaType m ON t.MediaTypeId = m.MediaTypeId
 INNER JOIN Genre g ON t.GenreId = g.GenreId
 INNER JOIN Album a ON t.AlbumId = a.AlbumId;