-- Write a query to count how many times each menu item was ordered

SELECT mi.item_name AS "Item Name", SUM(otm.quantity) AS "Total Times Ordered"
FROM orders o
  INNER JOIN order_to_menuitem otm
  ON o.order_id = otm.order_id
  INNER JOIN menuitem mi
  ON otm.menu_item_id = mi.menu_item_id
  GROUP BY mi.item_name
