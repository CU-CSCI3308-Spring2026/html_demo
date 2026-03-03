-- Write a query to show all customer names who have placed at least one order

SELECT *
FROM Orders AS o
INNER JOIN Customer AS c
ON o.customer_id = c.customer_id
WHERE o.total_amount > 7;