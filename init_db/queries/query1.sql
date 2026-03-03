-- write query to get details of customers (SELECT)
SELECT *
FROM customer;

-- Let's sort these alphabetically by name
SELECT *
FROM customer
ORDER BY name;

-- Now let's get the details of the first customer in the sorted table
SELECT *
FROM customer
ORDER BY name
LIMIT 1;
