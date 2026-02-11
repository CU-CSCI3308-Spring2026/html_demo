
-- Customer Table
CREATE TABLE IF NOT EXISTS Customer (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE
);


-- Orders Table
CREATE TABLE IF NOT EXISTS Orders (
    order_id SERIAL PRIMARY KEY,
    order_date DATE NOT NULL,
    total_amount NUMERIC(10,2) NOT NULL CHECK (total_amount >= 0),
    customer_id INTEGER NOT NULL,
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) ON DELETE CASCADE
);


-- MenuItem Table
CREATE TABLE IF NOT EXISTS MenuItem (
    menu_item_id SERIAL PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL,
    price NUMERIC(8,2) NOT NULL CHECK (price >= 0)
);


-- Order_to_MenuItem (Junction Table)
CREATE TABLE IF NOT EXISTS Order_to_MenuItem (
    order_id INTEGER NOT NULL,
    menu_item_id INTEGER NOT NULL,
    PRIMARY KEY (order_id, menu_item_id),  
    CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE,
    CONSTRAINT fk_menu_item FOREIGN KEY (menu_item_id) REFERENCES MenuItem(menu_item_id) ON DELETE CASCADE
);
