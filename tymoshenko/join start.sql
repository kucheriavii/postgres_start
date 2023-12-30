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
FROM Track t 
JOIN Album a ON t.AlbumId = a.AlbumId 