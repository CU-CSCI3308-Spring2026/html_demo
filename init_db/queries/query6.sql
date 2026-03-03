-- Write a query to find the total number of items ordered per order

SELECT COUNT(*) FROM Orders;

SELECT o.order_id, SUM(otm.quantity)
FROM Orders o
INNER JOIN Order_to_MenuItem otm
ON o.order_id = otm.order_id
GROUP BY o.order_id
HAVING SUM(otm.quantity) > 3;