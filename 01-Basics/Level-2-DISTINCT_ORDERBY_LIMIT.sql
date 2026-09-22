-- Q11

-- Find all unique customer states.

-- SELECT customer_id
-- FROM customers
-- WHERE customer_state IS UNIQUE;
-- Its wrong

SELECT DISTINCT customer_state
FROM customers;
-- DISTINCT → duplicate values hatao

-- Q12

-- Find all unique order statuses.
SELECT DISTINCT order_status
FROM orders;

-- Q13

-- Find all unique payment types.
SELECT DISTINCT payment_type
FROM order_payments;

-- Q14

-- Find the 10 most expensive order items.
SELECT order_id FROM order_items
ORDER BY price DESC
LIMIT 10;
-- Its correct but you won't get price and also which product is there so a clear output we can write
SELECT order_id, product_id, price
FROM order_items
ORDER BY price DESC
LIMIT 10;

-- Q15

-- Find the 10 cheapest order items.
SELECT order_id, product_id, price
FROM order_items
ORDER BY price ASC
LIMIT 10;

-- Q16

-- Find the highest product price.
SELECT product_id, price
FROM order_items
ORDER BY price DESC
LIMIT 1;
-- Its correct but a more easier and faster way will be
SELECT MAX(price) AS highest_price
FROM order_items;
-- or without making a seperate coloumn
SELECT MAX(price)
FROM order_items;

-- Q17

-- Find the highest freight value.
SELECT MAX(freight_value)
FROM order_items;
-- or also with a new column
SELECT MAX(freight_value) AS highest_freight
FROM order_items;
-- Q18

-- Find the top 20 sellers based on item price.

-- SELECT seller_id, price
-- FROM order_items
-- ORDER BY price DESC
-- LIMIT 20;

-- This gives the 20 most expensive individual order items, along with their sellers.

SELECT seller_id, SUM(price) AS total_item_price
FROM order_items
GROUP BY seller_id
ORDER BY total_item_price DESC
LIMIT 20;