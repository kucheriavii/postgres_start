WITH melomaniacs AS (
SELECT 
	 c.CustomerId 
	, c.FirstName 
	, c.LastName 
	, count(DISTINCT g.GenreId) as nmb_genres
FROM InvoiceLine il
LEFT JOIN Track t on il.TrackId  = t.TrackId 
LEFT JOIN Genre g on t.GenreId = g.GenreId 
LEFT JOIN Invoice i ON il.InvoiceId = i.InvoiceId 
LEFT JOIN Customer c ON i.CustomerId = c.CustomerId 
GROUP BY 1,2,3
HAVING nmb_genres > 4),

invoice AS (
	SELECT *
	FROM Invoice i 
	WHERE InvoiceDate BETWEEN '2008-01-01' and '2009-01-01'
)
