WITH melomaniacs as (
	SELECT 
		c.CustomerId 
		, c.FirstName 
		, c.LastName 
		, COUNT(DISTINCT g.GenreId) as nmb_genres
	FROM InvoiceLine il 
	LEFT JOIN Track t on il.TrackId = t.TrackId 
	LEFT JOIN Genre g on t.GenreId  = g.GenreId
	LEFT JOIN Invoice i on il.InvoiceLineId = i.InvoiceId 
	LEFT JOIN Customer c on i.CustomerId = c.CustomerId 
	GROUP BY 1,2,3
	HAVING COUNT(DISTINCT g.GenreId) >= 3
),

invoices as (
	SELECT *
	FROM Invoice i 
	WHERE InvoiceDate BETWEEN '2008-01-01' AND '2009-01-01'
)

SELECT * 
FROM invoices

