-- Write a query to find the total number of items ordered per order
SELECT o.order_id, SUM(quantity)
FROM Orders o
INNER JOIN Order_to_MenuItem otm
on o.order_id = otm.order_id
group by o.order_id;

-- unique menu items

SELECT o.order_id, COUNT(menu_item_id)
FROM Orders o
INNER JOIN Order_to_MenuItem otm
on o.order_id = otm.order_id
group by o.order_id;
