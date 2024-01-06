SELECT 
	invoiceDate
	, total
	,sum(Total) over(ORDER BY InvoiceDate)
FROM Invoice i 
