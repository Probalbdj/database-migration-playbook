-- Verify foreign key consistency

SELECT COUNT(*)
FROM orders o
LEFT JOIN customers c
ON o.customer_id = c.id
WHERE c.id IS NULL;

-- Duplicate email check

SELECT email, COUNT(*)
FROM customers
GROUP BY email
HAVING COUNT(*) > 1;
