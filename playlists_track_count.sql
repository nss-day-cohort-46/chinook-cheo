/*
 Provide a query that shows the 
 total number of tracks 
 in each playlist.
 
 The Playlist name should be include 
 on the resulant table.
 */
SELECT p.PlaylistId,
 p.Name,
 COUNT(p.PlaylistId) AS Total
FROM PlaylistTrack t
 INNER JOIN Playlist p ON t.PlaylistId = p.PlaylistId
GROUP BY (p.PlaylistId);