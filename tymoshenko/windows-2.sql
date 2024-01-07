SELECT 
	InvoiceId 
	, CustomerId 
	, InvoiceDate 
	, Total
	, LAG(Total,1) OVER(PARTITION BY CustomerId ORDER BY InvoiceDate) as lag_total
	, LAG(invoiceDate,1) OVER(PARTITION BY CustomerId ORDER BY InvoiceDate) as lag_total
	, JULIANDAY(invoiceDate) - JULIANDAY(LAG(invoiceDate,1) OVER(PARTITION BY CustomerId ORDER BY InvoiceDate)) AS diff_in_days	
	, Total - (LAG(Total,1) OVER(PARTITION BY CustomerId ORDER BY InvoiceDate)) AS diff_in_days
FROM Invoice i 
ORDER BY CustomerId

SELECT 
	InvoiceId
	, CustomerId 
	, InvoiceDate 
	, Total
	, FIRST_VALUE(Total) OVER(PARTITION BY CustomerId ORDER BY InvoiceDate ASC) as first_amount
FROM Invoice i 
