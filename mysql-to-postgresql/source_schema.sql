CREATE TABLE customers (
    id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(150),
    created_at DATETIME
);

CREATE TABLE orders (
    id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2),
    order_date DATETIME
);
