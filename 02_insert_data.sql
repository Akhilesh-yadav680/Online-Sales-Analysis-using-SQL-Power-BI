INSERT INTO customers (name, email, city) VALUES
('Akhilesh', 'akhil@gmail.com', 'Hyderabad'),
('Ravi', 'ravi@gmail.com', 'Bangalore');

INSERT INTO categories (category_name) VALUES
('Electronics'),
('Clothing');

INSERT INTO products (product_name, price, category_id) VALUES
('Laptop', 55000, 1),
('Headphones', 2000, 1),
('T-Shirt', 999, 2);

INSERT INTO orders (customer_id, order_date) VALUES
(1, '2025-02-05'),
(2, '2025-03-15');

INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 2, 2),
(3, 1, 1),
(4, 2, 3);
(2, 3, 1);

INSERT INTO payments (order_id, amount, payment_mode) VALUES
(1, 59000, 'UPI'),
(2, 999, 'Card');
