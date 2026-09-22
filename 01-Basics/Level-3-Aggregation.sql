-- Q19

-- Count total orders.
SELECT COUNT(*) AS total_orders
FROM orders;
-- or also this
SELECT COUNT(order_id) AS total_orders
FROM orders;

-- COUNT() → kitne records?
-- SUM()   → total value?
-- AVG()   → average value?
-- MAX()   → highest value?
-- MIN()   → lowest value?

-- Q20

-- Count total customers.
SELECT COUNT(*) AS total_customers
FROM customers;

-- or even this works
SELECT COUNT(customer_id) AS total_customers
FROM customers;

-- Q21

-- Find average order-item price.
-- SELECT order_item_id, AVG(price) AS Average_price
-- FROM order_items
-- GROUP BY order_item_id;
-- The question asks for one overall average price of all order items.
-- By using:
-- GROUP BY order_item_id you're calculating a separate average for each order_item_id.
SELECT AVG(price) AS average_price
FROM order_items;
-- Remember this pattern:
-- If the question says "average price" → no GROUP BY.
-- If it says "average price per seller" → GROUP BY seller_id.
-- If it says "average price per category" → GROUP BY category.

-- Q22

-- Find total sales using order_items.price.
SELECT SUM(order_items.price) AS total_sales
FROM order_items;

-- or even this
SELECT SUM(oi.price) AS total_sales
FROM order_items oi;

-- table.column format:
-- order_items.price
--    ↑       ↑
--  table   column

-- Q23

-- Find total freight.
SELECT SUM(freight_value) AS total_freight_value
FROM order_items;

-- Q24

-- Find average product price per seller.
-- AVG() + GROUP BY
SELECT oi.seller_id, AVG(oi.price) AS average_price
FROM order_items oi
GROUP BY oi.seller_id;

-- Q25

-- Find number of orders per customer.
SELECT o.customer_id, COUNT(o.order_id) AS order_number_per_customer
FROM orders o
GROUP BY o.customer_id;

-- Q26

-- Find number of products sold per seller.
SELECT oi.seller_id,
       COUNT(oi.product_id) AS products_sold
FROM order_items oi
GROUP BY oi.seller_id;

-- Q27

-- Find total sales per seller.
-- SELECT oi.seller_id, SUM(oi.order_id) AS total_sales
-- FROM order_items oi
-- GROUP BY oi.seller_id;
-- order_id sales amount nahi hai. Here we are adding order IDs which is wrong.
SELECT oi.seller_id,
       SUM(oi.price) AS total_sales
FROM order_items oi
GROUP BY oi.seller_id;

-- Q28

-- Find total sales per product category.
SELECT p.product_category_name,
       SUM(oi.price) AS total_sales
FROM order_items oi
INNER JOIN products p
    ON oi.product_id = p.product_id
GROUP BY p.product_category_name;

-- order_items
--      │
--      │ product_id
--      ↓
--  products
--      │
--      ↓
-- product_category_name
--      │
--      ↓
-- GROUP BY category
--      │
--      ↓
-- SUM(price)