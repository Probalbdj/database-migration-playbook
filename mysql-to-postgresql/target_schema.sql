CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(150),
    created_at TIMESTAMP
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(id),
    amount NUMERIC(10,2),
    order_date TIMESTAMP
);
