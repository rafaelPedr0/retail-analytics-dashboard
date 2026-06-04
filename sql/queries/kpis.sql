SELECT SUM(sales) AS total_revenue
FROM orders;

SELECT AVG(sales) AS avg_ticket
FROM orders;

SELECT p.product_name, SUM(o.sales) AS revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC
LIMIT 10;

SELECT DATE_TRUNC('month', order_date) AS month, SUM(sales) AS revenue
FROM orders
GROUP BY month
ORDER BY month;