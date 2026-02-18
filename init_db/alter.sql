ALTER TABLE Order_to_MenuItem
ADD COLUMN quantity INTEGER NOT NULL DEFAULT 1,
ADD CONSTRAINT chk_quantity_positive CHECK (quantity > 0);
