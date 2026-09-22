-- Q1 Display all customers.
SELECT * FROM customers;

-- Q2

-- Display only:

-- customer_id
-- customer_city
-- customer_state

SELECT customer_id,customer_city, customer_state FROM customers;

-- Q3

-- Find customers from São Paulo (SP).

SELECT *
FROM customers
WHERE customer_state = 'SP';

-- Q4

-- Find orders having status delivered.
SELECT *
FROM orders
WHERE order_status = 'delivered';

-- Q5

-- Find orders that are not delivered.
SELECT *
FROM orders
WHERE order_status <> 'delivered';
-- or this also works
WHERE order_status != 'delivered';

-- Q6

-- Find products belonging to a particular category.
SELECT *
FROM products
WHERE product_category_name = 'health_beauty';
-- or you can change the category
WHERE product_category_name = 'computers_accessories';

-- or you can also write this if you want distinct 
SELECT DISTINCT product_category_name
FROM products;

-- Q7

-- Find sellers from SP.
SELECT seller_id
FROM sellers
WHERE seller_state = 'SP';

-- Q8

-- Find products weighing more than 1 kg.

SELECT product_id
FROM products
WHERE product_weight_g > 1000;

-- product_weight_g is in grams, while the question asks for more than 1 kg.
-- 1 kg = 1000 g

-- Q9

-- Find order items where price > 500.
SELECT order_id
FROM order_items
WHERE order_price > 500;

-- or

SELECT order_id
FROM order_items
WHERE price > 500;

-- Q10

-- Find orders purchased after a particular date.

SELECT order_id
FROM orders
WHERE order_purchase_timestamp > '2019-01-01';

-- ✅ Concept:
-- = → exactly this date
-- > → after this date
-- < → before this date
-- >= → this date or after