-- Write a query to show all customers who have placed at least one order

SELECT c.customer_id
FROM customer c
INNER JOIN orders o
ON c.customer_id = o.customer_id;
