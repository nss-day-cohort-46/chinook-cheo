/*
 Provide a query that shows 
 total sales made by 
 each sales agent.
 */
SELECT e.EmployeeId,
 e.LastName,
 e.FirstName,
 e.Title,
 SUM(i.Total) AS TotalSales
FROM Customer c
 INNER JOIN Invoice i ON i.CustomerId = c.CustomerId
 INNER JOIN Employee e ON c.SupportRepId = e.EmployeeId
WHERE TITLE LIKE "%AGENT%"
GROUP BY (e.EmployeeId);