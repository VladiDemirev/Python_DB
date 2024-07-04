CREATE TABLE products(
  product_name VARCHAR(100)
);
 
INSERT INTO
  products (product_name)
VALUES
  ('Broccoli'),
  ('Shampoo'),
  ('Toothpaste'),
  ('Candy');
 
-- ALTER TABLE
--   products
-- ADD COLUMN
--   id SERIAL PRIMARY KEY;
 
-- OPTION 2
 
ALTER TABLE
  products
ADD COLUMN
  id SERIAL
CONSTRAINT SERIAL PRIMARY KEY;