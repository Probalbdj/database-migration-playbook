-- Row count validation

SELECT COUNT(*) FROM customers;

SELECT COUNT(*) FROM orders;

-- NULL validation

SELECT COUNT(*)
FROM customers
WHERE email IS NULL;

-- Orphan record check

SELECT o.id
FROM orders o
LEFT JOIN customers c
ON o.customer_id = c.id
WHERE c.id IS NULL;
