-- Receita total
SELECT ROUND(SUM(sales), 2) AS total_revenue
FROM retail_sales;

-- Ticket médio
SELECT ROUND(AVG(sales), 2) AS avg_ticket
FROM retail_sales;

-- Total de pedidos únicos
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM retail_sales;

-- Total de clientes únicos
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM retail_sales;

-- Receita por categoria
SELECT
    category,
    ROUND(SUM(sales), 2) AS revenue
FROM retail_sales
GROUP BY category
ORDER BY revenue DESC;

-- Top 10 produtos por receita
SELECT
    product_name,
    ROUND(SUM(sales), 2) AS revenue
FROM retail_sales
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;

-- Receita por região
SELECT
    region,
    ROUND(SUM(sales), 2) AS revenue
FROM retail_sales
GROUP BY region
ORDER BY revenue DESC;

-- Receita por segmento
SELECT
    segment,
    ROUND(SUM(sales), 2) AS revenue
FROM retail_sales
GROUP BY segment
ORDER BY revenue DESC;

-- Evolução mensal da receita
SELECT
    DATE_TRUNC('month', order_date) AS month,
    ROUND(SUM(sales), 2) AS revenue
FROM retail_sales
GROUP BY month
ORDER BY month;

-- Top 10 estados por receita
SELECT
    state,
    ROUND(SUM(sales), 2) AS revenue
FROM retail_sales
GROUP BY state
ORDER BY revenue DESC
LIMIT 10;