-- Total revenue
SELECT SUM(amount) AS total_revenue FROM payments;

-- Monthly sales
SELECT MONTH(o.order_date) AS month, SUM(p.amount) AS revenue
FROM orders o
JOIN payments p ON o.order_id = p.order_id
GROUP BY MONTH(o.order_date);

-- Top customers
SELECT c.name, SUM(p.amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.name
ORDER BY total_spent DESC;

-- Best selling products
SELECT pr.product_name, SUM(oi.quantity) AS total_sold
FROM products pr
JOIN order_items oi ON pr.product_id = oi.product_id
GROUP BY pr.product_name
ORDER BY total_sold DESC;
