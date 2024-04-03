SELECT agent_name, phone_number
FROM agents;

SELECT cust_name
FROM customer
WHERE working_area = 'Leeds';

SELECT order_num, order_amount
FROM orders
WHERE order_description = 'Shoes';

SELECT agent_code, order_amount, order_description
FROM orders
WHERE order_amount = '3000' AND order_description = 'Clothes';

SELECT *
FROM orders
WHERE order_amount > '2000';

SELECT cust_name, phone_number
FROM customer
WHERE cust_name LIKE '%e%';

SELECT *
FROM orders
WHERE order_amount = (
SELECT MIN(order_amount)
FROM orders
);


SELECT SUM(order_amount)
FROM training.orders;

SELECT count(DISTINCT agent_code)
FROM training.orders;

SELECT cust_code, order_amount
FROM training.orders
WHERE order_amount = (
SELECT max(order_amount) FROM training.orders)
ORDER BY cust_code;

SELECT MAX(order_amount), agent_code
FROM training.orders
WHERE order_date = '2022-07-13' 
GROUP BY agent_code;

SELECT customer.cust_name, customer.working_area, agents.agent_name, agents.working_area
FROM training.customer, training.agents
WHERE customer.working_area = agents.working_area;

SELECT customer.cust_name, agents.agent_name
FROM training.customer, training.agents
WHERE customer.agent_code = agents.agent_code;

SELECT *
From training.orders, training.customer, training.agents
WHERE customer.working_area <> agents.working_area
AND orders.cust_code = customer.cust_code
AND orders.agent_code = agents.agent_code;

SELECT *
FROM training.orders
WHERE agent_code = (
SELECT agent_code
FROM training.agents
WHERE agent_name = 'Rickey');

