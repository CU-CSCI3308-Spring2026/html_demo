-- Write a query to show each order with the customer name

SELECT o.order_id, c.name
FROM customer c
INNER JOIN orders o
ON c.customer_id = o.customer_id;
