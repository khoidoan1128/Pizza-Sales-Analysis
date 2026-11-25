-- =============================================
-- 04. PRODUCT ANALYSIS
-- =============================================

-- 1. Total Quantity Sold by Product
SELECT
    pizza_name,
    SUM(quantity) AS total_quantity
FROM pizza
GROUP BY pizza_name
ORDER BY total_quantity DESC;


-- 2. Top 5 Best-selling Pizzas
WITH product_sales AS (
    SELECT
        pizza_name,
        SUM(quantity) AS total_quantity
    FROM pizza
    GROUP BY pizza_name
),
product_ranking AS (
    SELECT
        pizza_name,
        total_quantity,
        RANK() OVER (ORDER BY total_quantity DESC) AS product_rank
    FROM product_sales
)
SELECT *
FROM product_ranking
WHERE product_rank <= 5
ORDER BY product_rank;


-- 3. Revenue by Pizza Category
SELECT
    pizza_category,
    ROUND(SUM(total_price), 2) AS total_revenue
FROM pizza
GROUP BY pizza_category
ORDER BY total_revenue DESC;


-- 4. Quantity by Category and Pizza Size
SELECT
    pizza_category,
    pizza_size,
    SUM(quantity) AS total_quantity,
    RANK() OVER (
        PARTITION BY pizza_category
        ORDER BY SUM(quantity) DESC
    ) AS size_rank
FROM pizza
GROUP BY pizza_category, pizza_size
ORDER BY pizza_category, size_rank;


-- 5. Average Pizzas per Order by Size
SELECT
    pizza_size,
    ROUND(
        SUM(quantity) / COUNT(DISTINCT order_id), 2
    ) AS avg_pizzas_per_order
FROM pizza
GROUP BY pizza_size
ORDER BY avg_pizzas_per_order DESC;


-- 6. Revenue by Product within Each Category
SELECT
    pizza_category,
    pizza_name,
    ROUND(SUM(total_price), 2) AS total_revenue
FROM pizza
GROUP BY pizza_category, pizza_name
ORDER BY pizza_category, total_revenue DESC;


-- 7. Revenue per Order Containing Each Category
SELECT
    pizza_category,
    ROUND(
        SUM(total_price) / COUNT(DISTINCT order_id), 2
    ) AS revenue_per_order
FROM pizza
GROUP BY pizza_category
ORDER BY revenue_per_order DESC;
