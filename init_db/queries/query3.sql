-- Write a query to get the orders placed on '2026-02-03'
SELECT * 
FROM Orders
WHERE order_date = '2026-02-03';

-- Try a query to find customers with the name Ethan

SELECT *
FROM Customer
WHERE name LIKE '%Ethan%';
