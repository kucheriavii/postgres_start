SELECT *
FROM Invoice i 
LIMIT 100;

SELECT * 
FROM InvoiceLine il 
limit 100;

SELECT * 
FROM Track t 
limit 100;

SELECT * 
FROM Album a  
limit 100;

SELECT * 
FROM Artist ar 
limit 100;

SELECT 
	t.TrackId
	, t.Name 
	, a.Title 
	, a.ArtistId
	, ar.Name 
FROM Track t 
JOIN Album a ON t.AlbumId = a.AlbumId 
JOIN Artist ar ON a.ArtistId = ar.ArtistId 
WHERE ar.Name LIKE "A%"
LIMIT 100

SELECT 
	ar.Name 
	, COUNT(t.TrackId) AS countSongs
FROM Track t 
JOIN Album a ON t.AlbumId = a.AlbumId 
JOIN Artist ar ON a.ArtistId = ar.ArtistId 
WHERE ar.Name LIKE "A%"
GROUP BY ar.Name 
ORDER BY countSongs DESC 
