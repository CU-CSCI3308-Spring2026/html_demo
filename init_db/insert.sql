INSERT INTO Customer (name, email)
VALUES 
    ('Alex Kim', 'alex.kim@email.com'),
    ('Priya Shah', 'priya.shah@email.com'),
    ('Jordan Lee', 'jordan.lee@email.com'),
    ('Maya Patel', 'maya.patel@email.com'),
    ('Ethan Brooks', 'ethan.brooks@email.com'),
    ('Sophia Nguyen', 'sophia.nguyen@email.com'),
    ('Ethan Sachs', 'ethan.sachs@email.com'),
    ('Daniel Garcia', 'daniel.garcia@email.com');

INSERT INTO MenuItem (item_name, price)
VALUES
    ('Latte', 4.50),
    ('Cappuccino', 4.00),
    ('Blueberry Muffin', 3.50);

INSERT INTO Orders (order_date, total_amount, customer_id)
VALUES
    ('2026-02-01', 8.00, 1),
    ('2026-02-01', 11.50, 2),
    ('2026-02-02', 4.50, 3),
    ('2026-02-02', 7.50, 4),
    ('2026-02-03', 12.00, 5),
    ('2026-02-03', 5.00, 6),
    ('2026-02-04', 9.50, 7),
    ('2026-02-04', 15.00, 8);

INSERT INTO Order_to_MenuItem (order_id, menu_item_id)
VALUES
    (1, 1), 
    (1, 3),  
    (2, 2),  
    (2, 3),
    (3, 1, 1),
    (3, 3, 1),
    (4, 2, 2), 
    (5, 1, 1),
    (5, 2, 1),
    (5, 3, 2),
    (6, 3, 1),
    (7, 1, 2),
    (7, 2, 1),
    (8, 2, 2),
    (8, 3, 1);
