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

-- Q8

-- Find products weighing more than 1 kg.

-- Q9

-- Find order items where price > 500.

-- Q10

-- Find orders purchased after a particular date.