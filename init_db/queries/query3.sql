-- Write a query to get the orders placed on '2026-02-03'
SELECT *
FROM Orders
WHERE order_date = '2026-02-03'
    AND total_amount > 10;

-- Try a query to find customers with the name 'Ethan'

SELECT * 
FROM customer
WHERE customer_name LIKE '%Ethan%';