-- Write a query to find the most expensive menu item

SELECT * FROM MenuItem
WHERE price = ( SELECT MAX(price) FROM MenuItem);
