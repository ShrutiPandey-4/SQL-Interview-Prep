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

-- Q17

-- Find the highest freight value.

-- Q18

-- Find the top 20 sellers based on item price.